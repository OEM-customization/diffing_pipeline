.class public Ljava/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Arrays$ArrayList;,
        Ljava/util/Arrays$NaturalOrder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o INSERTIONSORT_THRESHOLD:I = 0x7

.field public static final greylist-max-o MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 72
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs whitelist core-platform-api test-api asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3725
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([BB)I
    .registers 4
    .param p0, "a"    # [B
    .param p1, "key"    # B

    .line 2032
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([BIIB)I
    .registers 5
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    .line 2069
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2070
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([CC)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "key"    # C

    .line 1951
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([CIIC)I
    .registers 5
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    .line 1988
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1989
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([DD)I
    .registers 5
    .param p0, "a"    # [D
    .param p1, "key"    # D

    .line 2114
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([DIID)I
    .registers 6
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    .line 2152
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2153
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([FF)I
    .registers 4
    .param p0, "a"    # [F
    .param p1, "key"    # F

    .line 2205
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([FIIF)I
    .registers 5
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    .line 2243
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2244
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([II)I
    .registers 4
    .param p0, "a"    # [I
    .param p1, "key"    # I

    .line 1789
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([IIII)I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    .line 1826
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1827
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([JIIJ)I
    .registers 6
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    .line 1745
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1746
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([JJ)I
    .registers 5
    .param p0, "a"    # [J
    .param p1, "key"    # J

    .line 1708
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .line 2349
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2350
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2454
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2455
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;

    .line 2304
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2407
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([SIIS)I
    .registers 5
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    .line 1907
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1908
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api binarySearch([SS)I
    .registers 4
    .param p0, "a"    # [S
    .param p1, "key"    # S

    .line 1870
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o binarySearch0([BIIB)I
    .registers 8
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    .line 2076
    move v0, p1

    .line 2077
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2079
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 2080
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2081
    .local v2, "mid":I
    aget-byte v3, p0, v2

    .line 2083
    .local v3, "midVal":B
    if-ge v3, p3, :cond_10

    .line 2084
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 2085
    :cond_10
    if-le v3, p3, :cond_15

    .line 2086
    add-int/lit8 v1, v2, -0x1

    .line 2089
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :goto_14
    goto :goto_3

    .line 2088
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":B
    :cond_15
    return v2

    .line 2090
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([CIIC)I
    .registers 8
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    .line 1995
    move v0, p1

    .line 1996
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1998
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1999
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2000
    .local v2, "mid":I
    aget-char v3, p0, v2

    .line 2002
    .local v3, "midVal":C
    if-ge v3, p3, :cond_10

    .line 2003
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 2004
    :cond_10
    if-le v3, p3, :cond_15

    .line 2005
    add-int/lit8 v1, v2, -0x1

    .line 2008
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :goto_14
    goto :goto_3

    .line 2007
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":C
    :cond_15
    return v2

    .line 2009
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([DIID)I
    .registers 15
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    .line 2159
    move v0, p1

    .line 2160
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2162
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_30

    .line 2163
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2164
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 2166
    .local v3, "midVal":D
    cmpg-double v5, v3, p3

    if-gez v5, :cond_12

    .line 2167
    add-int/lit8 v0, v2, 0x1

    goto :goto_2f

    .line 2168
    :cond_12
    cmpl-double v5, v3, p3

    if-lez v5, :cond_19

    .line 2169
    add-int/lit8 v1, v2, -0x1

    goto :goto_2f

    .line 2171
    :cond_19
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 2172
    .local v5, "midBits":J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    .line 2173
    .local v7, "keyBits":J
    cmp-long v9, v5, v7

    if-nez v9, :cond_26

    .line 2174
    return v2

    .line 2175
    :cond_26
    cmp-long v9, v5, v7

    if-gez v9, :cond_2d

    .line 2176
    add-int/lit8 v0, v2, 0x1

    goto :goto_2f

    .line 2178
    :cond_2d
    add-int/lit8 v1, v2, -0x1

    .line 2180
    .end local v2    # "mid":I
    .end local v3    # "midVal":D
    .end local v5    # "midBits":J
    .end local v7    # "keyBits":J
    :goto_2f
    goto :goto_3

    .line 2181
    :cond_30
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([FIIF)I
    .registers 10
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    .line 2250
    move v0, p1

    .line 2251
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2253
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_2c

    .line 2254
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2255
    .local v2, "mid":I
    aget v3, p0, v2

    .line 2257
    .local v3, "midVal":F
    cmpg-float v4, v3, p3

    if-gez v4, :cond_12

    .line 2258
    add-int/lit8 v0, v2, 0x1

    goto :goto_2b

    .line 2259
    :cond_12
    cmpl-float v4, v3, p3

    if-lez v4, :cond_19

    .line 2260
    add-int/lit8 v1, v2, -0x1

    goto :goto_2b

    .line 2262
    :cond_19
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 2263
    .local v4, "midBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    .line 2264
    .local v5, "keyBits":I
    if-ne v4, v5, :cond_24

    .line 2265
    return v2

    .line 2266
    :cond_24
    if-ge v4, v5, :cond_29

    .line 2267
    add-int/lit8 v0, v2, 0x1

    goto :goto_2b

    .line 2269
    :cond_29
    add-int/lit8 v1, v2, -0x1

    .line 2271
    .end local v2    # "mid":I
    .end local v3    # "midVal":F
    .end local v4    # "midBits":I
    .end local v5    # "keyBits":I
    :goto_2b
    goto :goto_3

    .line 2272
    :cond_2c
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([IIII)I
    .registers 8
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    .line 1833
    move v0, p1

    .line 1834
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1836
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1837
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1838
    .local v2, "mid":I
    aget v3, p0, v2

    .line 1840
    .local v3, "midVal":I
    if-ge v3, p3, :cond_10

    .line 1841
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 1842
    :cond_10
    if-le v3, p3, :cond_15

    .line 1843
    add-int/lit8 v1, v2, -0x1

    .line 1846
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_14
    goto :goto_3

    .line 1845
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":I
    :cond_15
    return v2

    .line 1847
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([JIIJ)I
    .registers 11
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    .line 1752
    move v0, p1

    .line 1753
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1755
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_1a

    .line 1756
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1757
    .local v2, "mid":I
    aget-wide v3, p0, v2

    .line 1759
    .local v3, "midVal":J
    cmp-long v5, v3, p3

    if-gez v5, :cond_12

    .line 1760
    add-int/lit8 v0, v2, 0x1

    goto :goto_18

    .line 1761
    :cond_12
    cmp-long v5, v3, p3

    if-lez v5, :cond_19

    .line 1762
    add-int/lit8 v1, v2, -0x1

    .line 1765
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :goto_18
    goto :goto_3

    .line 1764
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":J
    :cond_19
    return v2

    .line 1766
    .end local v2    # "mid":I
    .end local v3    # "midVal":J
    :cond_1a
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .line 2356
    move v0, p1

    .line 2357
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2359
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_1c

    .line 2360
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2362
    .local v2, "mid":I
    aget-object v3, p0, v2

    check-cast v3, Ljava/lang/Comparable;

    .line 2364
    .local v3, "midVal":Ljava/lang/Comparable;
    invoke-interface {v3, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    .line 2366
    .local v4, "cmp":I
    if-gez v4, :cond_16

    .line 2367
    add-int/lit8 v0, v2, 0x1

    goto :goto_1a

    .line 2368
    :cond_16
    if-lez v4, :cond_1b

    .line 2369
    add-int/lit8 v1, v2, -0x1

    .line 2372
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;
    .end local v4    # "cmp":I
    :goto_1a
    goto :goto_3

    .line 2371
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Comparable;
    .restart local v4    # "cmp":I
    :cond_1b
    return v2

    .line 2373
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Comparable;
    .end local v4    # "cmp":I
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 2461
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_7

    .line 2462
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0

    .line 2464
    :cond_7
    move v0, p1

    .line 2465
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2467
    .local v1, "high":I
    :goto_a
    if-gt v0, v1, :cond_21

    .line 2468
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 2469
    .local v2, "mid":I
    aget-object v3, p0, v2

    .line 2470
    .local v3, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p4, v3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 2471
    .local v4, "cmp":I
    if-gez v4, :cond_1b

    .line 2472
    add-int/lit8 v0, v2, 0x1

    goto :goto_1f

    .line 2473
    :cond_1b
    if-lez v4, :cond_20

    .line 2474
    add-int/lit8 v1, v2, -0x1

    .line 2477
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_1f
    goto :goto_a

    .line 2476
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .restart local v4    # "cmp":I
    :cond_20
    return v2

    .line 2478
    .end local v2    # "mid":I
    .end local v3    # "midVal":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :cond_21
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method private static greylist-max-o binarySearch0([SIIS)I
    .registers 8
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    .line 1914
    move v0, p1

    .line 1915
    .local v0, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 1917
    .local v1, "high":I
    :goto_3
    if-gt v0, v1, :cond_16

    .line 1918
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1919
    .local v2, "mid":I
    aget-short v3, p0, v2

    .line 1921
    .local v3, "midVal":S
    if-ge v3, p3, :cond_10

    .line 1922
    add-int/lit8 v0, v2, 0x1

    goto :goto_14

    .line 1923
    :cond_10
    if-le v3, p3, :cond_15

    .line 1924
    add-int/lit8 v1, v2, -0x1

    .line 1927
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :goto_14
    goto :goto_3

    .line 1926
    .restart local v2    # "mid":I
    .restart local v3    # "midVal":S
    :cond_15
    return v2

    .line 1928
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :cond_16
    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    return v2
.end method

.method public static whitelist core-platform-api test-api copyOf([BI)[B
    .registers 5
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .line 3161
    new-array v0, p1, [B

    .line 3162
    .local v0, "copy":[B
    array-length v1, p0

    .line 3163
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3162
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3164
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .line 3257
    new-array v0, p1, [C

    .line 3258
    .local v0, "copy":[C
    array-length v1, p0

    .line 3259
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3258
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3260
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([DI)[D
    .registers 5
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .line 3305
    new-array v0, p1, [D

    .line 3306
    .local v0, "copy":[D
    array-length v1, p0

    .line 3307
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3306
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3308
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([FI)[F
    .registers 5
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .line 3281
    new-array v0, p1, [F

    .line 3282
    .local v0, "copy":[F
    array-length v1, p0

    .line 3283
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3282
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3284
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([II)[I
    .registers 5
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .line 3209
    new-array v0, p1, [I

    .line 3210
    .local v0, "copy":[I
    array-length v1, p0

    .line 3211
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3210
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3212
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([JI)[J
    .registers 5
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .line 3233
    new-array v0, p1, [J

    .line 3234
    .local v0, "copy":[J
    array-length v1, p0

    .line 3235
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3234
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3236
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 3106
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 3135
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const-class v0, [Ljava/lang/Object;

    if-ne p2, v0, :cond_7

    .line 3136
    new-array v0, p1, [Ljava/lang/Object;

    goto :goto_11

    .line 3137
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_11
    nop

    .line 3138
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 3139
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3138
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3140
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([SI)[S
    .registers 5
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .line 3185
    new-array v0, p1, [S

    .line 3186
    .local v0, "copy":[S
    array-length v1, p0

    .line 3187
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3186
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3188
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOf([ZI)[Z
    .registers 5
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .line 3329
    new-array v0, p1, [Z

    .line 3330
    .local v0, "copy":[Z
    array-length v1, p0

    .line 3331
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3330
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOfRange([BII)[B
    .registers 7
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3442
    sub-int v0, p2, p1

    .line 3443
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3445
    new-array v1, v0, [B

    .line 3446
    .local v1, "copy":[B
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3447
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3446
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3448
    return-object v1

    .line 3444
    .end local v1    # "copy":[B
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([CII)[C
    .registers 7
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3586
    sub-int v0, p2, p1

    .line 3587
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3589
    new-array v1, v0, [C

    .line 3590
    .local v1, "copy":[C
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3591
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3590
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3592
    return-object v1

    .line 3588
    .end local v1    # "copy":[C
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([DII)[D
    .registers 7
    .param p0, "original"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3658
    sub-int v0, p2, p1

    .line 3659
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3661
    new-array v1, v0, [D

    .line 3662
    .local v1, "copy":[D
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3663
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3662
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3664
    return-object v1

    .line 3660
    .end local v1    # "copy":[D
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([FII)[F
    .registers 7
    .param p0, "original"    # [F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3622
    sub-int v0, p2, p1

    .line 3623
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3625
    new-array v1, v0, [F

    .line 3626
    .local v1, "copy":[F
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3627
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3626
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3628
    return-object v1

    .line 3624
    .end local v1    # "copy":[F
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([III)[I
    .registers 7
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3514
    sub-int v0, p2, p1

    .line 3515
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3517
    new-array v1, v0, [I

    .line 3518
    .local v1, "copy":[I
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3519
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3518
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3520
    return-object v1

    .line 3516
    .end local v1    # "copy":[I
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([JII)[J
    .registers 7
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3550
    sub-int v0, p2, p1

    .line 3551
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3553
    new-array v1, v0, [J

    .line 3554
    .local v1, "copy":[J
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3555
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3554
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3556
    return-object v1

    .line 3552
    .end local v1    # "copy":[J
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 3366
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 8
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class<",
            "+[TT;>;)[TT;"
        }
    .end annotation

    .line 3403
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    sub-int v0, p2, p1

    .line 3404
    .local v0, "newLength":I
    if-ltz v0, :cond_21

    .line 3407
    const-class v1, [Ljava/lang/Object;

    if-ne p3, v1, :cond_b

    .line 3408
    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_15

    .line 3409
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    :goto_15
    nop

    .line 3410
    .local v1, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3411
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3410
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3412
    return-object v1

    .line 3405
    .end local v1    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([SII)[S
    .registers 7
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3478
    sub-int v0, p2, p1

    .line 3479
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3481
    new-array v1, v0, [S

    .line 3482
    .local v1, "copy":[S
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3483
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3482
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3484
    return-object v1

    .line 3480
    .end local v1    # "copy":[S
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api copyOfRange([ZII)[Z
    .registers 7
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 3694
    sub-int v0, p2, p1

    .line 3695
    .local v0, "newLength":I
    if-ltz v0, :cond_11

    .line 3697
    new-array v1, v0, [Z

    .line 3698
    .local v1, "copy":[Z
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    .line 3699
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3698
    invoke-static {p0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3700
    return-object v1

    .line 3696
    .end local v1    # "copy":[Z
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .line 4182
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 4183
    return v0

    .line 4184
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 4186
    :cond_a
    array-length v2, p0

    .line 4187
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 4188
    return v1

    .line 4190
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_26

    .line 4191
    aget-object v4, p0, v3

    .line 4192
    .local v4, "e1":Ljava/lang/Object;
    aget-object v5, p1, v3

    .line 4194
    .local v5, "e2":Ljava/lang/Object;
    if-ne v4, v5, :cond_19

    .line 4195
    goto :goto_23

    .line 4196
    :cond_19
    if-nez v4, :cond_1c

    .line 4197
    return v1

    .line 4200
    :cond_1c
    invoke-static {v4, v5}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 4202
    .local v6, "eq":Z
    if-nez v6, :cond_23

    .line 4203
    return v1

    .line 4190
    .end local v4    # "e1":Ljava/lang/Object;
    .end local v5    # "e2":Ljava/lang/Object;
    .end local v6    # "eq":Z
    :cond_23
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 4205
    .end local v3    # "i":I
    :cond_26
    return v0

    .line 4185
    .end local v2    # "length":I
    :cond_27
    :goto_27
    return v1
.end method

.method static greylist-max-o deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 4209
    nop

    .line 4211
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 4212
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .local v0, "eq":Z
    goto/16 :goto_b3

    .line 4213
    .end local v0    # "eq":Z
    :cond_15
    instance-of v0, p0, [B

    if-eqz v0, :cond_29

    instance-of v0, p1, [B

    if-eqz v0, :cond_29

    .line 4214
    move-object v0, p0

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_b3

    .line 4215
    .end local v0    # "eq":Z
    :cond_29
    instance-of v0, p0, [S

    if-eqz v0, :cond_3d

    instance-of v0, p1, [S

    if-eqz v0, :cond_3d

    .line 4216
    move-object v0, p0

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_b3

    .line 4217
    .end local v0    # "eq":Z
    :cond_3d
    instance-of v0, p0, [I

    if-eqz v0, :cond_50

    instance-of v0, p1, [I

    if-eqz v0, :cond_50

    .line 4218
    move-object v0, p0

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 4219
    .end local v0    # "eq":Z
    :cond_50
    instance-of v0, p0, [J

    if-eqz v0, :cond_63

    instance-of v0, p1, [J

    if-eqz v0, :cond_63

    .line 4220
    move-object v0, p0

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 4221
    .end local v0    # "eq":Z
    :cond_63
    instance-of v0, p0, [C

    if-eqz v0, :cond_76

    instance-of v0, p1, [C

    if-eqz v0, :cond_76

    .line 4222
    move-object v0, p0

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 4223
    .end local v0    # "eq":Z
    :cond_76
    instance-of v0, p0, [F

    if-eqz v0, :cond_89

    instance-of v0, p1, [F

    if-eqz v0, :cond_89

    .line 4224
    move-object v0, p0

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 4225
    .end local v0    # "eq":Z
    :cond_89
    instance-of v0, p0, [D

    if-eqz v0, :cond_9c

    instance-of v0, p1, [D

    if-eqz v0, :cond_9c

    .line 4226
    move-object v0, p0

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 4227
    .end local v0    # "eq":Z
    :cond_9c
    instance-of v0, p0, [Z

    if-eqz v0, :cond_af

    instance-of v0, p1, [Z

    if-eqz v0, :cond_af

    .line 4228
    move-object v0, p0

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_b3

    .line 4230
    .end local v0    # "eq":Z
    :cond_af
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4231
    .restart local v0    # "eq":Z
    :goto_b3
    return v0
.end method

.method public static whitelist core-platform-api test-api deepHashCode([Ljava/lang/Object;)I
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;

    .line 4106
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4107
    return v0

    .line 4109
    :cond_4
    const/4 v1, 0x1

    .line 4111
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_95

    aget-object v3, p0, v0

    .line 4112
    .local v3, "element":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 4114
    .local v4, "elementHash":I
    if-eqz v3, :cond_8d

    .line 4115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 4116
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_1d

    .line 4117
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_8d

    .line 4118
    :cond_1d
    instance-of v6, v3, [Ljava/lang/Object;

    if-eqz v6, :cond_29

    .line 4119
    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v4

    goto :goto_8d

    .line 4120
    :cond_29
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_35

    .line 4121
    move-object v6, v3

    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    goto :goto_8d

    .line 4122
    :cond_35
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_41

    .line 4123
    move-object v6, v3

    check-cast v6, [S

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([S)I

    move-result v4

    goto :goto_8d

    .line 4124
    :cond_41
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4d

    .line 4125
    move-object v6, v3

    check-cast v6, [I

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    goto :goto_8d

    .line 4126
    :cond_4d
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_59

    .line 4127
    move-object v6, v3

    check-cast v6, [J

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([J)I

    move-result v4

    goto :goto_8d

    .line 4128
    :cond_59
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_65

    .line 4129
    move-object v6, v3

    check-cast v6, [C

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([C)I

    move-result v4

    goto :goto_8d

    .line 4130
    :cond_65
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_71

    .line 4131
    move-object v6, v3

    check-cast v6, [F

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([F)I

    move-result v4

    goto :goto_8d

    .line 4132
    :cond_71
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_7d

    .line 4133
    move-object v6, v3

    check-cast v6, [D

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([D)I

    move-result v4

    goto :goto_8d

    .line 4134
    :cond_7d
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_89

    .line 4135
    move-object v6, v3

    check-cast v6, [Z

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v4

    goto :goto_8d

    .line 4137
    :cond_89
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 4140
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8d
    :goto_8d
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v4

    .line 4111
    .end local v3    # "element":Ljava/lang/Object;
    .end local v4    # "elementHash":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 4143
    :cond_95
    return v1
.end method

.method public static whitelist core-platform-api test-api deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;

    .line 4543
    if-nez p0, :cond_5

    .line 4544
    const-string v0, "null"

    return-object v0

    .line 4546
    :cond_5
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x14

    .line 4547
    .local v0, "bufLen":I
    array-length v1, p0

    if-eqz v1, :cond_10

    if-gtz v0, :cond_10

    .line 4548
    const v0, 0x7fffffff

    .line 4549
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4550
    .local v1, "buf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 4551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4556
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/Object;>;"
    const-string v0, "null"

    if-nez p0, :cond_8

    .line 4557
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4558
    return-void

    .line 4560
    :cond_8
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 4561
    .local v1, "iMax":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 4562
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4563
    return-void

    .line 4566
    :cond_14
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4567
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4568
    const/4 v2, 0x0

    .line 4570
    .local v2, "i":I
    :goto_1d
    aget-object v3, p0, v2

    .line 4571
    .local v3, "element":Ljava/lang/Object;
    if-nez v3, :cond_26

    .line 4572
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 4574
    :cond_26
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 4576
    .local v4, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 4577
    const-class v5, [B

    if-ne v4, v5, :cond_40

    .line 4578
    move-object v5, v3

    check-cast v5, [B

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 4579
    :cond_40
    const-class v5, [S

    if-ne v4, v5, :cond_50

    .line 4580
    move-object v5, v3

    check-cast v5, [S

    invoke-static {v5}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 4581
    :cond_50
    const-class v5, [I

    if-ne v4, v5, :cond_5f

    .line 4582
    move-object v5, v3

    check-cast v5, [I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4583
    :cond_5f
    const-class v5, [J

    if-ne v4, v5, :cond_6e

    .line 4584
    move-object v5, v3

    check-cast v5, [J

    invoke-static {v5}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4585
    :cond_6e
    const-class v5, [C

    if-ne v4, v5, :cond_7d

    .line 4586
    move-object v5, v3

    check-cast v5, [C

    invoke-static {v5}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4587
    :cond_7d
    const-class v5, [F

    if-ne v4, v5, :cond_8c

    .line 4588
    move-object v5, v3

    check-cast v5, [F

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4589
    :cond_8c
    const-class v5, [D

    if-ne v4, v5, :cond_9b

    .line 4590
    move-object v5, v3

    check-cast v5, [D

    invoke-static {v5}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4591
    :cond_9b
    const-class v5, [Z

    if-ne v4, v5, :cond_aa

    .line 4592
    move-object v5, v3

    check-cast v5, [Z

    invoke-static {v5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4594
    :cond_aa
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 4595
    const-string v5, "[...]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c4

    .line 4597
    :cond_b6
    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto :goto_c4

    .line 4600
    :cond_bd
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4603
    .end local v4    # "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c4
    if-ne v2, v1, :cond_d0

    .line 4604
    nop

    .line 4607
    .end local v2    # "i":I
    .end local v3    # "element":Ljava/lang/Object;
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4608
    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4609
    return-void

    .line 4605
    .restart local v2    # "i":I
    .restart local v3    # "element":Ljava/lang/Object;
    :cond_d0
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4568
    .end local v3    # "element":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1d
.end method

.method public static whitelist core-platform-api test-api equals([B[B)Z
    .registers 8
    .param p0, "a"    # [B
    .param p1, "a2"    # [B

    .line 2612
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2613
    return v0

    .line 2614
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2617
    :cond_a
    array-length v2, p0

    .line 2618
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2619
    return v1

    .line 2621
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2622
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2623
    return v1

    .line 2621
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2625
    .end local v3    # "i":I
    :cond_1c
    return v0

    .line 2615
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([C[C)Z
    .registers 8
    .param p0, "a"    # [C
    .param p1, "a2"    # [C

    .line 2583
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2584
    return v0

    .line 2585
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2588
    :cond_a
    array-length v2, p0

    .line 2589
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2590
    return v1

    .line 2592
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2593
    aget-char v4, p0, v3

    aget-char v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2594
    return v1

    .line 2592
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2596
    .end local v3    # "i":I
    :cond_1c
    return v0

    .line 2586
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([D[D)Z
    .registers 10
    .param p0, "a"    # [D
    .param p1, "a2"    # [D

    .line 2676
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2677
    return v0

    .line 2678
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 2681
    :cond_a
    array-length v2, p0

    .line 2682
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2683
    return v1

    .line 2685
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_26

    .line 2686
    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_23

    .line 2687
    return v1

    .line 2685
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2689
    .end local v3    # "i":I
    :cond_26
    return v0

    .line 2679
    .end local v2    # "length":I
    :cond_27
    :goto_27
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([F[F)Z
    .registers 8
    .param p0, "a"    # [F
    .param p1, "a2"    # [F

    .line 2711
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2712
    return v0

    .line 2713
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_25

    if-nez p1, :cond_a

    goto :goto_25

    .line 2716
    :cond_a
    array-length v2, p0

    .line 2717
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2718
    return v1

    .line 2720
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_24

    .line 2721
    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_21

    .line 2722
    return v1

    .line 2720
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2724
    .end local v3    # "i":I
    :cond_24
    return v0

    .line 2714
    .end local v2    # "length":I
    :cond_25
    :goto_25
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([I[I)Z
    .registers 8
    .param p0, "a"    # [I
    .param p1, "a2"    # [I

    .line 2525
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2526
    return v0

    .line 2527
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2530
    :cond_a
    array-length v2, p0

    .line 2531
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2532
    return v1

    .line 2534
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2535
    aget v4, p0, v3

    aget v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2536
    return v1

    .line 2534
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2538
    .end local v3    # "i":I
    :cond_1c
    return v0

    .line 2528
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([J[J)Z
    .registers 10
    .param p0, "a"    # [J
    .param p1, "a2"    # [J

    .line 2496
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2497
    return v0

    .line 2498
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_a

    goto :goto_1f

    .line 2501
    :cond_a
    array-length v2, p0

    .line 2502
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2503
    return v1

    .line 2505
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1e

    .line 2506
    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1b

    .line 2507
    return v1

    .line 2505
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2509
    .end local v3    # "i":I
    :cond_1e
    return v0

    .line 2499
    .end local v2    # "length":I
    :cond_1f
    :goto_1f
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .line 2742
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2743
    return v0

    .line 2744
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_26

    if-nez p1, :cond_a

    goto :goto_26

    .line 2747
    :cond_a
    array-length v2, p0

    .line 2748
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2749
    return v1

    .line 2751
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_25

    .line 2752
    aget-object v4, p0, v3

    .line 2753
    .local v4, "o1":Ljava/lang/Object;
    aget-object v5, p1, v3

    .line 2754
    .local v5, "o2":Ljava/lang/Object;
    if-nez v4, :cond_1b

    if-nez v5, :cond_21

    goto :goto_22

    :cond_1b
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 2755
    :cond_21
    return v1

    .line 2751
    .end local v4    # "o1":Ljava/lang/Object;
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2758
    .end local v3    # "i":I
    :cond_25
    return v0

    .line 2745
    .end local v2    # "length":I
    :cond_26
    :goto_26
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([S[S)Z
    .registers 8
    .param p0, "a"    # [S
    .param p1, "a2"    # [S

    .line 2554
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2555
    return v0

    .line 2556
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2559
    :cond_a
    array-length v2, p0

    .line 2560
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2561
    return v1

    .line 2563
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2564
    aget-short v4, p0, v3

    aget-short v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2565
    return v1

    .line 2563
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2567
    .end local v3    # "i":I
    :cond_1c
    return v0

    .line 2557
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist core-platform-api test-api equals([Z[Z)Z
    .registers 8
    .param p0, "a"    # [Z
    .param p1, "a2"    # [Z

    .line 2641
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2642
    return v0

    .line 2643
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 2646
    :cond_a
    array-length v2, p0

    .line 2647
    .local v2, "length":I
    array-length v3, p1

    if-eq v3, v2, :cond_f

    .line 2648
    return v1

    .line 2650
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v2, :cond_1c

    .line 2651
    aget-boolean v4, p0, v3

    aget-boolean v5, p1, v3

    if-eq v4, v5, :cond_19

    .line 2652
    return v1

    .line 2650
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2654
    .end local v3    # "i":I
    :cond_1c
    return v0

    .line 2644
    .end local v2    # "length":I
    :cond_1d
    :goto_1d
    return v1
.end method

.method public static whitelist core-platform-api test-api fill([BB)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 2911
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2912
    aput-byte p1, p0, v0

    .line 2911
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2913
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([BIIB)V
    .registers 5
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    .line 2933
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2934
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2935
    aput-byte p3, p0, v0

    .line 2934
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2936
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([CC)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 2876
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2877
    aput-char p1, p0, v0

    .line 2876
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2878
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([CIIC)V
    .registers 5
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    .line 2898
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2899
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2900
    aput-char p3, p0, v0

    .line 2899
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2901
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([DD)V
    .registers 5
    .param p0, "a"    # [D
    .param p1, "val"    # D

    .line 2982
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2983
    aput-wide p1, p0, v0

    .line 2982
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2984
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([DIID)V
    .registers 6
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # D

    .line 3004
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3005
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3006
    aput-wide p3, p0, v0

    .line 3005
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3007
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([FF)V
    .registers 4
    .param p0, "a"    # [F
    .param p1, "val"    # F

    .line 3017
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3018
    aput p1, p0, v0

    .line 3017
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3019
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([FIIF)V
    .registers 5
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # F

    .line 3039
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3040
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3041
    aput p3, p0, v0

    .line 3040
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3042
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([II)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 2806
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2807
    aput p1, p0, v0

    .line 2806
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2808
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([IIII)V
    .registers 5
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    .line 2828
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2829
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2830
    aput p3, p0, v0

    .line 2829
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2831
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([JIIJ)V
    .registers 6
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    .line 2793
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2794
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2795
    aput-wide p3, p0, v0

    .line 2794
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2796
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([JJ)V
    .registers 5
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 2771
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2772
    aput-wide p1, p0, v0

    .line 2771
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2773
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 3078
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3079
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3080
    aput-object p3, p0, v0

    .line 3079
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3081
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .line 3054
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3055
    aput-object p1, p0, v0

    .line 3054
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3056
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([SIIS)V
    .registers 5
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    .line 2863
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2864
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2865
    aput-short p3, p0, v0

    .line 2864
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2866
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([SS)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 2841
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2842
    aput-short p1, p0, v0

    .line 2841
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2843
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([ZIIZ)V
    .registers 5
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    .line 2969
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2970
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2971
    aput-boolean p3, p0, v0

    .line 2970
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2972
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static whitelist core-platform-api test-api fill([ZZ)V
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .line 2946
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2947
    aput-boolean p1, p0, v0

    .line 2946
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2948
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_9
    return-void
.end method

.method public static whitelist core-platform-api test-api hashCode([B)I
    .registers 6
    .param p0, "a"    # [B

    .line 3951
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3952
    return v0

    .line 3954
    :cond_4
    const/4 v1, 0x1

    .line 3955
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_11

    aget-byte v3, p0, v0

    .line 3956
    .local v3, "element":B
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 3955
    .end local v3    # "element":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3958
    :cond_11
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([C)I
    .registers 6
    .param p0, "a"    # [C

    .line 3924
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3925
    return v0

    .line 3927
    :cond_4
    const/4 v1, 0x1

    .line 3928
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_11

    aget-char v3, p0, v0

    .line 3929
    .local v3, "element":C
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 3928
    .end local v3    # "element":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3931
    :cond_11
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([D)I
    .registers 11
    .param p0, "a"    # [D

    .line 4032
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4033
    return v0

    .line 4035
    :cond_4
    const/4 v1, 0x1

    .line 4036
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_1b

    aget-wide v3, p0, v0

    .line 4037
    .local v3, "element":D
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 4038
    .local v5, "bits":J
    mul-int/lit8 v7, v1, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v5, v8

    xor-long/2addr v8, v5

    long-to-int v8, v8

    add-int v1, v7, v8

    .line 4036
    .end local v3    # "element":D
    .end local v5    # "bits":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4040
    :cond_1b
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([F)I
    .registers 7
    .param p0, "a"    # [F

    .line 4005
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4006
    return v0

    .line 4008
    :cond_4
    const/4 v1, 0x1

    .line 4009
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_15

    aget v3, p0, v0

    .line 4010
    .local v3, "element":F
    mul-int/lit8 v4, v1, 0x1f

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    .line 4009
    .end local v3    # "element":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4012
    :cond_15
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([I)I
    .registers 6
    .param p0, "a"    # [I

    .line 3870
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3871
    return v0

    .line 3873
    :cond_4
    const/4 v1, 0x1

    .line 3874
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_11

    aget v3, p0, v0

    .line 3875
    .local v3, "element":I
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 3874
    .end local v3    # "element":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3877
    :cond_11
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([J)I
    .registers 8
    .param p0, "a"    # [J

    .line 3841
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3842
    return v0

    .line 3844
    :cond_4
    const/4 v1, 0x1

    .line 3845
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_17

    aget-wide v3, p0, v0

    .line 3846
    .local v3, "element":J
    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v5, v3

    long-to-int v5, v5

    .line 3847
    .local v5, "elementHash":I
    mul-int/lit8 v6, v1, 0x1f

    add-int v1, v6, v5

    .line 3845
    .end local v3    # "element":J
    .end local v5    # "elementHash":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3850
    :cond_17
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([Ljava/lang/Object;)I
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;

    .line 4065
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 4066
    return v0

    .line 4068
    :cond_4
    const/4 v1, 0x1

    .line 4070
    .local v1, "result":I
    array-length v2, p0

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget-object v4, p0, v3

    .line 4071
    .local v4, "element":Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x1f

    if-nez v4, :cond_11

    move v6, v0

    goto :goto_15

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_15
    add-int v1, v5, v6

    .line 4070
    .end local v4    # "element":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4073
    :cond_1a
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([S)I
    .registers 6
    .param p0, "a"    # [S

    .line 3897
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3898
    return v0

    .line 3900
    :cond_4
    const/4 v1, 0x1

    .line 3901
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_11

    aget-short v3, p0, v0

    .line 3902
    .local v3, "element":S
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 3901
    .end local v3    # "element":S
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3904
    :cond_11
    return v1
.end method

.method public static whitelist core-platform-api test-api hashCode([Z)I
    .registers 7
    .param p0, "a"    # [Z

    .line 3978
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3979
    return v0

    .line 3981
    :cond_4
    const/4 v1, 0x1

    .line 3982
    .local v1, "result":I
    array-length v2, p0

    :goto_6
    if-ge v0, v2, :cond_18

    aget-boolean v3, p0, v0

    .line 3983
    .local v3, "element":Z
    mul-int/lit8 v4, v1, 0x1f

    if-eqz v3, :cond_11

    const/16 v5, 0x4cf

    goto :goto_13

    :cond_11
    const/16 v5, 0x4d5

    :goto_13
    add-int v1, v4, v5

    .line 3982
    .end local v3    # "element":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3985
    :cond_18
    return v1
.end method

.method static synthetic blacklist lambda$parallelSetAll$0([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .registers 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "generator"    # Ljava/util/function/IntFunction;
    .param p2, "i"    # I

    .line 4649
    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic blacklist lambda$parallelSetAll$1([ILjava/util/function/IntUnaryOperator;I)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "i"    # I

    .line 4687
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic blacklist lambda$parallelSetAll$2([JLjava/util/function/IntToLongFunction;I)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;
    .param p2, "i"    # I

    .line 4725
    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic blacklist lambda$parallelSetAll$3([DLjava/util/function/IntToDoubleFunction;I)V
    .registers 5
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;
    .param p2, "i"    # I

    .line 4763
    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method private static greylist-max-o mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .registers 14
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "off"    # I

    .line 1328
    sub-int v0, p3, p2

    .line 1331
    .local v0, "length":I
    const/4 v1, 0x7

    if-ge v0, v1, :cond_25

    .line 1332
    move v1, p2

    .local v1, "i":I
    :goto_6
    if-ge v1, p3, :cond_24

    .line 1333
    move v2, v1

    .local v2, "j":I
    :goto_9
    if-le v2, p2, :cond_21

    add-int/lit8 v3, v2, -0x1

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, p1, v2

    .line 1334
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_21

    .line 1335
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    .line 1334
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1332
    .end local v2    # "j":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1336
    .end local v1    # "i":I
    :cond_24
    return-void

    .line 1340
    :cond_25
    move v1, p2

    .line 1341
    .local v1, "destLow":I
    move v2, p3

    .line 1342
    .local v2, "destHigh":I
    add-int/2addr p2, p4

    .line 1343
    add-int/2addr p3, p4

    .line 1344
    add-int v3, p2, p3

    ushr-int/lit8 v3, v3, 0x1

    .line 1345
    .local v3, "mid":I
    neg-int v4, p4

    invoke-static {p1, p0, p2, v3, v4}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1346
    neg-int v4, p4

    invoke-static {p1, p0, v3, p3, v4}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1350
    add-int/lit8 v4, v3, -0x1

    aget-object v4, p0, v4

    check-cast v4, Ljava/lang/Comparable;

    aget-object v5, p0, v3

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_47

    .line 1351
    invoke-static {p0, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1352
    return-void

    .line 1356
    :cond_47
    move v4, v1

    .local v4, "i":I
    move v5, p2

    .local v5, "p":I
    move v6, v3

    .local v6, "q":I
    :goto_4a
    if-ge v4, v2, :cond_6f

    .line 1357
    if-ge v6, p3, :cond_65

    if-ge v5, v3, :cond_5d

    aget-object v7, p0, v5

    check-cast v7, Ljava/lang/Comparable;

    aget-object v8, p0, v6

    invoke-interface {v7, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gtz v7, :cond_5d

    goto :goto_65

    .line 1360
    :cond_5d
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "q":I
    .local v7, "q":I
    aget-object v6, p0, v6

    aput-object v6, p1, v4

    move v6, v7

    goto :goto_6c

    .line 1358
    .end local v7    # "q":I
    .restart local v6    # "q":I
    :cond_65
    :goto_65
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "p":I
    .local v7, "p":I
    aget-object v5, p0, v5

    aput-object v5, p1, v4

    move v5, v7

    .line 1356
    .end local v7    # "p":I
    .restart local v5    # "p":I
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 1362
    .end local v4    # "i":I
    .end local v5    # "p":I
    .end local v6    # "q":I
    :cond_6f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([DIILjava/util/function/DoubleBinaryOperator;)V
    .registers 11
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 1634
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1636
    if-ge p1, p2, :cond_17

    .line 1637
    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    .line 1638
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    .line 1639
    :cond_17
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([DLjava/util/function/DoubleBinaryOperator;)V
    .registers 9
    .param p0, "array"    # [D
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .line 1611
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1613
    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    .line 1614
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    .line 1615
    :cond_14
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([IIILjava/util/function/IntBinaryOperator;)V
    .registers 11
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 1679
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1681
    if-ge p1, p2, :cond_17

    .line 1682
    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    .line 1683
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    .line 1684
    :cond_17
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([ILjava/util/function/IntBinaryOperator;)V
    .registers 9
    .param p0, "array"    # [I
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    .line 1656
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1658
    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    .line 1659
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    .line 1660
    :cond_14
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([JIILjava/util/function/LongBinaryOperator;)V
    .registers 11
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 1586
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1588
    if-ge p1, p2, :cond_17

    .line 1589
    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    .line 1590
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    .line 1591
    :cond_17
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([JLjava/util/function/LongBinaryOperator;)V
    .registers 9
    .param p0, "array"    # [J
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    .line 1563
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1565
    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    .line 1566
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    .line 1567
    :cond_14
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([Ljava/lang/Object;IILjava/util/function/BinaryOperator;)V
    .registers 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1541
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1543
    if-ge p1, p2, :cond_17

    .line 1544
    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1545
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    .line 1546
    :cond_17
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelPrefix([Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1517
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1519
    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1520
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    .line 1521
    :cond_14
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 4
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .line 4762
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4763
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$$Lambda$Arrays$x0HcRDlColwoPupFWmOW7TREPtM;

    invoke-direct {v1, p0, p1}, Ljava/util/-$$Lambda$Arrays$x0HcRDlColwoPupFWmOW7TREPtM;-><init>([DLjava/util/function/IntToDoubleFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4764
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .line 4686
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4687
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$$Lambda$Arrays$KFf05FUz26CqVc_cf2bKY9C927o;

    invoke-direct {v1, p0, p1}, Ljava/util/-$$Lambda$Arrays$KFf05FUz26CqVc_cf2bKY9C927o;-><init>([ILjava/util/function/IntUnaryOperator;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4688
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .registers 4
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .line 4724
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4725
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;

    invoke-direct {v1, p0, p1}, Ljava/util/-$$Lambda$Arrays$aBSX_SvA5f2Q1t8_MODHDGhokzk;-><init>([JLjava/util/function/IntToLongFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4726
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 4648
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;

    invoke-direct {v1, p0, p1}, Ljava/util/-$$Lambda$Arrays$H0YqaggIxZUqId4_BJ1BLcUa93k;-><init>([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4650
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([B)V
    .registers 13
    .param p0, "a"    # [B

    .line 466
    array-length v8, p0

    .line 467
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 468
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 471
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [B

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 473
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 474
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2f

    .line 469
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v0, 0x0

    add-int/lit8 v1, v8, -0x1

    invoke-static {p0, v0, v1}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 475
    :goto_2f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([BII)V
    .registers 15
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 505
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 506
    sub-int v0, p2, p1

    .line 507
    .local v0, "n":I
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2e

    .line 508
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    move v9, v2

    .local v9, "p":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    goto :goto_2e

    .line 511
    :cond_13
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    const/4 v2, 0x0

    new-array v4, v0, [B

    const/4 v7, 0x0

    .line 513
    shl-int/lit8 v3, v9, 0x2

    div-int v3, v0, v3

    move v11, v3

    .local v11, "g":I
    if-gt v3, v1, :cond_22

    .line 514
    move v8, v1

    goto :goto_23

    :cond_22
    move v8, v11

    :goto_23
    move-object v1, v10

    move-object v3, p0

    move v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 509
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_2e
    :goto_2e
    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, p1, v1}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 515
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([C)V
    .registers 13
    .param p0, "a"    # [C

    .line 536
    array-length v8, p0

    .line 537
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 538
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 541
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [C

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 543
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 544
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 539
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v1, 0x0

    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 545
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([CII)V
    .registers 18
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 575
    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, p0

    array-length v0, v10

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 576
    sub-int v11, v9, v8

    .line 577
    .local v11, "n":I
    const/16 v0, 0x2000

    if-le v11, v0, :cond_34

    .line 578
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v12, v1

    .local v12, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_34

    .line 581
    :cond_18
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    const/4 v1, 0x0

    new-array v3, v11, [C

    const/4 v6, 0x0

    .line 583
    shl-int/lit8 v2, v12, 0x2

    div-int v2, v11, v2

    move v14, v2

    .local v14, "g":I
    if-gt v2, v0, :cond_27

    .line 584
    move v7, v0

    goto :goto_28

    :cond_27
    move v7, v14

    :goto_28
    move-object v0, v13

    move-object v2, p0

    move/from16 v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual {v13}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3f

    .line 579
    .end local v12    # "p":I
    .end local v14    # "g":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 585
    :goto_3f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([D)V
    .registers 13
    .param p0, "a"    # [D

    .line 910
    array-length v8, p0

    .line 911
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 912
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 915
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [D

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 917
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 918
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 913
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v1, 0x0

    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 919
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([DII)V
    .registers 18
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 957
    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, p0

    array-length v0, v10

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 958
    sub-int v11, v9, v8

    .line 959
    .local v11, "n":I
    const/16 v0, 0x2000

    if-le v11, v0, :cond_34

    .line 960
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v12, v1

    .local v12, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_34

    .line 963
    :cond_18
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    const/4 v1, 0x0

    new-array v3, v11, [D

    const/4 v6, 0x0

    .line 965
    shl-int/lit8 v2, v12, 0x2

    div-int v2, v11, v2

    move v14, v2

    .local v14, "g":I
    if-gt v2, v0, :cond_27

    .line 966
    move v7, v0

    goto :goto_28

    :cond_27
    move v7, v14

    :goto_28
    move-object v0, v13

    move-object v2, p0

    move/from16 v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    invoke-virtual {v13}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3f

    .line 961
    .end local v12    # "p":I
    .end local v14    # "g":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 967
    :goto_3f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([F)V
    .registers 13
    .param p0, "a"    # [F

    .line 824
    array-length v8, p0

    .line 825
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 826
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 829
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [F

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 831
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 832
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 827
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v1, 0x0

    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 833
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([FII)V
    .registers 18
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 871
    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, p0

    array-length v0, v10

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 872
    sub-int v11, v9, v8

    .line 873
    .local v11, "n":I
    const/16 v0, 0x2000

    if-le v11, v0, :cond_34

    .line 874
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v12, v1

    .local v12, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_34

    .line 877
    :cond_18
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    const/4 v1, 0x0

    new-array v3, v11, [F

    const/4 v6, 0x0

    .line 879
    shl-int/lit8 v2, v12, 0x2

    div-int v2, v11, v2

    move v14, v2

    .local v14, "g":I
    if-gt v2, v0, :cond_27

    .line 880
    move v7, v0

    goto :goto_28

    :cond_27
    move v7, v14

    :goto_28
    move-object v0, v13

    move-object v2, p0

    move/from16 v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    invoke-virtual {v13}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3f

    .line 875
    .end local v12    # "p":I
    .end local v14    # "g":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 881
    :goto_3f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([I)V
    .registers 13
    .param p0, "a"    # [I

    .line 676
    array-length v8, p0

    .line 677
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 678
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 681
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 683
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 684
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 679
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v1, 0x0

    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 685
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([III)V
    .registers 18
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 715
    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, p0

    array-length v0, v10

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 716
    sub-int v11, v9, v8

    .line 717
    .local v11, "n":I
    const/16 v0, 0x2000

    if-le v11, v0, :cond_34

    .line 718
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v12, v1

    .local v12, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_34

    .line 721
    :cond_18
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    const/4 v1, 0x0

    new-array v3, v11, [I

    const/4 v6, 0x0

    .line 723
    shl-int/lit8 v2, v12, 0x2

    div-int v2, v11, v2

    move v14, v2

    .local v14, "g":I
    if-gt v2, v0, :cond_27

    .line 724
    move v7, v0

    goto :goto_28

    :cond_27
    move v7, v14

    :goto_28
    move-object v0, v13

    move-object v2, p0

    move/from16 v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    invoke-virtual {v13}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3f

    .line 719
    .end local v12    # "p":I
    .end local v14    # "g":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 725
    :goto_3f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([J)V
    .registers 13
    .param p0, "a"    # [J

    .line 746
    array-length v8, p0

    .line 747
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 748
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 751
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [J

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 753
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 754
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 749
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v1, 0x0

    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 755
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([JII)V
    .registers 18
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 785
    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, p0

    array-length v0, v10

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 786
    sub-int v11, v9, v8

    .line 787
    .local v11, "n":I
    const/16 v0, 0x2000

    if-le v11, v0, :cond_34

    .line 788
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v12, v1

    .local v12, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_34

    .line 791
    :cond_18
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    const/4 v1, 0x0

    new-array v3, v11, [J

    const/4 v6, 0x0

    .line 793
    shl-int/lit8 v2, v12, 0x2

    div-int v2, v11, v2

    move v14, v2

    .local v14, "g":I
    if-gt v2, v0, :cond_27

    .line 794
    move v7, v0

    goto :goto_28

    :cond_27
    move v7, v14

    :goto_28
    move-object v0, v13

    move-object v2, p0

    move/from16 v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v13}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3f

    .line 789
    .end local v12    # "p":I
    .end local v14    # "g":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 795
    :goto_3f
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([Ljava/lang/Comparable;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)V"
        }
    .end annotation

    .line 1005
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    array-length v9, p0

    .line 1006
    .local v9, "n":I
    const/16 v0, 0x2000

    if-le v9, v0, :cond_38

    .line 1007
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v10, v1

    .local v10, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_38

    .line 1010
    :cond_e
    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 1012
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/Comparable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1013
    shl-int/lit8 v2, v10, 0x2

    div-int v2, v9, v2

    move v12, v2

    .local v12, "g":I
    if-gt v2, v0, :cond_2b

    .line 1014
    move v7, v0

    goto :goto_2c

    :cond_2b
    move v7, v12

    :goto_2c
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v0, v11

    move-object v2, p0

    move v5, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_43

    .line 1008
    .end local v10    # "p":I
    .end local v12    # "g":I
    :cond_38
    :goto_38
    const/4 v1, 0x0

    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v9

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1015
    :goto_43
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([Ljava/lang/Comparable;II)V
    .registers 19
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;II)V"
        }
    .end annotation

    .line 1063
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p0

    array-length v0, v11

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1064
    sub-int v12, v10, v9

    .line 1065
    .local v12, "n":I
    const/16 v0, 0x2000

    if-le v12, v0, :cond_45

    .line 1066
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v13, v1

    .local v13, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    goto :goto_45

    .line 1069
    :cond_19
    new-instance v14, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 1071
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/Comparable;

    const/4 v6, 0x0

    .line 1072
    shl-int/lit8 v2, v13, 0x2

    div-int v2, v12, v2

    move v15, v2

    .local v15, "g":I
    if-gt v2, v0, :cond_35

    .line 1073
    move v7, v0

    goto :goto_36

    :cond_35
    move v7, v15

    :goto_36
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v0, v14

    move-object/from16 v2, p0

    move/from16 v4, p1

    move v5, v12

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v14}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_53

    .line 1067
    .end local v13    # "p":I
    .end local v15    # "g":I
    :cond_45
    :goto_45
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1074
    :goto_53
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 21
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1171
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p0

    array-length v0, v11

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1172
    if-nez p3, :cond_10

    .line 1173
    sget-object v0, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v12, v0

    .end local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    goto :goto_12

    .line 1172
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .restart local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :cond_10
    move-object/from16 v12, p3

    .line 1174
    .end local p3    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local v12, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_12
    sub-int v13, v10, v9

    .line 1175
    .local v13, "n":I
    const/16 v0, 0x2000

    if-le v13, v0, :cond_4e

    .line 1176
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v14, v1

    .local v14, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    goto :goto_4e

    .line 1179
    :cond_21
    new-instance v15, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 1181
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1182
    shl-int/lit8 v2, v14, 0x2

    div-int v2, v13, v2

    move/from16 v16, v2

    .local v16, "g":I
    if-gt v2, v0, :cond_3e

    .line 1183
    move v7, v0

    goto :goto_40

    :cond_3e
    move/from16 v7, v16

    :goto_40
    move-object v0, v15

    move-object/from16 v2, p0

    move/from16 v4, p1

    move v5, v13

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v15}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_5b

    .line 1177
    .end local v14    # "p":I
    .end local v16    # "g":I
    :cond_4e
    :goto_4e
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v12

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1184
    :goto_5b
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1111
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_4

    .line 1112
    sget-object p1, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    .line 1113
    :cond_4
    array-length v9, p0

    .line 1114
    .local v9, "n":I
    const/16 v0, 0x2000

    if-le v9, v0, :cond_3b

    .line 1115
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v10, v1

    .local v10, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_3b

    .line 1118
    :cond_12
    new-instance v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v1, 0x0

    .line 1120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1121
    shl-int/lit8 v2, v10, 0x2

    div-int v2, v9, v2

    move v12, v2

    .local v12, "g":I
    if-gt v2, v0, :cond_2f

    .line 1122
    move v7, v0

    goto :goto_30

    :cond_2f
    move v7, v12

    :goto_30
    move-object v0, v11

    move-object v2, p0

    move v5, v9

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_45

    .line 1116
    .end local v10    # "p":I
    .end local v12    # "g":I
    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v9

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1123
    :goto_45
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([S)V
    .registers 13
    .param p0, "a"    # [S

    .line 606
    array-length v8, p0

    .line 607
    .local v8, "n":I
    const/16 v0, 0x2000

    if-le v8, v0, :cond_29

    .line 608
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v9, v1

    .local v9, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_29

    .line 611
    :cond_e
    new-instance v10, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    const/4 v1, 0x0

    new-array v3, v8, [S

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 613
    shl-int/lit8 v2, v9, 0x2

    div-int v2, v8, v2

    move v11, v2

    .local v11, "g":I
    if-gt v2, v0, :cond_1e

    .line 614
    move v7, v0

    goto :goto_1f

    :cond_1e
    move v7, v11

    :goto_1f
    move-object v0, v10

    move-object v2, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    invoke-virtual {v10}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_33

    .line 609
    .end local v9    # "p":I
    .end local v11    # "g":I
    :cond_29
    :goto_29
    const/4 v1, 0x0

    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 615
    :goto_33
    return-void
.end method

.method public static whitelist core-platform-api test-api parallelSort([SII)V
    .registers 18
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 645
    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, p0

    array-length v0, v10

    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 646
    sub-int v11, v9, v8

    .line 647
    .local v11, "n":I
    const/16 v0, 0x2000

    if-le v11, v0, :cond_34

    .line 648
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    move v12, v1

    .local v12, "p":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    goto :goto_34

    .line 651
    :cond_18
    new-instance v13, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    const/4 v1, 0x0

    new-array v3, v11, [S

    const/4 v6, 0x0

    .line 653
    shl-int/lit8 v2, v12, 0x2

    div-int v2, v11, v2

    move v14, v2

    .local v14, "g":I
    if-gt v2, v0, :cond_27

    .line 654
    move v7, v0

    goto :goto_28

    :cond_27
    move v7, v14

    :goto_28
    move-object v0, v13

    move-object v2, p0

    move/from16 v4, p1

    move v5, v11

    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    invoke-virtual {v13}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_3f

    .line 649
    .end local v12    # "p":I
    .end local v14    # "g":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 655
    :goto_3f
    return-void
.end method

.method private static greylist-max-o rangeCheck(III)V
    .registers 6
    .param p0, "arrayLength"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 115
    if-gt p1, p2, :cond_13

    .line 119
    if-ltz p1, :cond_d

    .line 122
    if-gt p2, p0, :cond_7

    .line 125
    return-void

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 120
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 116
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api setAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 5
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .line 4742
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4744
    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 4743
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4745
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist core-platform-api test-api setAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .line 4666
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4668
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    .line 4667
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4669
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist core-platform-api test-api setAll([JLjava/util/function/IntToLongFunction;)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .line 4704
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4706
    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 4705
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4707
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist core-platform-api test-api setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 4627
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4629
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 4628
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4630
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([B)V
    .registers 3
    .param p0, "a"    # [B

    .line 307
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 308
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([BII)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 331
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 332
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 333
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([C)V
    .registers 8
    .param p0, "a"    # [C

    .line 267
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 268
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([CII)V
    .registers 10
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 291
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 292
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 293
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([D)V
    .registers 8
    .param p0, "a"    # [D

    .line 411
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 412
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([DII)V
    .registers 10
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 443
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 444
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 445
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([F)V
    .registers 8
    .param p0, "a"    # [F

    .line 355
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 356
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([FII)V
    .registers 10
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 387
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 388
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 389
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([I)V
    .registers 8
    .param p0, "a"    # [I

    .line 147
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 148
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([III)V
    .registers 10
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 171
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 172
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 173
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([J)V
    .registers 8
    .param p0, "a"    # [J

    .line 187
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 188
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([JII)V
    .registers 10
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 211
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 212
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 213
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([Ljava/lang/Object;)V
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;

    .line 1239
    array-length v2, p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    .line 1240
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([Ljava/lang/Object;II)V
    .registers 10
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 1297
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1302
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    .line 1303
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 12
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1484
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_6

    .line 1485
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    goto :goto_14

    .line 1487
    :cond_6
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1492
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1494
    :goto_14
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1417
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p1, :cond_6

    .line 1418
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_10

    .line 1424
    :cond_6
    const/4 v1, 0x0

    array-length v2, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1426
    :goto_10
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([S)V
    .registers 8
    .param p0, "a"    # [S

    .line 227
    array-length v0, p0

    add-int/lit8 v3, v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 228
    return-void
.end method

.method public static whitelist core-platform-api test-api sort([SII)V
    .registers 10
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 251
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 252
    add-int/lit8 v3, p2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 253
    return-void
.end method

.method public static whitelist core-platform-api test-api spliterator([D)Ljava/util/Spliterator$OfDouble;
    .registers 2
    .param p0, "array"    # [D

    .line 4898
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([DI)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([DII)Ljava/util/Spliterator$OfDouble;
    .registers 4
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 4921
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([I)Ljava/util/Spliterator$OfInt;
    .registers 2
    .param p0, "array"    # [I

    .line 4819
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([II)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([III)Ljava/util/Spliterator$OfInt;
    .registers 4
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 4842
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([J)Ljava/util/Spliterator$OfLong;
    .registers 2
    .param p0, "array"    # [J

    .line 4858
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([JI)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([JII)Ljava/util/Spliterator$OfLong;
    .registers 4
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 4881
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([Ljava/lang/Object;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 4779
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;
    .registers 4
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 4803
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([D)Ljava/util/stream/DoubleStream;
    .registers 3
    .param p0, "array"    # [D

    .line 5026
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([DII)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5044
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([I)Ljava/util/stream/IntStream;
    .registers 3
    .param p0, "array"    # [I

    .line 4966
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([III)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 4984
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([J)Ljava/util/stream/LongStream;
    .registers 3
    .param p0, "array"    # [J

    .line 4996
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([JII)Ljava/util/stream/LongStream;
    .registers 5
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .line 5014
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 4935
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 4954
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o swap([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "x"    # [Ljava/lang/Object;
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 1368
    aget-object v0, p0, p1

    .line 1369
    .local v0, "t":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 1370
    aput-object v0, p0, p2

    .line 1371
    return-void
.end method

.method public static whitelist core-platform-api test-api toString([B)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [B

    .line 4368
    if-nez p0, :cond_5

    .line 4369
    const-string v0, "null"

    return-object v0

    .line 4370
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4371
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4372
    const-string v1, "[]"

    return-object v1

    .line 4374
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4375
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4376
    const/4 v2, 0x0

    .line 4377
    .local v2, "i":I
    :goto_19
    aget-byte v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4378
    if-ne v2, v0, :cond_2a

    .line 4379
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4380
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4376
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([C)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [C

    .line 4338
    if-nez p0, :cond_5

    .line 4339
    const-string v0, "null"

    return-object v0

    .line 4340
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4341
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4342
    const-string v1, "[]"

    return-object v1

    .line 4344
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4345
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4346
    const/4 v2, 0x0

    .line 4347
    .local v2, "i":I
    :goto_19
    aget-char v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4348
    if-ne v2, v0, :cond_2a

    .line 4349
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4350
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([D)Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [D

    .line 4459
    if-nez p0, :cond_5

    .line 4460
    const-string v0, "null"

    return-object v0

    .line 4461
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4462
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4463
    const-string v1, "[]"

    return-object v1

    .line 4465
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4466
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4467
    const/4 v2, 0x0

    .line 4468
    .local v2, "i":I
    :goto_19
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4469
    if-ne v2, v0, :cond_2a

    .line 4470
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4471
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4467
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([F)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [F

    .line 4428
    if-nez p0, :cond_5

    .line 4429
    const-string v0, "null"

    return-object v0

    .line 4431
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4432
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4433
    const-string v1, "[]"

    return-object v1

    .line 4435
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4436
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4437
    const/4 v2, 0x0

    .line 4438
    .local v2, "i":I
    :goto_19
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4439
    if-ne v2, v0, :cond_2a

    .line 4440
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4441
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4437
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([I)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [I

    .line 4278
    if-nez p0, :cond_5

    .line 4279
    const-string v0, "null"

    return-object v0

    .line 4280
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4281
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4282
    const-string v1, "[]"

    return-object v1

    .line 4284
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4285
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4286
    const/4 v2, 0x0

    .line 4287
    .local v2, "i":I
    :goto_19
    aget v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4288
    if-ne v2, v0, :cond_2a

    .line 4289
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4290
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4286
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([J)Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [J

    .line 4248
    if-nez p0, :cond_5

    .line 4249
    const-string v0, "null"

    return-object v0

    .line 4250
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4251
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4252
    const-string v1, "[]"

    return-object v1

    .line 4254
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4255
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4256
    const/4 v2, 0x0

    .line 4257
    .local v2, "i":I
    :goto_19
    aget-wide v3, p0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4258
    if-ne v2, v0, :cond_2a

    .line 4259
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4260
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;

    .line 4492
    if-nez p0, :cond_5

    .line 4493
    const-string v0, "null"

    return-object v0

    .line 4495
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4496
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4497
    const-string v1, "[]"

    return-object v1

    .line 4499
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4500
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4501
    const/4 v2, 0x0

    .line 4502
    .local v2, "i":I
    :goto_19
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4503
    if-ne v2, v0, :cond_2e

    .line 4504
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4505
    :cond_2e
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4501
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([S)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [S

    .line 4308
    if-nez p0, :cond_5

    .line 4309
    const-string v0, "null"

    return-object v0

    .line 4310
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4311
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4312
    const-string v1, "[]"

    return-object v1

    .line 4314
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4315
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4316
    const/4 v2, 0x0

    .line 4317
    .local v2, "i":I
    :goto_19
    aget-short v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4318
    if-ne v2, v0, :cond_2a

    .line 4319
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4320
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4316
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method public static whitelist core-platform-api test-api toString([Z)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Z

    .line 4398
    if-nez p0, :cond_5

    .line 4399
    const-string v0, "null"

    return-object v0

    .line 4400
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 4401
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 4402
    const-string v1, "[]"

    return-object v1

    .line 4404
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4405
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4406
    const/4 v2, 0x0

    .line 4407
    .local v2, "i":I
    :goto_19
    aget-boolean v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4408
    if-ne v2, v0, :cond_2a

    .line 4409
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4410
    :cond_2a
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4406
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method
