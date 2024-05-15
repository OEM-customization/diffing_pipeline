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
.field private static final INSERTIONSORT_THRESHOLD:I = 0x7

.field public static final MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 3728
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/Arrays$ArrayList;

    invoke-direct {v0, p0}, Ljava/util/Arrays$ArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static binarySearch([BB)I
    .registers 4
    .param p0, "a"    # [B
    .param p1, "key"    # B

    .prologue
    .line 2035
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([BIIB)I
    .registers 5
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    .prologue
    .line 2072
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2073
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([BIIB)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CC)I
    .registers 4
    .param p0, "a"    # [C
    .param p1, "key"    # C

    .prologue
    .line 1954
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([CIIC)I
    .registers 5
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    .prologue
    .line 1991
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1992
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([CIIC)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DD)I
    .registers 6
    .param p0, "a"    # [D
    .param p1, "key"    # D

    .prologue
    .line 2117
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([DIID)I
    .registers 6
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    .prologue
    .line 2155
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2156
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([DIID)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FF)I
    .registers 4
    .param p0, "a"    # [F
    .param p1, "key"    # F

    .prologue
    .line 2208
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([FIIF)I
    .registers 5
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    .prologue
    .line 2246
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2247
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([FIIF)I

    move-result v0

    return v0
.end method

.method public static binarySearch([II)I
    .registers 4
    .param p0, "a"    # [I
    .param p1, "key"    # I

    .prologue
    .line 1792
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([IIII)I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    .prologue
    .line 1829
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1830
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([IIII)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JIIJ)I
    .registers 6
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    .prologue
    .line 1748
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1749
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([JJ)I
    .registers 6
    .param p0, "a"    # [J
    .param p1, "key"    # J

    .prologue
    .line 1711
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([JIIJ)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 2352
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2353
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 2457
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2458
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2307
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 2410
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SIIS)I
    .registers 5
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    .prologue
    .line 1910
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1911
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method public static binarySearch([SS)I
    .registers 4
    .param p0, "a"    # [S
    .param p1, "key"    # S

    .prologue
    .line 1873
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/util/Arrays;->binarySearch0([SIIS)I

    move-result v0

    return v0
.end method

.method private static binarySearch0([BIIB)I
    .registers 9
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # B

    .prologue
    .line 2079
    move v1, p1

    .line 2080
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 2082
    .local v0, "high":I
    :goto_3
    if-gt v1, v0, :cond_16

    .line 2083
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 2084
    .local v2, "mid":I
    aget-byte v3, p0, v2

    .line 2086
    .local v3, "midVal":B
    if-ge v3, p3, :cond_10

    .line 2087
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 2088
    :cond_10
    if-le v3, p3, :cond_15

    .line 2089
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 2091
    :cond_15
    return v2

    .line 2093
    .end local v2    # "mid":I
    .end local v3    # "midVal":B
    :cond_16
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private static binarySearch0([CIIC)I
    .registers 9
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # C

    .prologue
    .line 1998
    move v1, p1

    .line 1999
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 2001
    .local v0, "high":I
    :goto_3
    if-gt v1, v0, :cond_16

    .line 2002
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 2003
    .local v2, "mid":I
    aget-char v3, p0, v2

    .line 2005
    .local v3, "midVal":C
    if-ge v3, p3, :cond_10

    .line 2006
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 2007
    :cond_10
    if-le v3, p3, :cond_15

    .line 2008
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 2010
    :cond_15
    return v2

    .line 2012
    .end local v2    # "mid":I
    .end local v3    # "midVal":C
    :cond_16
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private static binarySearch0([DIID)I
    .registers 16
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # D

    .prologue
    .line 2162
    move v1, p1

    .line 2163
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 2165
    .local v0, "high":I
    :goto_3
    if-gt v1, v0, :cond_30

    .line 2166
    add-int v5, v1, v0

    ushr-int/lit8 v4, v5, 0x1

    .line 2167
    .local v4, "mid":I
    aget-wide v8, p0, v4

    .line 2169
    .local v8, "midVal":D
    cmpg-double v5, v8, p3

    if-gez v5, :cond_12

    .line 2170
    add-int/lit8 v1, v4, 0x1

    goto :goto_3

    .line 2171
    :cond_12
    cmpl-double v5, v8, p3

    if-lez v5, :cond_19

    .line 2172
    add-int/lit8 v0, v4, -0x1

    goto :goto_3

    .line 2174
    :cond_19
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 2175
    .local v6, "midBits":J
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 2176
    .local v2, "keyBits":J
    cmp-long v5, v6, v2

    if-nez v5, :cond_26

    .line 2177
    return v4

    .line 2178
    :cond_26
    cmp-long v5, v6, v2

    if-gez v5, :cond_2d

    .line 2179
    add-int/lit8 v1, v4, 0x1

    goto :goto_3

    .line 2181
    :cond_2d
    add-int/lit8 v0, v4, -0x1

    goto :goto_3

    .line 2184
    .end local v2    # "keyBits":J
    .end local v4    # "mid":I
    .end local v6    # "midBits":J
    .end local v8    # "midVal":D
    :cond_30
    add-int/lit8 v5, v1, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static binarySearch0([FIIF)I
    .registers 11
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # F

    .prologue
    .line 2253
    move v2, p1

    .line 2254
    .local v2, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 2256
    .local v0, "high":I
    :goto_3
    if-gt v2, v0, :cond_2c

    .line 2257
    add-int v6, v2, v0

    ushr-int/lit8 v3, v6, 0x1

    .line 2258
    .local v3, "mid":I
    aget v5, p0, v3

    .line 2260
    .local v5, "midVal":F
    cmpg-float v6, v5, p3

    if-gez v6, :cond_12

    .line 2261
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 2262
    :cond_12
    cmpl-float v6, v5, p3

    if-lez v6, :cond_19

    .line 2263
    add-int/lit8 v0, v3, -0x1

    goto :goto_3

    .line 2265
    :cond_19
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 2266
    .local v4, "midBits":I
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2267
    .local v1, "keyBits":I
    if-ne v4, v1, :cond_24

    .line 2268
    return v3

    .line 2269
    :cond_24
    if-ge v4, v1, :cond_29

    .line 2270
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 2272
    :cond_29
    add-int/lit8 v0, v3, -0x1

    goto :goto_3

    .line 2275
    .end local v1    # "keyBits":I
    .end local v3    # "mid":I
    .end local v4    # "midBits":I
    .end local v5    # "midVal":F
    :cond_2c
    add-int/lit8 v6, v2, 0x1

    neg-int v6, v6

    return v6
.end method

.method private static binarySearch0([IIII)I
    .registers 9
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # I

    .prologue
    .line 1836
    move v1, p1

    .line 1837
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 1839
    .local v0, "high":I
    :goto_3
    if-gt v1, v0, :cond_16

    .line 1840
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1841
    .local v2, "mid":I
    aget v3, p0, v2

    .line 1843
    .local v3, "midVal":I
    if-ge v3, p3, :cond_10

    .line 1844
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1845
    :cond_10
    if-le v3, p3, :cond_15

    .line 1846
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1848
    :cond_15
    return v2

    .line 1850
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_16
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method private static binarySearch0([JIIJ)I
    .registers 12
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # J

    .prologue
    .line 1755
    move v1, p1

    .line 1756
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 1758
    .local v0, "high":I
    :goto_3
    if-gt v1, v0, :cond_1a

    .line 1759
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 1760
    .local v2, "mid":I
    aget-wide v4, p0, v2

    .line 1762
    .local v4, "midVal":J
    cmp-long v3, v4, p3

    if-gez v3, :cond_12

    .line 1763
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1764
    :cond_12
    cmp-long v3, v4, p3

    if-lez v3, :cond_19

    .line 1765
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1767
    :cond_19
    return v2

    .line 1769
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_1a
    add-int/lit8 v3, v1, 0x1

    neg-int v3, v3

    return v3
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I
    .registers 10
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # Ljava/lang/Object;

    .prologue
    .line 2359
    move v2, p1

    .line 2360
    .local v2, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2362
    .local v1, "high":I
    :goto_3
    if-gt v2, v1, :cond_1c

    .line 2363
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 2365
    .local v3, "mid":I
    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/Comparable;

    .line 2367
    .local v4, "midVal":Ljava/lang/Comparable;
    invoke-interface {v4, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 2369
    .local v0, "cmp":I
    if-gez v0, :cond_16

    .line 2370
    add-int/lit8 v2, v3, 0x1

    goto :goto_3

    .line 2371
    :cond_16
    if-lez v0, :cond_1b

    .line 2372
    add-int/lit8 v1, v3, -0x1

    goto :goto_3

    .line 2374
    :cond_1b
    return v3

    .line 2376
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Comparable;
    :cond_1c
    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static binarySearch0([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I
    .registers 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IITT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 2464
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "key":Ljava/lang/Object;, "TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p4, :cond_7

    .line 2465
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->binarySearch0([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v5

    return v5

    .line 2467
    :cond_7
    move v2, p1

    .line 2468
    .local v2, "low":I
    add-int/lit8 v1, p2, -0x1

    .line 2470
    .local v1, "high":I
    :goto_a
    if-gt v2, v1, :cond_21

    .line 2471
    add-int v5, v2, v1

    ushr-int/lit8 v3, v5, 0x1

    .line 2472
    .local v3, "mid":I
    aget-object v4, p0, v3

    .line 2473
    .local v4, "midVal":Ljava/lang/Object;, "TT;"
    invoke-interface {p4, v4, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2474
    .local v0, "cmp":I
    if-gez v0, :cond_1b

    .line 2475
    add-int/lit8 v2, v3, 0x1

    goto :goto_a

    .line 2476
    :cond_1b
    if-lez v0, :cond_20

    .line 2477
    add-int/lit8 v1, v3, -0x1

    goto :goto_a

    .line 2479
    :cond_20
    return v3

    .line 2481
    .end local v0    # "cmp":I
    .end local v3    # "mid":I
    .end local v4    # "midVal":Ljava/lang/Object;, "TT;"
    :cond_21
    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    return v5
.end method

.method private static binarySearch0([SIIS)I
    .registers 9
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "key"    # S

    .prologue
    .line 1917
    move v1, p1

    .line 1918
    .local v1, "low":I
    add-int/lit8 v0, p2, -0x1

    .line 1920
    .local v0, "high":I
    :goto_3
    if-gt v1, v0, :cond_16

    .line 1921
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1922
    .local v2, "mid":I
    aget-short v3, p0, v2

    .line 1924
    .local v3, "midVal":S
    if-ge v3, p3, :cond_10

    .line 1925
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 1926
    :cond_10
    if-le v3, p3, :cond_15

    .line 1927
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 1929
    :cond_15
    return v2

    .line 1931
    .end local v2    # "mid":I
    .end local v3    # "midVal":S
    :cond_16
    add-int/lit8 v4, v1, 0x1

    neg-int v4, v4

    return v4
.end method

.method public static checkOffsetAndCount(III)V
    .registers 4
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 134
    or-int v0, p1, p2

    if-ltz v0, :cond_6

    if-le p1, p0, :cond_c

    .line 135
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(III)V

    throw v0

    .line 134
    :cond_c
    sub-int v0, p0, p1

    if-lt v0, p2, :cond_6

    .line 138
    return-void
.end method

.method public static copyOf([BI)[B
    .registers 5
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3164
    new-array v0, p1, [B

    .line 3166
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3165
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3167
    return-object v0
.end method

.method public static copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3260
    new-array v0, p1, [C

    .line 3262
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3261
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3263
    return-object v0
.end method

.method public static copyOf([DI)[D
    .registers 5
    .param p0, "original"    # [D
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3308
    new-array v0, p1, [D

    .line 3310
    .local v0, "copy":[D
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3309
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3311
    return-object v0
.end method

.method public static copyOf([FI)[F
    .registers 5
    .param p0, "original"    # [F
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3284
    new-array v0, p1, [F

    .line 3286
    .local v0, "copy":[F
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3285
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3287
    return-object v0
.end method

.method public static copyOf([II)[I
    .registers 5
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3212
    new-array v0, p1, [I

    .line 3214
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3213
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3215
    return-object v0
.end method

.method public static copyOf([JI)[J
    .registers 5
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3236
    new-array v0, p1, [J

    .line 3238
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3237
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3239
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 3109
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .param p1, "newLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p2, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v2, 0x0

    .line 3138
    const-class v1, [Ljava/lang/Object;

    if-ne p2, v1, :cond_10

    .line 3139
    new-array v0, p1, [Ljava/lang/Object;

    .line 3142
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    :goto_7
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3141
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3143
    return-object v0

    .line 3140
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .restart local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    goto :goto_7
.end method

.method public static copyOf([SI)[S
    .registers 5
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3188
    new-array v0, p1, [S

    .line 3190
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3189
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 3191
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .registers 5
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 3332
    new-array v0, p1, [Z

    .line 3334
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3333
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 3335
    return-object v0
.end method

.method public static copyOfRange([BII)[B
    .registers 8
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3445
    sub-int v1, p2, p1

    .line 3446
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3447
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3448
    :cond_23
    new-array v0, v1, [B

    .line 3450
    .local v0, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3449
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3451
    return-object v0
.end method

.method public static copyOfRange([CII)[C
    .registers 8
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3589
    sub-int v1, p2, p1

    .line 3590
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3591
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3592
    :cond_23
    new-array v0, v1, [C

    .line 3594
    .local v0, "copy":[C
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3593
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 3595
    return-object v0
.end method

.method public static copyOfRange([DII)[D
    .registers 8
    .param p0, "original"    # [D
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3661
    sub-int v1, p2, p1

    .line 3662
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3663
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3664
    :cond_23
    new-array v0, v1, [D

    .line 3666
    .local v0, "copy":[D
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3665
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 3667
    return-object v0
.end method

.method public static copyOfRange([FII)[F
    .registers 8
    .param p0, "original"    # [F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3625
    sub-int v1, p2, p1

    .line 3626
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3627
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3628
    :cond_23
    new-array v0, v1, [F

    .line 3630
    .local v0, "copy":[F
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3629
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3631
    return-object v0
.end method

.method public static copyOfRange([III)[I
    .registers 8
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3517
    sub-int v1, p2, p1

    .line 3518
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3520
    :cond_23
    new-array v0, v1, [I

    .line 3522
    .local v0, "copy":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3521
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3523
    return-object v0
.end method

.method public static copyOfRange([JII)[J
    .registers 8
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3553
    sub-int v1, p2, p1

    .line 3554
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3555
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3556
    :cond_23
    new-array v0, v1, [J

    .line 3558
    .local v0, "copy":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3557
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 3559
    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
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

    .prologue
    .line 3369
    .local p0, "original":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 9
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;II",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "original":[Ljava/lang/Object;, "[TU;"
    .local p3, "newType":Ljava/lang/Class;, "Ljava/lang/Class<+[TT;>;"
    const/4 v3, 0x0

    .line 3406
    sub-int v1, p2, p1

    .line 3407
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3408
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3410
    :cond_23
    const-class v2, [Ljava/lang/Object;

    if-ne p3, v2, :cond_33

    .line 3411
    new-array v0, v1, [Ljava/lang/Object;

    .line 3414
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    :goto_29
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3413
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3415
    return-object v0

    .line 3412
    .end local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    :cond_33
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .restart local v0    # "copy":[Ljava/lang/Object;, "[TT;"
    goto :goto_29
.end method

.method public static copyOfRange([SII)[S
    .registers 8
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3481
    sub-int v1, p2, p1

    .line 3482
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3483
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3484
    :cond_23
    new-array v0, v1, [S

    .line 3486
    .local v0, "copy":[S
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3485
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 3487
    return-object v0
.end method

.method public static copyOfRange([ZII)[Z
    .registers 8
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 3697
    sub-int v1, p2, p1

    .line 3698
    .local v1, "newLength":I
    if-gez v1, :cond_23

    .line 3699
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3700
    :cond_23
    new-array v0, v1, [Z

    .line 3702
    .local v0, "copy":[Z
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3701
    invoke-static {p0, p1, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 3703
    return-object v0
.end method

.method public static deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10
    .param p0, "a1"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4185
    if-ne p0, p1, :cond_5

    .line 4186
    return v7

    .line 4187
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 4188
    :cond_9
    return v6

    .line 4189
    :cond_a
    array-length v4, p0

    .line 4190
    .local v4, "length":I
    array-length v5, p1

    if-eq v5, v4, :cond_f

    .line 4191
    return v6

    .line 4193
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v4, :cond_27

    .line 4194
    aget-object v0, p0, v3

    .line 4195
    .local v0, "e1":Ljava/lang/Object;
    aget-object v1, p1, v3

    .line 4197
    .local v1, "e2":Ljava/lang/Object;
    if-ne v0, v1, :cond_1b

    .line 4193
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 4200
    :cond_1b
    if-eqz v0, :cond_1f

    if-nez v1, :cond_20

    .line 4201
    :cond_1f
    return v6

    .line 4204
    :cond_20
    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 4206
    .local v2, "eq":Z
    if-nez v2, :cond_18

    .line 4207
    return v6

    .line 4209
    .end local v0    # "e1":Ljava/lang/Object;
    .end local v1    # "e2":Ljava/lang/Object;
    .end local v2    # "eq":Z
    :cond_27
    return v7
.end method

.method static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .prologue
    .line 4214
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4215
    .local v0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4217
    .local v1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_14

    .line 4218
    const/4 v2, 0x0

    return v2

    .line 4220
    :cond_14
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_21

    .line 4221
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 4222
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_21
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_2e

    .line 4223
    check-cast p0, [B

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [B

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    .line 4224
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_2e
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_3b

    .line 4225
    check-cast p0, [S

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [S

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v2

    return v2

    .line 4226
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_3b
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_48

    .line 4227
    check-cast p0, [I

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [I

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2

    .line 4228
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_48
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_55

    .line 4229
    check-cast p0, [J

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [J

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    return v2

    .line 4230
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_55
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_62

    .line 4231
    check-cast p0, [C

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [C

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    return v2

    .line 4232
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_62
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_6f

    .line 4233
    check-cast p0, [F

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [F

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    return v2

    .line 4234
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_6f
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7c

    .line 4235
    check-cast p0, [D

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [D

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    return v2

    .line 4236
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_7c
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_89

    .line 4237
    check-cast p0, [Z

    .end local p0    # "e1":Ljava/lang/Object;
    check-cast p1, [Z

    .end local p1    # "e2":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    return v2

    .line 4239
    .restart local p0    # "e1":Ljava/lang/Object;
    .restart local p1    # "e2":Ljava/lang/Object;
    :cond_89
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static deepHashCode([Ljava/lang/Object;)I
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 4109
    if-nez p0, :cond_4

    .line 4110
    return v4

    .line 4112
    :cond_4
    const/4 v3, 0x1

    .line 4114
    .local v3, "result":I
    array-length v5, p0

    :goto_6
    if-ge v4, v5, :cond_8a

    aget-object v1, p0, v4

    .line 4115
    .local v1, "element":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 4117
    .local v2, "elementHash":I
    if-eqz v1, :cond_1b

    .line 4118
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4119
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_22

    .line 4120
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 4143
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1b
    :goto_1b
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 4114
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4121
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_22
    instance-of v6, v1, [Ljava/lang/Object;

    if-eqz v6, :cond_2d

    .line 4122
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_1b

    .line 4123
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_2d
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_38

    .line 4124
    check-cast v1, [B

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1b

    .line 4125
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_38
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_43

    .line 4126
    check-cast v1, [S

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v2

    goto :goto_1b

    .line 4127
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_43
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_4e

    .line 4128
    check-cast v1, [I

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    goto :goto_1b

    .line 4129
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_4e
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_59

    .line 4130
    check-cast v1, [J

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    goto :goto_1b

    .line 4131
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_59
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_64

    .line 4132
    check-cast v1, [C

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v2

    goto :goto_1b

    .line 4133
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_64
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_6f

    .line 4134
    check-cast v1, [F

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    goto :goto_1b

    .line 4135
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_6f
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_7a

    .line 4136
    check-cast v1, [D

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    goto :goto_1b

    .line 4137
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_7a
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_85

    .line 4138
    check-cast v1, [Z

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v2

    goto :goto_1b

    .line 4140
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_85
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1b

    .line 4146
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "element":Ljava/lang/Object;
    .end local v2    # "elementHash":I
    :cond_8a
    return v3
.end method

.method public static deepToString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 4552
    if-nez p0, :cond_6

    .line 4553
    const-string/jumbo v2, "null"

    return-object v2

    .line 4555
    :cond_6
    array-length v2, p0

    mul-int/lit8 v1, v2, 0x14

    .line 4556
    .local v1, "bufLen":I
    array-length v2, p0

    if-eqz v2, :cond_11

    if-gtz v1, :cond_11

    .line 4557
    const v1, 0x7fffffff

    .line 4558
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4559
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 4560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set",
            "<[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4565
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<[Ljava/lang/Object;>;"
    if-nez p0, :cond_9

    .line 4566
    const-string/jumbo v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4567
    return-void

    .line 4569
    :cond_9
    array-length v4, p0

    add-int/lit8 v3, v4, -0x1

    .line 4570
    .local v3, "iMax":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    .line 4571
    const-string/jumbo v4, "[]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4572
    return-void

    .line 4575
    :cond_16
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4576
    const/16 v4, 0x5b

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4577
    const/4 v2, 0x0

    .line 4579
    .local v2, "i":I
    :goto_1f
    aget-object v1, p0, v2

    .line 4580
    .local v1, "element":Ljava/lang/Object;
    if-nez v1, :cond_34

    .line 4581
    const-string/jumbo v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4612
    .end local v1    # "element":Ljava/lang/Object;
    :goto_29
    if-ne v2, v3, :cond_cd

    .line 4616
    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4617
    invoke-interface {p2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4618
    return-void

    .line 4583
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4585
    .local v0, "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 4586
    const-class v4, [B

    if-ne v0, v4, :cond_4c

    .line 4587
    check-cast v1, [B

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4588
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_4c
    const-class v4, [S

    if-ne v0, v4, :cond_5a

    .line 4589
    check-cast v1, [S

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4590
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_5a
    const-class v4, [I

    if-ne v0, v4, :cond_68

    .line 4591
    check-cast v1, [I

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4592
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_68
    const-class v4, [J

    if-ne v0, v4, :cond_76

    .line 4593
    check-cast v1, [J

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4594
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_76
    const-class v4, [C

    if-ne v0, v4, :cond_84

    .line 4595
    check-cast v1, [C

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4596
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_84
    const-class v4, [F

    if-ne v0, v4, :cond_92

    .line 4597
    check-cast v1, [F

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4598
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_92
    const-class v4, [D

    if-ne v0, v4, :cond_a0

    .line 4599
    check-cast v1, [D

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 4600
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_a0
    const-class v4, [Z

    if-ne v0, v4, :cond_af

    .line 4601
    check-cast v1, [Z

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    .line 4603
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_af
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 4604
    const-string/jumbo v4, "[...]"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    .line 4606
    :cond_bd
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "element":Ljava/lang/Object;
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto/16 :goto_29

    .line 4609
    .restart local v1    # "element":Ljava/lang/Object;
    :cond_c4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    .line 4614
    .end local v0    # "eClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "element":Ljava/lang/Object;
    :cond_cd
    const-string/jumbo v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4577
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f
.end method

.method public static equals([B[B)Z
    .registers 8
    .param p0, "a"    # [B
    .param p1, "a2"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2615
    if-ne p0, p1, :cond_5

    .line 2616
    return v5

    .line 2617
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2618
    :cond_9
    return v4

    .line 2620
    :cond_a
    array-length v1, p0

    .line 2621
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2622
    return v4

    .line 2624
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1c

    .line 2625
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_19

    .line 2626
    return v4

    .line 2624
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2628
    :cond_1c
    return v5
.end method

.method public static equals([C[C)Z
    .registers 8
    .param p0, "a"    # [C
    .param p1, "a2"    # [C

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2586
    if-ne p0, p1, :cond_5

    .line 2587
    return v5

    .line 2588
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2589
    :cond_9
    return v4

    .line 2591
    :cond_a
    array-length v1, p0

    .line 2592
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2593
    return v4

    .line 2595
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1c

    .line 2596
    aget-char v2, p0, v0

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_19

    .line 2597
    return v4

    .line 2595
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2599
    :cond_1c
    return v5
.end method

.method public static equals([D[D)Z
    .registers 10
    .param p0, "a"    # [D
    .param p1, "a2"    # [D

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2679
    if-ne p0, p1, :cond_5

    .line 2680
    return v7

    .line 2681
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2682
    :cond_9
    return v6

    .line 2684
    :cond_a
    array-length v1, p0

    .line 2685
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2686
    return v6

    .line 2688
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_26

    .line 2689
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_23

    .line 2690
    return v6

    .line 2688
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2692
    :cond_26
    return v7
.end method

.method public static equals([F[F)Z
    .registers 8
    .param p0, "a"    # [F
    .param p1, "a2"    # [F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2714
    if-ne p0, p1, :cond_5

    .line 2715
    return v5

    .line 2716
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2717
    :cond_9
    return v4

    .line 2719
    :cond_a
    array-length v1, p0

    .line 2720
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2721
    return v4

    .line 2723
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_24

    .line 2724
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_21

    .line 2725
    return v4

    .line 2723
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2727
    :cond_24
    return v5
.end method

.method public static equals([I[I)Z
    .registers 8
    .param p0, "a"    # [I
    .param p1, "a2"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2528
    if-ne p0, p1, :cond_5

    .line 2529
    return v5

    .line 2530
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2531
    :cond_9
    return v4

    .line 2533
    :cond_a
    array-length v1, p0

    .line 2534
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2535
    return v4

    .line 2537
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1c

    .line 2538
    aget v2, p0, v0

    aget v3, p1, v0

    if-eq v2, v3, :cond_19

    .line 2539
    return v4

    .line 2537
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2541
    :cond_1c
    return v5
.end method

.method public static equals([J[J)Z
    .registers 10
    .param p0, "a"    # [J
    .param p1, "a2"    # [J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2499
    if-ne p0, p1, :cond_5

    .line 2500
    return v7

    .line 2501
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2502
    :cond_9
    return v6

    .line 2504
    :cond_a
    array-length v1, p0

    .line 2505
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2506
    return v6

    .line 2508
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1e

    .line 2509
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b

    .line 2510
    return v6

    .line 2508
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2512
    :cond_1e
    return v7
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "a2"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2745
    if-ne p0, p1, :cond_5

    .line 2746
    return v5

    .line 2747
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2748
    :cond_9
    return v6

    .line 2750
    :cond_a
    array-length v1, p0

    .line 2751
    .local v1, "length":I
    array-length v4, p1

    if-eq v4, v1, :cond_f

    .line 2752
    return v6

    .line 2754
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_28

    .line 2755
    aget-object v2, p0, v0

    .line 2756
    .local v2, "o1":Ljava/lang/Object;
    aget-object v3, p1, v0

    .line 2757
    .local v3, "o2":Ljava/lang/Object;
    if-nez v2, :cond_20

    if-nez v3, :cond_1e

    move v4, v5

    :goto_1b
    if-nez v4, :cond_25

    .line 2758
    return v6

    :cond_1e
    move v4, v6

    .line 2757
    goto :goto_1b

    :cond_20
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1b

    .line 2754
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2761
    .end local v2    # "o1":Ljava/lang/Object;
    .end local v3    # "o2":Ljava/lang/Object;
    :cond_28
    return v5
.end method

.method public static equals([S[S)Z
    .registers 8
    .param p0, "a"    # [S
    .param p1, "a2"    # [S

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2557
    if-ne p0, p1, :cond_5

    .line 2558
    return v5

    .line 2559
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2560
    :cond_9
    return v4

    .line 2562
    :cond_a
    array-length v1, p0

    .line 2563
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2564
    return v4

    .line 2566
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1c

    .line 2567
    aget-short v2, p0, v0

    aget-short v3, p1, v0

    if-eq v2, v3, :cond_19

    .line 2568
    return v4

    .line 2566
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2570
    :cond_1c
    return v5
.end method

.method public static equals([Z[Z)Z
    .registers 8
    .param p0, "a"    # [Z
    .param p1, "a2"    # [Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2644
    if-ne p0, p1, :cond_5

    .line 2645
    return v5

    .line 2646
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 2647
    :cond_9
    return v4

    .line 2649
    :cond_a
    array-length v1, p0

    .line 2650
    .local v1, "length":I
    array-length v2, p1

    if-eq v2, v1, :cond_f

    .line 2651
    return v4

    .line 2653
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_1c

    .line 2654
    aget-boolean v2, p0, v0

    aget-boolean v3, p1, v0

    if-eq v2, v3, :cond_19

    .line 2655
    return v4

    .line 2653
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2657
    :cond_1c
    return v5
.end method

.method public static fill([BB)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .prologue
    .line 2914
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2915
    aput-byte p1, p0, v0

    .line 2914
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2916
    :cond_9
    return-void
.end method

.method public static fill([BIIB)V
    .registers 6
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    .prologue
    .line 2936
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2937
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2938
    aput-byte p3, p0, v0

    .line 2937
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2939
    :cond_c
    return-void
.end method

.method public static fill([CC)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .prologue
    .line 2879
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2880
    aput-char p1, p0, v0

    .line 2879
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2881
    :cond_9
    return-void
.end method

.method public static fill([CIIC)V
    .registers 6
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    .prologue
    .line 2901
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2902
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2903
    aput-char p3, p0, v0

    .line 2902
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2904
    :cond_c
    return-void
.end method

.method public static fill([DD)V
    .registers 6
    .param p0, "a"    # [D
    .param p1, "val"    # D

    .prologue
    .line 2985
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2986
    aput-wide p1, p0, v0

    .line 2985
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2987
    :cond_9
    return-void
.end method

.method public static fill([DIID)V
    .registers 8
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # D

    .prologue
    .line 3007
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3008
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3009
    aput-wide p3, p0, v0

    .line 3008
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3010
    :cond_c
    return-void
.end method

.method public static fill([FF)V
    .registers 4
    .param p0, "a"    # [F
    .param p1, "val"    # F

    .prologue
    .line 3020
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3021
    aput p1, p0, v0

    .line 3020
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3022
    :cond_9
    return-void
.end method

.method public static fill([FIIF)V
    .registers 6
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # F

    .prologue
    .line 3042
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3043
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3044
    aput p3, p0, v0

    .line 3043
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3045
    :cond_c
    return-void
.end method

.method public static fill([II)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .prologue
    .line 2809
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2810
    aput p1, p0, v0

    .line 2809
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2811
    :cond_9
    return-void
.end method

.method public static fill([IIII)V
    .registers 6
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    .prologue
    .line 2831
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2832
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2833
    aput p3, p0, v0

    .line 2832
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2834
    :cond_c
    return-void
.end method

.method public static fill([JIIJ)V
    .registers 8
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    .prologue
    .line 2796
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2797
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2798
    aput-wide p3, p0, v0

    .line 2797
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2799
    :cond_c
    return-void
.end method

.method public static fill([JJ)V
    .registers 6
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .prologue
    .line 2774
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2775
    aput-wide p1, p0, v0

    .line 2774
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2776
    :cond_9
    return-void
.end method

.method public static fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 3081
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 3082
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 3083
    aput-object p3, p0, v0

    .line 3082
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3084
    :cond_c
    return-void
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    .line 3057
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 3058
    aput-object p1, p0, v0

    .line 3057
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3059
    :cond_9
    return-void
.end method

.method public static fill([SIIS)V
    .registers 6
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    .prologue
    .line 2866
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2867
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2868
    aput-short p3, p0, v0

    .line 2867
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2869
    :cond_c
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .prologue
    .line 2844
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2845
    aput-short p1, p0, v0

    .line 2844
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2846
    :cond_9
    return-void
.end method

.method public static fill([ZIIZ)V
    .registers 6
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    .prologue
    .line 2972
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 2973
    move v0, p1

    .local v0, "i":I
    :goto_5
    if-ge v0, p2, :cond_c

    .line 2974
    aput-boolean p3, p0, v0

    .line 2973
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2975
    :cond_c
    return-void
.end method

.method public static fill([ZZ)V
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .prologue
    .line 2949
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "len":I
    :goto_2
    if-ge v0, v1, :cond_9

    .line 2950
    aput-boolean p1, p0, v0

    .line 2949
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2951
    :cond_9
    return-void
.end method

.method public static hashCode([B)I
    .registers 6
    .param p0, "a"    # [B

    .prologue
    const/4 v2, 0x0

    .line 3954
    if-nez p0, :cond_4

    .line 3955
    return v2

    .line 3957
    :cond_4
    const/4 v1, 0x1

    .line 3958
    .local v1, "result":I
    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_11

    aget-byte v0, p0, v2

    .line 3959
    .local v0, "element":B
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 3958
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3961
    .end local v0    # "element":B
    :cond_11
    return v1
.end method

.method public static hashCode([C)I
    .registers 6
    .param p0, "a"    # [C

    .prologue
    const/4 v2, 0x0

    .line 3927
    if-nez p0, :cond_4

    .line 3928
    return v2

    .line 3930
    :cond_4
    const/4 v1, 0x1

    .line 3931
    .local v1, "result":I
    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_11

    aget-char v0, p0, v2

    .line 3932
    .local v0, "element":C
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 3931
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3934
    .end local v0    # "element":C
    :cond_11
    return v1
.end method

.method public static hashCode([D)I
    .registers 11
    .param p0, "a"    # [D

    .prologue
    const/4 v5, 0x0

    .line 4035
    if-nez p0, :cond_4

    .line 4036
    return v5

    .line 4038
    :cond_4
    const/4 v4, 0x1

    .line 4039
    .local v4, "result":I
    array-length v6, p0

    :goto_6
    if-ge v5, v6, :cond_1b

    aget-wide v2, p0, v5

    .line 4040
    .local v2, "element":D
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 4041
    .local v0, "bits":J
    mul-int/lit8 v7, v4, 0x1f

    const/16 v8, 0x20

    ushr-long v8, v0, v8

    xor-long/2addr v8, v0

    long-to-int v8, v8

    add-int v4, v7, v8

    .line 4039
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 4043
    .end local v0    # "bits":J
    .end local v2    # "element":D
    :cond_1b
    return v4
.end method

.method public static hashCode([F)I
    .registers 7
    .param p0, "a"    # [F

    .prologue
    const/4 v2, 0x0

    .line 4008
    if-nez p0, :cond_4

    .line 4009
    return v2

    .line 4011
    :cond_4
    const/4 v1, 0x1

    .line 4012
    .local v1, "result":I
    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_15

    aget v0, p0, v2

    .line 4013
    .local v0, "element":F
    mul-int/lit8 v4, v1, 0x1f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    .line 4012
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4015
    .end local v0    # "element":F
    :cond_15
    return v1
.end method

.method public static hashCode([I)I
    .registers 6
    .param p0, "a"    # [I

    .prologue
    const/4 v2, 0x0

    .line 3873
    if-nez p0, :cond_4

    .line 3874
    return v2

    .line 3876
    :cond_4
    const/4 v1, 0x1

    .line 3877
    .local v1, "result":I
    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_11

    aget v0, p0, v2

    .line 3878
    .local v0, "element":I
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 3877
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3880
    .end local v0    # "element":I
    :cond_11
    return v1
.end method

.method public static hashCode([J)I
    .registers 9
    .param p0, "a"    # [J

    .prologue
    const/4 v4, 0x0

    .line 3844
    if-nez p0, :cond_4

    .line 3845
    return v4

    .line 3847
    :cond_4
    const/4 v3, 0x1

    .line 3848
    .local v3, "result":I
    array-length v5, p0

    :goto_6
    if-ge v4, v5, :cond_17

    aget-wide v0, p0, v4

    .line 3849
    .local v0, "element":J
    const/16 v6, 0x20

    ushr-long v6, v0, v6

    xor-long/2addr v6, v0

    long-to-int v2, v6

    .line 3850
    .local v2, "elementHash":I
    mul-int/lit8 v6, v3, 0x1f

    add-int v3, v6, v2

    .line 3848
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3853
    .end local v0    # "element":J
    .end local v2    # "elementHash":I
    :cond_17
    return v3
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 4068
    if-nez p0, :cond_4

    .line 4069
    return v3

    .line 4071
    :cond_4
    const/4 v1, 0x1

    .line 4073
    .local v1, "result":I
    array-length v5, p0

    move v4, v3

    :goto_7
    if-ge v4, v5, :cond_1b

    aget-object v0, p0, v4

    .line 4074
    .local v0, "element":Ljava/lang/Object;
    mul-int/lit8 v6, v1, 0x1f

    if-nez v0, :cond_16

    move v2, v3

    :goto_10
    add-int v1, v6, v2

    .line 4073
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_7

    .line 4074
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    .line 4076
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1b
    return v1
.end method

.method public static hashCode([S)I
    .registers 6
    .param p0, "a"    # [S

    .prologue
    const/4 v2, 0x0

    .line 3900
    if-nez p0, :cond_4

    .line 3901
    return v2

    .line 3903
    :cond_4
    const/4 v1, 0x1

    .line 3904
    .local v1, "result":I
    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_11

    aget-short v0, p0, v2

    .line 3905
    .local v0, "element":S
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v0

    .line 3904
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3907
    .end local v0    # "element":S
    :cond_11
    return v1
.end method

.method public static hashCode([Z)I
    .registers 7
    .param p0, "a"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 3981
    if-nez p0, :cond_4

    .line 3982
    return v2

    .line 3984
    :cond_4
    const/4 v1, 0x1

    .line 3985
    .local v1, "result":I
    array-length v4, p0

    move v3, v2

    :goto_7
    if-ge v3, v4, :cond_1a

    aget-boolean v0, p0, v3

    .line 3986
    .local v0, "element":Z
    mul-int/lit8 v5, v1, 0x1f

    if-eqz v0, :cond_17

    const/16 v2, 0x4cf

    :goto_11
    add-int v1, v5, v2

    .line 3985
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 3986
    :cond_17
    const/16 v2, 0x4d5

    goto :goto_11

    .line 3988
    .end local v0    # "element":Z
    :cond_1a
    return v1
.end method

.method static synthetic lambda$-java_util_Arrays_210087([Ljava/lang/Object;Ljava/util/function/IntFunction;I)V
    .registers 4
    .param p2, "i"    # I

    .prologue
    .line 4658
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-interface {p1, p2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic lambda$-java_util_Arrays_211644([ILjava/util/function/IntUnaryOperator;I)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;
    .param p2, "i"    # I

    .prologue
    .line 4696
    invoke-interface {p1, p2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    aput v0, p0, p2

    return-void
.end method

.method static synthetic lambda$-java_util_Arrays_213218([JLjava/util/function/IntToLongFunction;I)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;
    .param p2, "i"    # I

    .prologue
    .line 4734
    invoke-interface {p1, p2}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic lambda$-java_util_Arrays_214803([DLjava/util/function/IntToDoubleFunction;I)V
    .registers 5
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;
    .param p2, "i"    # I

    .prologue
    .line 4772
    invoke-interface {p1, p2}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method private static mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .registers 18
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "off"    # I

    .prologue
    .line 1336
    sub-int v5, p3, p2

    .line 1339
    .local v5, "length":I
    const/4 v11, 0x7

    if-ge v5, v11, :cond_27

    .line 1340
    move v3, p2

    .local v3, "i":I
    :goto_6
    move/from16 v0, p3

    if-ge v3, v0, :cond_26

    .line 1341
    move v4, v3

    .local v4, "j":I
    :goto_b
    if-le v4, p2, :cond_23

    .line 1342
    add-int/lit8 v11, v4, -0x1

    aget-object v11, p1, v11

    check-cast v11, Ljava/lang/Comparable;

    aget-object v12, p1, v4

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-lez v11, :cond_23

    .line 1343
    add-int/lit8 v11, v4, -0x1

    invoke-static {p1, v4, v11}, Ljava/util/Arrays;->swap([Ljava/lang/Object;II)V

    .line 1342
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 1340
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1344
    .end local v4    # "j":I
    :cond_26
    return-void

    .line 1348
    .end local v3    # "i":I
    :cond_27
    move v2, p2

    .line 1349
    .local v2, "destLow":I
    move/from16 v1, p3

    .line 1350
    .local v1, "destHigh":I
    add-int p2, p2, p4

    .line 1351
    add-int p3, p3, p4

    .line 1352
    add-int v11, p2, p3

    ushr-int/lit8 v6, v11, 0x1

    .line 1353
    .local v6, "mid":I
    move/from16 v0, p4

    neg-int v11, v0

    invoke-static {p1, p0, p2, v6, v11}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1354
    move/from16 v0, p4

    neg-int v11, v0

    move/from16 v0, p3

    invoke-static {p1, p0, v6, v0, v11}, Ljava/util/Arrays;->mergeSort([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 1358
    add-int/lit8 v11, v6, -0x1

    aget-object v11, p0, v11

    check-cast v11, Ljava/lang/Comparable;

    aget-object v12, p0, v6

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gtz v11, :cond_52

    .line 1359
    invoke-static {p0, p2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    return-void

    .line 1364
    :cond_52
    move v3, v2

    .restart local v3    # "i":I
    move v7, p2

    .local v7, "p":I
    move v9, v6

    .local v9, "q":I
    move v10, v9

    .end local v9    # "q":I
    .local v10, "q":I
    move v8, v7

    .end local v7    # "p":I
    .local v8, "p":I
    :goto_57
    if-ge v3, v1, :cond_7f

    .line 1365
    move/from16 v0, p3

    if-ge v10, v0, :cond_6b

    if-ge v8, v6, :cond_77

    aget-object v11, p0, v8

    check-cast v11, Ljava/lang/Comparable;

    aget-object v12, p0, v10

    invoke-interface {v11, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gtz v11, :cond_77

    .line 1366
    :cond_6b
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "p":I
    .restart local v7    # "p":I
    aget-object v11, p0, v8

    aput-object v11, p1, v3

    move v9, v10

    .line 1364
    .end local v10    # "q":I
    .restart local v9    # "q":I
    :goto_72
    add-int/lit8 v3, v3, 0x1

    move v10, v9

    .end local v9    # "q":I
    .restart local v10    # "q":I
    move v8, v7

    .end local v7    # "p":I
    .restart local v8    # "p":I
    goto :goto_57

    .line 1368
    :cond_77
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "q":I
    .restart local v9    # "q":I
    aget-object v11, p0, v10

    aput-object v11, p1, v3

    move v7, v8

    .end local v8    # "p":I
    .restart local v7    # "p":I
    goto :goto_72

    .line 1370
    .end local v7    # "p":I
    .end local v9    # "q":I
    .restart local v8    # "p":I
    .restart local v10    # "q":I
    :cond_7f
    return-void
.end method

.method public static parallelPrefix([DIILjava/util/function/DoubleBinaryOperator;)V
    .registers 10
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .prologue
    .line 1637
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1639
    if-ge p1, p2, :cond_16

    .line 1640
    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 1641
    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 1640
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    .line 1642
    :cond_16
    return-void
.end method

.method public static parallelPrefix([DLjava/util/function/DoubleBinaryOperator;)V
    .registers 8
    .param p0, "array"    # [D
    .param p1, "op"    # Ljava/util/function/DoubleBinaryOperator;

    .prologue
    const/4 v4, 0x0

    .line 1614
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    array-length v0, p0

    if-lez v0, :cond_13

    .line 1616
    new-instance v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 1617
    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 1616
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    .line 1618
    :cond_13
    return-void
.end method

.method public static parallelPrefix([IIILjava/util/function/IntBinaryOperator;)V
    .registers 10
    .param p0, "array"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    .line 1682
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1684
    if-ge p1, p2, :cond_16

    .line 1685
    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 1686
    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 1685
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    .line 1687
    :cond_16
    return-void
.end method

.method public static parallelPrefix([ILjava/util/function/IntBinaryOperator;)V
    .registers 8
    .param p0, "array"    # [I
    .param p1, "op"    # Ljava/util/function/IntBinaryOperator;

    .prologue
    const/4 v4, 0x0

    .line 1659
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    array-length v0, p0

    if-lez v0, :cond_13

    .line 1661
    new-instance v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 1662
    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 1661
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    .line 1663
    :cond_13
    return-void
.end method

.method public static parallelPrefix([JIILjava/util/function/LongBinaryOperator;)V
    .registers 10
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "op"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    .line 1589
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1591
    if-ge p1, p2, :cond_16

    .line 1592
    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .line 1593
    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 1592
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    .line 1594
    :cond_16
    return-void
.end method

.method public static parallelPrefix([JLjava/util/function/LongBinaryOperator;)V
    .registers 8
    .param p0, "array"    # [J
    .param p1, "op"    # Ljava/util/function/LongBinaryOperator;

    .prologue
    const/4 v4, 0x0

    .line 1566
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    array-length v0, p0

    if-lez v0, :cond_13

    .line 1568
    new-instance v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .line 1569
    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 1568
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    .line 1570
    :cond_13
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;IILjava/util/function/BinaryOperator;)V
    .registers 10
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1544
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p3, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1546
    if-ge p1, p2, :cond_16

    .line 1547
    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 1548
    const/4 v1, 0x0

    move-object v2, p3

    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 1547
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    .line 1549
    :cond_16
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/BinaryOperator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    const/4 v4, 0x0

    .line 1520
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    array-length v0, p0

    if-lez v0, :cond_13

    .line 1522
    new-instance v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 1523
    array-length v5, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 1522
    invoke-direct/range {v0 .. v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    .line 1524
    :cond_13
    return-void
.end method

.method public static parallelSetAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 5
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .prologue
    const/4 v2, 0x0

    .line 4771
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4772
    array-length v0, p0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;

    invoke-direct {v1, v2, p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4773
    return-void
.end method

.method public static parallelSetAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 5
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .prologue
    .line 4695
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4696
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4697
    return-void
.end method

.method public static parallelSetAll([JLjava/util/function/IntToLongFunction;)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .prologue
    .line 4733
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4734
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4735
    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4657
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4658
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Ljava/util/-$Lambda$aUGKT4ItCOku5-JSG-x8Aqj2pJw;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 4659
    return-void
.end method

.method public static parallelSort([B)V
    .registers 11
    .param p0, "a"    # [B

    .prologue
    const/16 v7, 0x2000

    const/4 v4, 0x0

    .line 480
    array-length v5, p0

    .line 481
    .local v5, "n":I
    if-le v5, v7, :cond_d

    .line 482
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_13

    .line 483
    .end local v9    # "p":I
    :cond_d
    add-int/lit8 v0, v5, -0x1

    invoke-static {p0, v4, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 489
    :goto_12
    return-void

    .line 485
    .restart local v9    # "p":I
    :cond_13
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    .line 486
    new-array v3, v5, [B

    .line 487
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    if-gt v8, v7, :cond_27

    .line 486
    :goto_1d
    const/4 v1, 0x0

    move-object v2, p0

    move v6, v4

    .line 485
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_12

    :cond_27
    move v7, v8

    .line 488
    goto :goto_1d
.end method

.method public static parallelSort([BII)V
    .registers 13
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/16 v7, 0x2000

    .line 519
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 520
    sub-int v5, p2, p1

    .line 521
    .local v5, "n":I
    if-le v5, v7, :cond_11

    .line 522
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_17

    .line 523
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 529
    :goto_16
    return-void

    .line 525
    .restart local v9    # "p":I
    :cond_17
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;

    .line 526
    new-array v3, v5, [B

    .line 527
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    if-gt v8, v7, :cond_2c

    .line 526
    :goto_21
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 525
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[B[BIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2c
    move v7, v8

    .line 528
    goto :goto_21
.end method

.method public static parallelSort([C)V
    .registers 13
    .param p0, "a"    # [C

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    .line 550
    array-length v7, p0

    .line 551
    .local v7, "n":I
    if-le v7, v9, :cond_e

    .line 552
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    .local v11, "p":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 553
    .end local v11    # "p":I
    :cond_e
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 559
    :goto_16
    return-void

    .line 555
    .restart local v11    # "p":I
    :cond_17
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    .line 556
    new-array v5, v7, [C

    .line 557
    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    .local v10, "g":I
    if-gt v10, v9, :cond_2b

    :goto_21
    move-object v4, p0

    move v6, v1

    move v8, v1

    .line 555
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    move v9, v10

    .line 558
    goto :goto_21
.end method

.method public static parallelSort([CII)V
    .registers 13
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 589
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 590
    sub-int v5, p2, p1

    .line 591
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 592
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1c

    .line 593
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 599
    .end local v5    # "n":I
    :goto_1b
    return-void

    .line 595
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1c
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;

    .line 596
    new-array v3, v5, [C

    .line 597
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    const/16 v1, 0x2000

    if-gt v8, v1, :cond_35

    .line 598
    const/16 v7, 0x2000

    .line 596
    :goto_2a
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 595
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1b

    :cond_35
    move v7, v8

    .line 598
    goto :goto_2a
.end method

.method public static parallelSort([D)V
    .registers 13
    .param p0, "a"    # [D

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    .line 924
    array-length v7, p0

    .line 925
    .local v7, "n":I
    if-le v7, v9, :cond_e

    .line 926
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    .local v11, "p":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 927
    .end local v11    # "p":I
    :cond_e
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 933
    :goto_16
    return-void

    .line 929
    .restart local v11    # "p":I
    :cond_17
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    .line 930
    new-array v5, v7, [D

    .line 931
    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    .local v10, "g":I
    if-gt v10, v9, :cond_2b

    :goto_21
    move-object v4, p0

    move v6, v1

    move v8, v1

    .line 929
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    move v9, v10

    .line 932
    goto :goto_21
.end method

.method public static parallelSort([DII)V
    .registers 13
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 971
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 972
    sub-int v5, p2, p1

    .line 973
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 974
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1c

    .line 975
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 981
    .end local v5    # "n":I
    :goto_1b
    return-void

    .line 977
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1c
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    .line 978
    new-array v3, v5, [D

    .line 979
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    const/16 v1, 0x2000

    if-gt v8, v1, :cond_35

    .line 980
    const/16 v7, 0x2000

    .line 978
    :goto_2a
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 977
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1b

    :cond_35
    move v7, v8

    .line 980
    goto :goto_2a
.end method

.method public static parallelSort([F)V
    .registers 13
    .param p0, "a"    # [F

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    .line 838
    array-length v7, p0

    .line 839
    .local v7, "n":I
    if-le v7, v9, :cond_e

    .line 840
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    .local v11, "p":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 841
    .end local v11    # "p":I
    :cond_e
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 847
    :goto_16
    return-void

    .line 843
    .restart local v11    # "p":I
    :cond_17
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    .line 844
    new-array v5, v7, [F

    .line 845
    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    .local v10, "g":I
    if-gt v10, v9, :cond_2b

    :goto_21
    move-object v4, p0

    move v6, v1

    move v8, v1

    .line 843
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    move v9, v10

    .line 846
    goto :goto_21
.end method

.method public static parallelSort([FII)V
    .registers 13
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 885
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 886
    sub-int v5, p2, p1

    .line 887
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 888
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1c

    .line 889
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 895
    .end local v5    # "n":I
    :goto_1b
    return-void

    .line 891
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1c
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    .line 892
    new-array v3, v5, [F

    .line 893
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    const/16 v1, 0x2000

    if-gt v8, v1, :cond_35

    .line 894
    const/16 v7, 0x2000

    .line 892
    :goto_2a
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 891
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1b

    :cond_35
    move v7, v8

    .line 894
    goto :goto_2a
.end method

.method public static parallelSort([I)V
    .registers 13
    .param p0, "a"    # [I

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    .line 690
    array-length v7, p0

    .line 691
    .local v7, "n":I
    if-le v7, v9, :cond_e

    .line 692
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    .local v11, "p":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 693
    .end local v11    # "p":I
    :cond_e
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 699
    :goto_16
    return-void

    .line 695
    .restart local v11    # "p":I
    :cond_17
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    .line 696
    new-array v5, v7, [I

    .line 697
    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    .local v10, "g":I
    if-gt v10, v9, :cond_2b

    :goto_21
    move-object v4, p0

    move v6, v1

    move v8, v1

    .line 695
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    move v9, v10

    .line 698
    goto :goto_21
.end method

.method public static parallelSort([III)V
    .registers 13
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 729
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 730
    sub-int v5, p2, p1

    .line 731
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 732
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1c

    .line 733
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 739
    .end local v5    # "n":I
    :goto_1b
    return-void

    .line 735
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1c
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;

    .line 736
    new-array v3, v5, [I

    .line 737
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    const/16 v1, 0x2000

    if-gt v8, v1, :cond_35

    .line 738
    const/16 v7, 0x2000

    .line 736
    :goto_2a
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 735
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1b

    :cond_35
    move v7, v8

    .line 738
    goto :goto_2a
.end method

.method public static parallelSort([J)V
    .registers 13
    .param p0, "a"    # [J

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    .line 760
    array-length v7, p0

    .line 761
    .local v7, "n":I
    if-le v7, v9, :cond_e

    .line 762
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    .local v11, "p":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 763
    .end local v11    # "p":I
    :cond_e
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 769
    :goto_16
    return-void

    .line 765
    .restart local v11    # "p":I
    :cond_17
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    .line 766
    new-array v5, v7, [J

    .line 767
    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    .local v10, "g":I
    if-gt v10, v9, :cond_2b

    :goto_21
    move-object v4, p0

    move v6, v1

    move v8, v1

    .line 765
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    move v9, v10

    .line 768
    goto :goto_21
.end method

.method public static parallelSort([JII)V
    .registers 13
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 799
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 800
    sub-int v5, p2, p1

    .line 801
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 802
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1c

    .line 803
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 809
    .end local v5    # "n":I
    :goto_1b
    return-void

    .line 805
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1c
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    .line 806
    new-array v3, v5, [J

    .line 807
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    const/16 v1, 0x2000

    if-gt v8, v1, :cond_35

    .line 808
    const/16 v7, 0x2000

    .line 806
    :goto_2a
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 805
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1b

    :cond_35
    move v7, v8

    .line 808
    goto :goto_2a
.end method

.method public static parallelSort([Ljava/lang/Comparable;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    const/4 v4, 0x0

    const/16 v10, 0x2000

    const/4 v1, 0x0

    .line 1019
    array-length v2, p0

    .line 1020
    .local v2, "n":I
    if-le v2, v10, :cond_e

    .line 1021
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v13

    .local v13, "p":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_17

    .line 1022
    .end local v13    # "p":I
    :cond_e
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v0, p0

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1029
    :goto_16
    return-void

    .line 1024
    .restart local v13    # "p":I
    :cond_17
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 1026
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Comparable;

    .line 1027
    shl-int/lit8 v0, v13, 0x2

    div-int v12, v2, v0

    .local v12, "g":I
    if-gt v12, v10, :cond_3a

    .line 1028
    :goto_2d
    sget-object v11, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    move-object v5, p0

    move v7, v1

    move v8, v2

    move v9, v1

    .line 1024
    invoke-direct/range {v3 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_3a
    move v10, v12

    .line 1028
    goto :goto_2d
.end method

.method public static parallelSort([Ljava/lang/Comparable;II)V
    .registers 14
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;II)V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p0, "a":[Ljava/lang/Comparable;, "[TT;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1078
    sub-int v5, p2, p1

    .line 1079
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 1080
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v10

    .local v10, "p":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_1d

    .line 1081
    .end local v10    # "p":I
    :cond_11
    sget-object v3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1088
    .end local v5    # "n":I
    :goto_1c
    return-void

    .line 1083
    .restart local v5    # "n":I
    .restart local v10    # "p":I
    :cond_1d
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 1085
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Comparable;

    .line 1086
    shl-int/lit8 v1, v10, 0x2

    div-int v9, v5, v1

    .local v9, "g":I
    const/16 v1, 0x2000

    if-gt v9, v1, :cond_44

    .line 1087
    const/16 v7, 0x2000

    :goto_37
    sget-object v8, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    .line 1084
    const/4 v1, 0x0

    .line 1086
    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 1083
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1c

    :cond_44
    move v7, v9

    .line 1087
    goto :goto_37
.end method

.method public static parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 15
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1186
    if-nez p3, :cond_8

    .line 1187
    sget-object p3, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    .line 1188
    :cond_8
    sub-int v5, p2, p1

    .line 1189
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_15

    .line 1190
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v10

    .local v10, "p":I
    const/4 v0, 0x1

    if-ne v10, v0, :cond_20

    .line 1191
    .end local v10    # "p":I
    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1198
    .end local v5    # "n":I
    :goto_1f
    return-void

    .line 1193
    .restart local v5    # "n":I
    .restart local v10    # "p":I
    :cond_20
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 1195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 1196
    shl-int/lit8 v1, v10, 0x2

    div-int v9, v5, v1

    .local v9, "g":I
    const/16 v1, 0x2000

    if-gt v9, v1, :cond_46

    .line 1197
    const/16 v7, 0x2000

    .line 1194
    :goto_3a
    const/4 v1, 0x0

    .line 1196
    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move-object v8, p3

    .line 1193
    invoke-direct/range {v0 .. v8}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1f

    :cond_46
    move v7, v9

    .line 1197
    goto :goto_3a
.end method

.method public static parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x0

    const/16 v10, 0x2000

    const/4 v1, 0x0

    .line 1125
    if-nez p1, :cond_8

    .line 1126
    sget-object p1, Ljava/util/Arrays$NaturalOrder;->INSTANCE:Ljava/util/Arrays$NaturalOrder;

    .line 1127
    :cond_8
    array-length v2, p0

    .line 1128
    .local v2, "n":I
    if-le v2, v10, :cond_12

    .line 1129
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v13

    .local v13, "p":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_1a

    .end local v13    # "p":I
    :cond_12
    move-object v0, p0

    move-object v3, p1

    move v5, v1

    move v6, v1

    .line 1130
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    .line 1137
    :goto_19
    return-void

    .line 1132
    .restart local v13    # "p":I
    :cond_1a
    new-instance v3, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;

    .line 1134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 1135
    shl-int/lit8 v0, v13, 0x2

    div-int v12, v2, v0

    .local v12, "g":I
    if-gt v12, v10, :cond_3c

    :goto_30
    move-object v5, p0

    move v7, v1

    move v8, v2

    move v9, v1

    move-object v11, p1

    .line 1132
    invoke-direct/range {v3 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_19

    :cond_3c
    move v10, v12

    .line 1136
    goto :goto_30
.end method

.method public static parallelSort([S)V
    .registers 13
    .param p0, "a"    # [S

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, 0x0

    .line 620
    array-length v7, p0

    .line 621
    .local v7, "n":I
    if-le v7, v9, :cond_e

    .line 622
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v11

    .local v11, "p":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_17

    .line 623
    .end local v11    # "p":I
    :cond_e
    add-int/lit8 v2, v7, -0x1

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 629
    :goto_16
    return-void

    .line 625
    .restart local v11    # "p":I
    :cond_17
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    .line 626
    new-array v5, v7, [S

    .line 627
    shl-int/lit8 v0, v11, 0x2

    div-int v10, v7, v0

    .local v10, "g":I
    if-gt v10, v9, :cond_2b

    :goto_21
    move-object v4, p0

    move v6, v1

    move v8, v1

    .line 625
    invoke-direct/range {v2 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_16

    :cond_2b
    move v9, v10

    .line 628
    goto :goto_21
.end method

.method public static parallelSort([SII)V
    .registers 13
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 659
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 660
    sub-int v5, p2, p1

    .line 661
    .local v5, "n":I
    const/16 v0, 0x2000

    if-le v5, v0, :cond_11

    .line 662
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v9

    .local v9, "p":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_1c

    .line 663
    .end local v9    # "p":I
    :cond_11
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 669
    .end local v5    # "n":I
    :goto_1b
    return-void

    .line 665
    .restart local v5    # "n":I
    .restart local v9    # "p":I
    :cond_1c
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;

    .line 666
    new-array v3, v5, [S

    .line 667
    shl-int/lit8 v1, v9, 0x2

    div-int v8, v5, v1

    .local v8, "g":I
    const/16 v1, 0x2000

    if-gt v8, v1, :cond_35

    .line 668
    const/16 v7, 0x2000

    .line 666
    :goto_2a
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    .line 665
    invoke-direct/range {v0 .. v7}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[S[SIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_1b

    :cond_35
    move v7, v8

    .line 668
    goto :goto_2a
.end method

.method private static rangeCheck(III)V
    .registers 6
    .param p0, "arrayLength"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 115
    if-le p1, p2, :cond_2e

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2e
    if-gez p1, :cond_36

    .line 120
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 122
    :cond_36
    if-le p2, p0, :cond_3e

    .line 123
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 125
    :cond_3e
    return-void
.end method

.method public static setAll([DLjava/util/function/IntToDoubleFunction;)V
    .registers 6
    .param p0, "array"    # [D
    .param p1, "generator"    # Ljava/util/function/IntToDoubleFunction;

    .prologue
    .line 4751
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4753
    invoke-interface {p1, v0}, Ljava/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 4752
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4754
    :cond_10
    return-void
.end method

.method public static setAll([ILjava/util/function/IntUnaryOperator;)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "generator"    # Ljava/util/function/IntUnaryOperator;

    .prologue
    .line 4675
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4676
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4677
    invoke-interface {p1, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    .line 4676
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4678
    :cond_10
    return-void
.end method

.method public static setAll([JLjava/util/function/IntToLongFunction;)V
    .registers 6
    .param p0, "array"    # [J
    .param p1, "generator"    # Ljava/util/function/IntToLongFunction;

    .prologue
    .line 4713
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4714
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4715
    invoke-interface {p1, v0}, Ljava/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 4714
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4716
    :cond_10
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4636
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4637
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 4638
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 4637
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4639
    :cond_10
    return-void
.end method

.method public static sort([B)V
    .registers 3
    .param p0, "a"    # [B

    .prologue
    .line 321
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 322
    return-void
.end method

.method public static sort([BII)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 345
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 346
    add-int/lit8 v0, p2, -0x1

    invoke-static {p0, p1, v0}, Ljava/util/DualPivotQuicksort;->sort([BII)V

    .line 347
    return-void
.end method

.method public static sort([C)V
    .registers 7
    .param p0, "a"    # [C

    .prologue
    const/4 v1, 0x0

    .line 281
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 282
    return-void
.end method

.method public static sort([CII)V
    .registers 9
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 305
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 306
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([CII[CII)V

    .line 307
    return-void
.end method

.method public static sort([D)V
    .registers 7
    .param p0, "a"    # [D

    .prologue
    const/4 v1, 0x0

    .line 425
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 426
    return-void
.end method

.method public static sort([DII)V
    .registers 9
    .param p0, "a"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 457
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 458
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([DII[DII)V

    .line 459
    return-void
.end method

.method public static sort([F)V
    .registers 7
    .param p0, "a"    # [F

    .prologue
    const/4 v1, 0x0

    .line 369
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 370
    return-void
.end method

.method public static sort([FII)V
    .registers 9
    .param p0, "a"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 401
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 402
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([FII[FII)V

    .line 403
    return-void
.end method

.method public static sort([I)V
    .registers 7
    .param p0, "a"    # [I

    .prologue
    const/4 v1, 0x0

    .line 161
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 162
    return-void
.end method

.method public static sort([III)V
    .registers 9
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 185
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 186
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([III[III)V

    .line 187
    return-void
.end method

.method public static sort([J)V
    .registers 7
    .param p0, "a"    # [J

    .prologue
    const/4 v1, 0x0

    .line 201
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 202
    return-void
.end method

.method public static sort([JII)V
    .registers 9
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 225
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 226
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 227
    return-void
.end method

.method public static sort([Ljava/lang/Object;)V
    .registers 7
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1251
    array-length v2, p0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    .line 1252
    return-void
.end method

.method public static sort([Ljava/lang/Object;II)V
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 1307
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 1312
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/ComparableTimSort;->sort([Ljava/lang/Object;II[Ljava/lang/Object;II)V

    .line 1313
    return-void
.end method

.method public static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 11
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1490
    if-nez p3, :cond_8

    .line 1491
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 1500
    :goto_7
    return-void

    .line 1493
    :cond_8
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v5

    .line 1498
    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    goto :goto_7
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1425
    if-nez p1, :cond_8

    .line 1426
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1434
    :goto_7
    return-void

    .line 1432
    :cond_8
    array-length v2, p0

    move-object v0, p0

    move-object v3, p1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Ljava/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    goto :goto_7
.end method

.method public static sort([S)V
    .registers 7
    .param p0, "a"    # [S

    .prologue
    const/4 v1, 0x0

    .line 241
    array-length v0, p0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 242
    return-void
.end method

.method public static sort([SII)V
    .registers 9
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 265
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->rangeCheck(III)V

    .line 266
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Ljava/util/DualPivotQuicksort;->sort([SII[SII)V

    .line 267
    return-void
.end method

.method public static spliterator([D)Ljava/util/Spliterator$OfDouble;
    .registers 2
    .param p0, "array"    # [D

    .prologue
    .line 4908
    const/16 v0, 0x410

    .line 4907
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([DI)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([DII)Ljava/util/Spliterator$OfDouble;
    .registers 4
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 4931
    const/16 v0, 0x410

    .line 4930
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([DIII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([I)Ljava/util/Spliterator$OfInt;
    .registers 2
    .param p0, "array"    # [I

    .prologue
    .line 4829
    const/16 v0, 0x410

    .line 4828
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([II)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([III)Ljava/util/Spliterator$OfInt;
    .registers 4
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 4852
    const/16 v0, 0x410

    .line 4851
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([IIII)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([J)Ljava/util/Spliterator$OfLong;
    .registers 2
    .param p0, "array"    # [J

    .prologue
    .line 4868
    const/16 v0, 0x410

    .line 4867
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([JI)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([JII)Ljava/util/Spliterator$OfLong;
    .registers 4
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 4891
    const/16 v0, 0x410

    .line 4890
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([JIII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4789
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    .line 4788
    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;
    .registers 4
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4813
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/16 v0, 0x410

    .line 4812
    invoke-static {p0, p1, p2, v0}, Ljava/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public static stream([D)Ljava/util/stream/DoubleStream;
    .registers 3
    .param p0, "array"    # [D

    .prologue
    .line 5035
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([DII)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([DII)Ljava/util/stream/DoubleStream;
    .registers 5
    .param p0, "array"    # [D
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 5053
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([I)Ljava/util/stream/IntStream;
    .registers 3
    .param p0, "array"    # [I

    .prologue
    .line 4975
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([III)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([III)Ljava/util/stream/IntStream;
    .registers 5
    .param p0, "array"    # [I
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 4993
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([J)Ljava/util/stream/LongStream;
    .registers 3
    .param p0, "array"    # [J

    .prologue
    .line 5005
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([JII)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([JII)Ljava/util/stream/LongStream;
    .registers 5
    .param p0, "array"    # [J
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I

    .prologue
    .line 5023
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4944
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream([Ljava/lang/Object;II)Ljava/util/stream/Stream;
    .registers 5
    .param p1, "startInclusive"    # I
    .param p2, "endExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava/util/stream/Stream",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4963
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static swap([Ljava/lang/Object;II)V
    .registers 5
    .param p0, "x"    # [Ljava/lang/Object;
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1376
    aget-object v0, p0, p1

    .line 1377
    .local v0, "t":Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 1378
    aput-object v0, p0, p2

    .line 1379
    return-void
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [B

    .prologue
    .line 4377
    if-nez p0, :cond_6

    .line 4378
    const-string/jumbo v3, "null"

    return-object v3

    .line 4379
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4380
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4381
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4383
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4384
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4385
    const/4 v1, 0x0

    .line 4386
    .local v1, "i":I
    :goto_1b
    aget-byte v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4387
    if-ne v1, v2, :cond_2d

    .line 4388
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4389
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4385
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([C)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [C

    .prologue
    .line 4347
    if-nez p0, :cond_6

    .line 4348
    const-string/jumbo v3, "null"

    return-object v3

    .line 4349
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4350
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4351
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4353
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4354
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4355
    const/4 v1, 0x0

    .line 4356
    .local v1, "i":I
    :goto_1b
    aget-char v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4357
    if-ne v1, v2, :cond_2d

    .line 4358
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4359
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([D)Ljava/lang/String;
    .registers 7
    .param p0, "a"    # [D

    .prologue
    .line 4468
    if-nez p0, :cond_6

    .line 4469
    const-string/jumbo v3, "null"

    return-object v3

    .line 4470
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4471
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4472
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4474
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4475
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4476
    const/4 v1, 0x0

    .line 4477
    .local v1, "i":I
    :goto_1b
    aget-wide v4, p0, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4478
    if-ne v1, v2, :cond_2d

    .line 4479
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4480
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4476
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([F)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [F

    .prologue
    .line 4437
    if-nez p0, :cond_6

    .line 4438
    const-string/jumbo v3, "null"

    return-object v3

    .line 4440
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4441
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4442
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4444
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4445
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4446
    const/4 v1, 0x0

    .line 4447
    .local v1, "i":I
    :goto_1b
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 4448
    if-ne v1, v2, :cond_2d

    .line 4449
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4450
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [I

    .prologue
    .line 4287
    if-nez p0, :cond_6

    .line 4288
    const-string/jumbo v3, "null"

    return-object v3

    .line 4289
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4290
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4291
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4293
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4294
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4295
    const/4 v1, 0x0

    .line 4296
    .local v1, "i":I
    :goto_1b
    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4297
    if-ne v1, v2, :cond_2d

    .line 4298
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4299
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4295
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([J)Ljava/lang/String;
    .registers 7
    .param p0, "a"    # [J

    .prologue
    .line 4257
    if-nez p0, :cond_6

    .line 4258
    const-string/jumbo v3, "null"

    return-object v3

    .line 4259
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4260
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4261
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4263
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4264
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4265
    const/4 v1, 0x0

    .line 4266
    .local v1, "i":I
    :goto_1b
    aget-wide v4, p0, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4267
    if-ne v1, v2, :cond_2d

    .line 4268
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4269
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4265
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Ljava/lang/Object;

    .prologue
    .line 4501
    if-nez p0, :cond_6

    .line 4502
    const-string/jumbo v3, "null"

    return-object v3

    .line 4504
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4505
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4506
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4508
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4509
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4510
    const/4 v1, 0x0

    .line 4511
    .local v1, "i":I
    :goto_1b
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    if-ne v1, v2, :cond_31

    .line 4513
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4514
    :cond_31
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4510
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([S)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [S

    .prologue
    .line 4317
    if-nez p0, :cond_6

    .line 4318
    const-string/jumbo v3, "null"

    return-object v3

    .line 4319
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4320
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4321
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4323
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4324
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4325
    const/4 v1, 0x0

    .line 4326
    .local v1, "i":I
    :goto_1b
    aget-short v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4327
    if-ne v1, v2, :cond_2d

    .line 4328
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4329
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4325
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method

.method public static toString([Z)Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Z

    .prologue
    .line 4407
    if-nez p0, :cond_6

    .line 4408
    const-string/jumbo v3, "null"

    return-object v3

    .line 4409
    :cond_6
    array-length v3, p0

    add-int/lit8 v2, v3, -0x1

    .line 4410
    .local v2, "iMax":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    .line 4411
    const-string/jumbo v3, "[]"

    return-object v3

    .line 4413
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4414
    .local v0, "b":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4415
    const/4 v1, 0x0

    .line 4416
    .local v1, "i":I
    :goto_1b
    aget-boolean v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4417
    if-ne v1, v2, :cond_2d

    .line 4418
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 4419
    :cond_2d
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b
.end method
