.class Ljava/math/MutableBigInteger;
.super Ljava/lang/Object;
.source "MutableBigInteger.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist KNUTH_POW2_THRESH_LEN:I = 0x6

.field static final blacklist KNUTH_POW2_THRESH_ZEROS:I = 0x3

.field static final blacklist ONE:Ljava/math/MutableBigInteger;


# instance fields
.field blacklist intLen:I

.field blacklist offset:I

.field blacklist value:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    nop

    .line 76
    new-instance v0, Ljava/math/MutableBigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    sput-object v0, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 103
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 104
    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 105
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "val"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 112
    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 113
    iput v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 114
    aput p1, v2, v0

    .line 115
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "b"    # Ljava/math/BigInteger;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 131
    iget-object v0, p1, Ljava/math/BigInteger;->mag:[I

    array-length v0, v0

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 132
    iget-object v0, p1, Ljava/math/BigInteger;->mag:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 133
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/MutableBigInteger;)V
    .registers 5
    .param p1, "val"    # Ljava/math/MutableBigInteger;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 140
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 141
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 142
    return-void
.end method

.method constructor blacklist <init>([I)V
    .registers 3
    .param p1, "val"    # [I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 122
    iput-object p1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 123
    array-length v0, p1

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 124
    return-void
.end method

.method private blacklist binaryGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 16
    .param p1, "v"    # Ljava/math/MutableBigInteger;

    .line 1895
    move-object v0, p0

    .line 1896
    .local v0, "u":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1899
    .local v1, "r":Ljava/math/MutableBigInteger;
    invoke-direct {v0}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v2

    .line 1900
    .local v2, "s1":I
    invoke-direct {p1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v3

    .line 1901
    .local v3, "s2":I
    if-ge v2, v3, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    .line 1902
    .local v4, "k":I
    :goto_13
    if-eqz v4, :cond_1b

    .line 1903
    invoke-virtual {v0, v4}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1904
    invoke-virtual {p1, v4}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1908
    :cond_1b
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v2, :cond_21

    move v7, v5

    goto :goto_22

    :cond_21
    move v7, v6

    .line 1909
    .local v7, "uOdd":Z
    :goto_22
    if-eqz v7, :cond_26

    move-object v8, p1

    goto :goto_27

    :cond_26
    move-object v8, v0

    .line 1910
    .local v8, "t":Ljava/math/MutableBigInteger;
    :goto_27
    if-eqz v7, :cond_2b

    const/4 v9, -0x1

    goto :goto_2c

    :cond_2b
    move v9, v5

    .line 1913
    .local v9, "tsign":I
    :goto_2c
    invoke-direct {v8}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v10

    move v11, v10

    .local v11, "lb":I
    if-ltz v10, :cond_71

    .line 1915
    invoke-virtual {v8, v11}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1917
    if-lez v9, :cond_3a

    .line 1918
    move-object v0, v8

    goto :goto_3b

    .line 1920
    :cond_3a
    move-object p1, v8

    .line 1923
    :goto_3b
    iget v10, v0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v12, 0x2

    if-ge v10, v12, :cond_62

    iget v10, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v10, v12, :cond_62

    .line 1924
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v10, v10, v12

    .line 1925
    .local v10, "x":I
    iget-object v12, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v13, p1, Ljava/math/MutableBigInteger;->offset:I

    aget v12, v12, v13

    .line 1926
    .local v12, "y":I
    invoke-static {v10, v12}, Ljava/math/MutableBigInteger;->binaryGcd(II)I

    move-result v10

    .line 1927
    iget-object v13, v1, Ljava/math/MutableBigInteger;->value:[I

    aput v10, v13, v6

    .line 1928
    iput v5, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1929
    iput v6, v1, Ljava/math/MutableBigInteger;->offset:I

    .line 1930
    if-lez v4, :cond_61

    .line 1931
    invoke-virtual {v1, v4}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1932
    :cond_61
    return-object v1

    .line 1936
    .end local v10    # "x":I
    .end local v12    # "y":I
    :cond_62
    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;->difference(Ljava/math/MutableBigInteger;)I

    move-result v10

    move v9, v10

    if-nez v10, :cond_6a

    .line 1937
    goto :goto_71

    .line 1938
    :cond_6a
    if-ltz v9, :cond_6e

    move-object v10, v0

    goto :goto_6f

    :cond_6e
    move-object v10, p1

    :goto_6f
    move-object v8, v10

    goto :goto_2c

    .line 1941
    :cond_71
    :goto_71
    if-lez v4, :cond_76

    .line 1942
    invoke-virtual {v0, v4}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1943
    :cond_76
    return-object v0
.end method

.method static blacklist binaryGcd(II)I
    .registers 7
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1950
    if-nez p1, :cond_3

    .line 1951
    return p0

    .line 1952
    :cond_3
    if-nez p0, :cond_6

    .line 1953
    return p1

    .line 1956
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 1957
    .local v0, "aZeros":I
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    .line 1958
    .local v1, "bZeros":I
    ushr-int/2addr p0, v0

    .line 1959
    ushr-int/2addr p1, v1

    .line 1961
    if-ge v0, v1, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    .line 1963
    .local v2, "t":I
    :goto_15
    if-eq p0, p1, :cond_2c

    .line 1964
    const/high16 v3, -0x80000000

    add-int v4, p0, v3

    add-int/2addr v3, p1

    if-le v4, v3, :cond_25

    .line 1965
    sub-int/2addr p0, p1

    .line 1966
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    ushr-int/2addr p0, v3

    goto :goto_15

    .line 1968
    :cond_25
    sub-int/2addr p1, p0

    .line 1969
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    ushr-int/2addr p1, v3

    goto :goto_15

    .line 1972
    :cond_2c
    shl-int v3, p0, v2

    return v3
.end method

.method private blacklist compareShifted(Ljava/math/MutableBigInteger;I)I
    .registers 13
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "ints"    # I

    .line 285
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 286
    .local v0, "blen":I
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v1, p2

    .line 287
    .local v1, "alen":I
    const/4 v2, -0x1

    if-ge v1, v0, :cond_9

    .line 288
    return v2

    .line 289
    :cond_9
    const/4 v3, 0x1

    if-le v1, v0, :cond_d

    .line 290
    return v3

    .line 294
    :cond_d
    iget-object v4, p1, Ljava/math/MutableBigInteger;->value:[I

    .line 295
    .local v4, "bval":[I
    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    .local v5, "i":I
    iget v6, p1, Ljava/math/MutableBigInteger;->offset:I

    .local v6, "j":I
    :goto_13
    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v1

    if-ge v5, v7, :cond_2d

    .line 296
    iget-object v7, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v7, v7, v5

    const/high16 v8, -0x80000000

    add-int/2addr v7, v8

    .line 297
    .local v7, "b1":I
    aget v9, v4, v6

    add-int/2addr v9, v8

    .line 298
    .local v9, "b2":I
    if-ge v7, v9, :cond_25

    .line 299
    return v2

    .line 300
    :cond_25
    if-le v7, v9, :cond_28

    .line 301
    return v3

    .line 295
    .end local v7    # "b1":I
    .end local v9    # "b2":I
    :cond_28
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 303
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist copyAndShift([III[III)V
    .registers 13
    .param p0, "src"    # [I
    .param p1, "srcFrom"    # I
    .param p2, "srcLen"    # I
    .param p3, "dst"    # [I
    .param p4, "dstFrom"    # I
    .param p5, "shift"    # I

    .line 1461
    rsub-int/lit8 v0, p5, 0x20

    .line 1462
    .local v0, "n2":I
    aget v1, p0, p1

    .line 1463
    .local v1, "c":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_1a

    .line 1464
    move v3, v1

    .line 1465
    .local v3, "b":I
    add-int/lit8 p1, p1, 0x1

    aget v1, p0, p1

    .line 1466
    add-int v4, p4, v2

    shl-int v5, v3, p5

    ushr-int v6, v1, v0

    or-int/2addr v5, v6

    aput v5, p3, v4

    .line 1463
    .end local v3    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1468
    .end local v2    # "i":I
    :cond_1a
    add-int v2, p4, p2

    add-int/lit8 v2, v2, -0x1

    shl-int v3, v1, p5

    aput v3, p3, v2

    .line 1469
    return-void
.end method

.method private blacklist difference(Ljava/math/MutableBigInteger;)I
    .registers 18
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 966
    move-object/from16 v0, p0

    .line 967
    .local v0, "a":Ljava/math/MutableBigInteger;
    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v2

    .line 968
    .local v2, "sign":I
    if-nez v2, :cond_c

    .line 969
    const/4 v3, 0x0

    return v3

    .line 970
    :cond_c
    if-gez v2, :cond_12

    .line 971
    move-object v3, v0

    .line 972
    .local v3, "tmp":Ljava/math/MutableBigInteger;
    move-object/from16 v0, p1

    .line 973
    move-object v1, v3

    .line 976
    .end local v3    # "tmp":Ljava/math/MutableBigInteger;
    .end local p1    # "b":Ljava/math/MutableBigInteger;
    .local v1, "b":Ljava/math/MutableBigInteger;
    :cond_12
    const-wide/16 v3, 0x0

    .line 977
    .local v3, "diff":J
    iget v5, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 978
    .local v5, "x":I
    iget v6, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 981
    .local v6, "y":I
    :goto_18
    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    if-lez v6, :cond_45

    .line 982
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 983
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int v12, v11, v5

    aget v12, v10, v12

    int-to-long v12, v12

    and-long/2addr v12, v8

    iget-object v14, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v15, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v15, v6

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v8, v14

    sub-long/2addr v12, v8

    shr-long v7, v3, v7

    neg-long v7, v7

    long-to-int v7, v7

    int-to-long v7, v7

    sub-long v3, v12, v7

    .line 985
    add-int/2addr v11, v5

    long-to-int v7, v3

    aput v7, v10, v11

    goto :goto_18

    .line 988
    :cond_45
    :goto_45
    if-lez v5, :cond_5f

    .line 989
    add-int/lit8 v5, v5, -0x1

    .line 990
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int v12, v11, v5

    aget v12, v10, v12

    int-to-long v12, v12

    and-long/2addr v12, v8

    shr-long v14, v3, v7

    neg-long v14, v14

    long-to-int v14, v14

    int-to-long v14, v14

    sub-long v3, v12, v14

    .line 991
    add-int/2addr v11, v5

    long-to-int v12, v3

    aput v12, v10, v11

    goto :goto_45

    .line 994
    :cond_5f
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 995
    return v2
.end method

.method static blacklist divWord(JI)J
    .registers 20
    .param p0, "n"    # J
    .param p2, "d"    # I

    .line 1843
    move-wide/from16 v0, p0

    move/from16 v2, p2

    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 1846
    .local v3, "dLong":J
    const-wide/16 v7, 0x1

    cmp-long v9, v3, v7

    const/16 v10, 0x20

    if-nez v9, :cond_1c

    .line 1847
    long-to-int v7, v0

    int-to-long v7, v7

    .line 1848
    .local v7, "q":J
    const-wide/16 v11, 0x0

    .line 1849
    .local v11, "r":J
    shl-long v9, v11, v10

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    return-wide v5

    .line 1853
    .end local v7    # "q":J
    .end local v11    # "r":J
    :cond_1c
    const/4 v9, 0x1

    ushr-long v11, v0, v9

    ushr-long v13, v3, v9

    div-long/2addr v11, v13

    .line 1854
    .local v11, "q":J
    mul-long v13, v11, v3

    sub-long v13, v0, v13

    .line 1857
    .local v13, "r":J
    :goto_26
    const-wide/16 v15, 0x0

    cmp-long v9, v13, v15

    if-gez v9, :cond_2f

    .line 1858
    add-long/2addr v13, v3

    .line 1859
    sub-long/2addr v11, v7

    goto :goto_26

    .line 1861
    :cond_2f
    :goto_2f
    cmp-long v9, v13, v3

    if-ltz v9, :cond_36

    .line 1862
    sub-long/2addr v13, v3

    .line 1863
    add-long/2addr v11, v7

    goto :goto_2f

    .line 1866
    :cond_36
    shl-long v7, v13, v10

    and-long/2addr v5, v11

    or-long/2addr v5, v7

    return-wide v5
.end method

.method private blacklist divadd([I[II)I
    .registers 13
    .param p1, "a"    # [I
    .param p2, "result"    # [I
    .param p3, "offset"    # I

    .line 621
    const-wide/16 v0, 0x0

    .line 623
    .local v0, "carry":J
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_5
    if-ltz v2, :cond_24

    .line 624
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, v2, p3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    .line 626
    .local v3, "sum":J
    add-int v5, v2, p3

    long-to-int v6, v3

    aput v6, p2, v5

    .line 627
    const/16 v5, 0x20

    ushr-long v0, v3, v5

    .line 623
    .end local v3    # "sum":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 629
    .end local v2    # "j":I
    :cond_24
    long-to-int v2, v0

    return v2
.end method

.method private blacklist divaddLong(II[II)I
    .registers 15
    .param p1, "dh"    # I
    .param p2, "dl"    # I
    .param p3, "result"    # [I
    .param p4, "offset"    # I

    .line 1793
    const-wide/16 v0, 0x0

    .line 1795
    .local v0, "carry":J
    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    .line 1796
    .local v2, "sum":J
    add-int/lit8 v6, p4, 0x1

    long-to-int v7, v2

    aput v7, p3, v6

    .line 1798
    int-to-long v6, p1

    and-long/2addr v6, v4

    aget v8, p3, p4

    int-to-long v8, v8

    and-long/2addr v4, v8

    add-long/2addr v6, v4

    add-long/2addr v6, v0

    .line 1799
    .end local v2    # "sum":J
    .local v6, "sum":J
    long-to-int v2, v6

    aput v2, p3, p4

    .line 1800
    const/16 v2, 0x20

    ushr-long v0, v6, v2

    .line 1801
    long-to-int v2, v0

    return v2
.end method

.method private blacklist divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 9
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1312
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1315
    .local v0, "n":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_34

    const/16 v1, 0x50

    if-ge v0, v1, :cond_b

    goto :goto_34

    .line 1320
    :cond_b
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1321
    .local v1, "aUpper":Ljava/math/MutableBigInteger;
    div-int/lit8 v2, v0, 0x2

    mul-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->safeRightShift(I)V

    .line 1322
    div-int/lit8 v2, v0, 0x2

    invoke-direct {p0, v2}, Ljava/math/MutableBigInteger;->keepLower(I)V

    .line 1325
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1326
    .local v2, "q1":Ljava/math/MutableBigInteger;
    invoke-direct {v1, p1, v2}, Ljava/math/MutableBigInteger;->divide3n2n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 1329
    .local v3, "r1":Ljava/math/MutableBigInteger;
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1330
    invoke-direct {p0, p1, p2}, Ljava/math/MutableBigInteger;->divide3n2n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 1333
    .local v4, "r2":Ljava/math/MutableBigInteger;
    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p2, v2, v5}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1334
    return-object v4

    .line 1316
    .end local v1    # "aUpper":Ljava/math/MutableBigInteger;
    .end local v2    # "q1":Ljava/math/MutableBigInteger;
    .end local v3    # "r1":Ljava/math/MutableBigInteger;
    .end local v4    # "r2":Ljava/math/MutableBigInteger;
    :cond_34
    :goto_34
    invoke-virtual {p0, p1, p2}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    return-object v1
.end method

.method private blacklist divide3n2n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 10
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1347
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    div-int/lit8 v0, v0, 0x2

    .line 1350
    .local v0, "n":I
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1351
    .local v1, "a12":Ljava/math/MutableBigInteger;
    mul-int/lit8 v2, v0, 0x20

    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->safeRightShift(I)V

    .line 1354
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1355
    .local v2, "b1":Ljava/math/MutableBigInteger;
    mul-int/lit8 v3, v0, 0x20

    invoke-virtual {v2, v3}, Ljava/math/MutableBigInteger;->safeRightShift(I)V

    .line 1356
    invoke-direct {p1, v0}, Ljava/math/MutableBigInteger;->getLower(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 1360
    .local v3, "b2":Ljava/math/BigInteger;
    invoke-direct {p0, p1, v0}, Ljava/math/MutableBigInteger;->compareShifted(Ljava/math/MutableBigInteger;I)I

    move-result v4

    if-gez v4, :cond_34

    .line 1362
    invoke-direct {v1, v2, p2}, Ljava/math/MutableBigInteger;->divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 1365
    .local v4, "r":Ljava/math/MutableBigInteger;
    new-instance v5, Ljava/math/MutableBigInteger;

    invoke-virtual {p2}, Ljava/math/MutableBigInteger;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .local v5, "d":Ljava/math/MutableBigInteger;
    goto :goto_55

    .line 1368
    .end local v4    # "r":Ljava/math/MutableBigInteger;
    .end local v5    # "d":Ljava/math/MutableBigInteger;
    :cond_34
    invoke-direct {p2, v0}, Ljava/math/MutableBigInteger;->ones(I)V

    .line 1369
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1370
    mul-int/lit8 v4, v0, 0x20

    invoke-virtual {v2, v4}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1371
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 1372
    move-object v4, v1

    .line 1375
    .restart local v4    # "r":Ljava/math/MutableBigInteger;
    new-instance v5, Ljava/math/MutableBigInteger;

    invoke-direct {v5, v3}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    .line 1376
    .restart local v5    # "d":Ljava/math/MutableBigInteger;
    mul-int/lit8 v6, v0, 0x20

    invoke-virtual {v5, v6}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1377
    new-instance v6, Ljava/math/MutableBigInteger;

    invoke-direct {v6, v3}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v6}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 1382
    :goto_55
    mul-int/lit8 v6, v0, 0x20

    invoke-virtual {v4, v6}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1383
    invoke-virtual {v4, p0, v0}, Ljava/math/MutableBigInteger;->addLower(Ljava/math/MutableBigInteger;I)V

    .line 1386
    :goto_5d
    invoke-virtual {v4, v5}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v6

    if-gez v6, :cond_6c

    .line 1387
    invoke-virtual {v4, p1}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1388
    sget-object v6, Ljava/math/MutableBigInteger;->ONE:Ljava/math/MutableBigInteger;

    invoke-virtual {p2, v6}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    goto :goto_5d

    .line 1390
    :cond_6c
    invoke-virtual {v4, v5}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 1392
    return-object v4
.end method

.method private blacklist divideLongMagnitude(JLjava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 33
    .param p1, "ldivisor"    # J
    .param p3, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1683
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    new-instance v0, Ljava/math/MutableBigInteger;

    iget v1, v6, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v8, 0x1

    add-int/2addr v1, v8

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v9, v0

    .line 1684
    .local v9, "rem":Ljava/math/MutableBigInteger;
    iget-object v0, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v1, v6, Ljava/math/MutableBigInteger;->offset:I

    iget-object v2, v9, Ljava/math/MutableBigInteger;->value:[I

    iget v3, v6, Ljava/math/MutableBigInteger;->intLen:I

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    iget v0, v6, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, v9, Ljava/math/MutableBigInteger;->intLen:I

    .line 1686
    iput v8, v9, Ljava/math/MutableBigInteger;->offset:I

    .line 1688
    iget v10, v9, Ljava/math/MutableBigInteger;->intLen:I

    .line 1690
    .local v10, "nlen":I
    add-int/lit8 v0, v10, -0x2

    add-int/lit8 v11, v0, 0x1

    .line 1691
    .local v11, "limit":I
    iget-object v0, v7, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    const/4 v12, 0x0

    if-ge v0, v11, :cond_33

    .line 1692
    new-array v0, v11, [I

    iput-object v0, v7, Ljava/math/MutableBigInteger;->value:[I

    .line 1693
    iput v12, v7, Ljava/math/MutableBigInteger;->offset:I

    .line 1695
    :cond_33
    iput v11, v7, Ljava/math/MutableBigInteger;->intLen:I

    .line 1696
    iget-object v13, v7, Ljava/math/MutableBigInteger;->value:[I

    .line 1699
    .local v13, "q":[I
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v14

    .line 1700
    .local v14, "shift":I
    if-lez v14, :cond_44

    .line 1701
    shl-long v0, p1, v14

    .line 1702
    .end local p1    # "ldivisor":J
    .local v0, "ldivisor":J
    invoke-virtual {v9, v14}, Ljava/math/MutableBigInteger;->leftShift(I)V

    move-wide v15, v0

    goto :goto_46

    .line 1700
    .end local v0    # "ldivisor":J
    .restart local p1    # "ldivisor":J
    :cond_44
    move-wide/from16 v15, p1

    .line 1706
    .end local p1    # "ldivisor":J
    .local v15, "ldivisor":J
    :goto_46
    iget v0, v9, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v0, v10, :cond_53

    .line 1707
    iput v12, v9, Ljava/math/MutableBigInteger;->offset:I

    .line 1708
    iget-object v1, v9, Ljava/math/MutableBigInteger;->value:[I

    aput v12, v1, v12

    .line 1709
    add-int/2addr v0, v8

    iput v0, v9, Ljava/math/MutableBigInteger;->intLen:I

    .line 1712
    :cond_53
    const/16 v17, 0x20

    ushr-long v0, v15, v17

    long-to-int v5, v0

    .line 1713
    .local v5, "dh":I
    int-to-long v0, v5

    const-wide v18, 0xffffffffL

    and-long v20, v0, v18

    .line 1714
    .local v20, "dhLong":J
    and-long v0, v15, v18

    long-to-int v4, v0

    .line 1717
    .local v4, "dl":I
    const/4 v0, 0x0

    move v3, v0

    .local v3, "j":I
    :goto_65
    if-ge v3, v11, :cond_16a

    .line 1720
    const/4 v0, 0x0

    .line 1721
    .local v0, "qhat":I
    const/4 v1, 0x0

    .line 1722
    .local v1, "qrem":I
    const/4 v2, 0x0

    .line 1723
    .local v2, "skipCorrection":Z
    iget-object v8, v9, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int v22, v3, v12

    aget v7, v8, v22

    .line 1724
    .local v7, "nh":I
    const/high16 v22, -0x80000000

    move/from16 v23, v10

    .end local v10    # "nlen":I
    .local v23, "nlen":I
    add-int v10, v7, v22

    .line 1725
    .local v10, "nh2":I
    add-int/lit8 v24, v3, 0x1

    add-int v24, v24, v12

    aget v8, v8, v24

    .line 1727
    .local v8, "nm":I
    if-ne v7, v5, :cond_92

    .line 1728
    const/4 v0, -0x1

    .line 1729
    add-int v1, v7, v8

    .line 1730
    add-int v12, v1, v22

    if-ge v12, v10, :cond_89

    const/4 v12, 0x1

    goto :goto_8a

    :cond_89
    const/4 v12, 0x0

    :goto_8a
    move v2, v12

    move v12, v7

    move/from16 v25, v8

    move/from16 v24, v11

    move v7, v2

    goto :goto_c7

    .line 1732
    :cond_92
    move/from16 p1, v0

    move/from16 p2, v1

    .end local v0    # "qhat":I
    .end local v1    # "qrem":I
    .local p1, "qhat":I
    .local p2, "qrem":I
    int-to-long v0, v7

    shl-long v0, v0, v17

    move/from16 v24, v11

    .end local v11    # "limit":I
    .local v24, "limit":I
    int-to-long v11, v8

    and-long v11, v11, v18

    or-long/2addr v0, v11

    .line 1733
    .local v0, "nChunk":J
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-ltz v11, :cond_b5

    .line 1734
    div-long v11, v0, v20

    long-to-int v11, v11

    .line 1735
    .end local p1    # "qhat":I
    .local v11, "qhat":I
    move v12, v7

    move/from16 v25, v8

    .end local v7    # "nh":I
    .end local v8    # "nm":I
    .local v12, "nh":I
    .local v25, "nm":I
    int-to-long v7, v11

    mul-long v7, v7, v20

    sub-long v7, v0, v7

    long-to-int v7, v7

    move v1, v7

    move v0, v11

    move v7, v2

    .end local p2    # "qrem":I
    .local v7, "qrem":I
    goto :goto_c7

    .line 1737
    .end local v11    # "qhat":I
    .end local v12    # "nh":I
    .end local v25    # "nm":I
    .local v7, "nh":I
    .restart local v8    # "nm":I
    .restart local p1    # "qhat":I
    .restart local p2    # "qrem":I
    :cond_b5
    move v12, v7

    move/from16 v25, v8

    .end local v7    # "nh":I
    .end local v8    # "nm":I
    .restart local v12    # "nh":I
    .restart local v25    # "nm":I
    invoke-static {v0, v1, v5}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v7

    .line 1738
    .local v7, "tmp":J
    move-wide/from16 v26, v0

    .end local v0    # "nChunk":J
    .local v26, "nChunk":J
    and-long v0, v7, v18

    long-to-int v0, v0

    .line 1739
    .end local p1    # "qhat":I
    .local v0, "qhat":I
    move v11, v0

    .end local v0    # "qhat":I
    .restart local v11    # "qhat":I
    ushr-long v0, v7, v17

    long-to-int v1, v0

    move v7, v2

    move v0, v11

    .line 1743
    .end local v2    # "skipCorrection":Z
    .end local v11    # "qhat":I
    .end local v26    # "nChunk":J
    .end local p2    # "qrem":I
    .restart local v0    # "qhat":I
    .restart local v1    # "qrem":I
    .local v7, "skipCorrection":Z
    :goto_c7
    if-nez v0, :cond_d2

    .line 1744
    move v11, v5

    move/from16 v26, v14

    move-wide/from16 v27, v15

    move v14, v3

    move v15, v4

    goto/16 :goto_158

    .line 1746
    :cond_d2
    if-nez v7, :cond_121

    .line 1747
    iget-object v2, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v8, v3, 0x2

    iget v11, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v8, v11

    aget v2, v2, v8

    move/from16 p1, v7

    .end local v7    # "skipCorrection":Z
    .local p1, "skipCorrection":Z
    int-to-long v7, v2

    and-long v7, v7, v18

    .line 1748
    .local v7, "nl":J
    move/from16 p2, v12

    .end local v12    # "nh":I
    .local p2, "nh":I
    int-to-long v11, v1

    and-long v11, v11, v18

    shl-long v11, v11, v17

    or-long/2addr v11, v7

    .line 1749
    .local v11, "rs":J
    move/from16 v26, v14

    move-wide/from16 v27, v15

    .end local v14    # "shift":I
    .end local v15    # "ldivisor":J
    .local v26, "shift":I
    .local v27, "ldivisor":J
    int-to-long v14, v4

    and-long v14, v14, v18

    move/from16 v16, v3

    .end local v3    # "j":I
    .local v16, "j":I
    int-to-long v2, v0

    and-long v2, v2, v18

    mul-long/2addr v14, v2

    .line 1751
    .local v14, "estProduct":J
    invoke-direct {v6, v14, v15, v11, v12}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 1752
    add-int/lit8 v0, v0, -0x1

    .line 1753
    int-to-long v2, v1

    and-long v2, v2, v18

    add-long v2, v2, v20

    long-to-int v1, v2

    .line 1754
    int-to-long v2, v1

    and-long v2, v2, v18

    cmp-long v2, v2, v20

    if-ltz v2, :cond_12b

    .line 1755
    int-to-long v2, v4

    and-long v2, v2, v18

    sub-long/2addr v14, v2

    .line 1756
    int-to-long v2, v1

    and-long v2, v2, v18

    shl-long v2, v2, v17

    or-long/2addr v2, v7

    .line 1757
    .end local v11    # "rs":J
    .local v2, "rs":J
    invoke-direct {v6, v14, v15, v2, v3}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v11

    if-eqz v11, :cond_12b

    .line 1758
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v8, v1

    goto :goto_12d

    .line 1746
    .end local v2    # "rs":J
    .end local v16    # "j":I
    .end local v26    # "shift":I
    .end local v27    # "ldivisor":J
    .end local p1    # "skipCorrection":Z
    .end local p2    # "nh":I
    .restart local v3    # "j":I
    .local v7, "skipCorrection":Z
    .restart local v12    # "nh":I
    .local v14, "shift":I
    .restart local v15    # "ldivisor":J
    :cond_121
    move/from16 p1, v7

    move/from16 p2, v12

    move/from16 v26, v14

    move-wide/from16 v27, v15

    move/from16 v16, v3

    .line 1764
    .end local v3    # "j":I
    .end local v7    # "skipCorrection":Z
    .end local v12    # "nh":I
    .end local v14    # "shift":I
    .end local v15    # "ldivisor":J
    .restart local v16    # "j":I
    .restart local v26    # "shift":I
    .restart local v27    # "ldivisor":J
    .restart local p1    # "skipCorrection":Z
    .restart local p2    # "nh":I
    :cond_12b
    move v7, v0

    move v8, v1

    .end local v0    # "qhat":I
    .end local v1    # "qrem":I
    .local v7, "qhat":I
    .local v8, "qrem":I
    :goto_12d
    iget-object v1, v9, Ljava/math/MutableBigInteger;->value:[I

    iget v0, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int v3, v16, v0

    const/4 v11, 0x0

    aput v11, v1, v3

    .line 1765
    add-int v12, v16, v0

    move-object/from16 v0, p0

    move v2, v5

    move/from16 v14, v16

    .end local v16    # "j":I
    .local v14, "j":I
    move v3, v4

    move v15, v4

    .end local v4    # "dl":I
    .local v15, "dl":I
    move v4, v7

    move v11, v5

    .end local v5    # "dh":I
    .local v11, "dh":I
    move v5, v12

    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsubLong([IIIII)I

    move-result v0

    .line 1768
    .local v0, "borrow":I
    add-int v1, v0, v22

    if-le v1, v10, :cond_156

    .line 1770
    iget-object v1, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v3, v14, 0x1

    iget v2, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v2

    invoke-direct {v6, v11, v15, v1, v3}, Ljava/math/MutableBigInteger;->divaddLong(II[II)I

    .line 1771
    add-int/lit8 v7, v7, -0x1

    .line 1775
    :cond_156
    aput v7, v13, v14

    .line 1717
    .end local v0    # "borrow":I
    .end local v7    # "qhat":I
    .end local v8    # "qrem":I
    .end local v10    # "nh2":I
    .end local v25    # "nm":I
    .end local p1    # "skipCorrection":Z
    .end local p2    # "nh":I
    :goto_158
    add-int/lit8 v3, v14, 0x1

    move-object/from16 v7, p3

    move v5, v11

    move v4, v15

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v14, v26

    move-wide/from16 v15, v27

    const/4 v8, 0x1

    const/4 v12, 0x0

    .end local v14    # "j":I
    .restart local v3    # "j":I
    goto/16 :goto_65

    .end local v23    # "nlen":I
    .end local v24    # "limit":I
    .end local v26    # "shift":I
    .end local v27    # "ldivisor":J
    .restart local v4    # "dl":I
    .restart local v5    # "dh":I
    .local v10, "nlen":I
    .local v11, "limit":I
    .local v14, "shift":I
    .local v15, "ldivisor":J
    :cond_16a
    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v26, v14

    move-wide/from16 v27, v15

    move v14, v3

    move v15, v4

    move v11, v5

    .line 1779
    .end local v3    # "j":I
    .end local v4    # "dl":I
    .end local v5    # "dh":I
    .end local v10    # "nlen":I
    .end local v14    # "shift":I
    .local v11, "dh":I
    .local v15, "dl":I
    .restart local v23    # "nlen":I
    .restart local v24    # "limit":I
    .restart local v26    # "shift":I
    .restart local v27    # "ldivisor":J
    if-lez v26, :cond_17d

    .line 1780
    move/from16 v0, v26

    .end local v26    # "shift":I
    .local v0, "shift":I
    invoke-virtual {v9, v0}, Ljava/math/MutableBigInteger;->rightShift(I)V

    goto :goto_17f

    .line 1779
    .end local v0    # "shift":I
    .restart local v26    # "shift":I
    :cond_17d
    move/from16 v0, v26

    .line 1782
    .end local v26    # "shift":I
    .restart local v0    # "shift":I
    :goto_17f
    invoke-virtual/range {p3 .. p3}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1783
    invoke-virtual {v9}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1784
    return-object v9
.end method

.method private blacklist divideMagnitude(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;
    .registers 40
    .param p1, "div"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;
    .param p3, "needRemainder"    # Z

    .line 1481
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v7, Ljava/math/MutableBigInteger;->value:[I

    iget v1, v7, Ljava/math/MutableBigInteger;->offset:I

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v15

    .line 1483
    .local v15, "shift":I
    iget v5, v7, Ljava/math/MutableBigInteger;->intLen:I

    .line 1486
    .local v5, "dlen":I
    const/4 v4, 0x1

    if-lez v15, :cond_84

    .line 1487
    new-array v0, v5, [I

    .line 1488
    .local v0, "divisor":[I
    iget-object v9, v7, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v7, Ljava/math/MutableBigInteger;->offset:I

    const/4 v13, 0x0

    move v11, v5

    move-object v12, v0

    move v14, v15

    invoke-static/range {v9 .. v14}, Ljava/math/MutableBigInteger;->copyAndShift([III[III)V

    .line 1489
    iget-object v1, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v2, v6, Ljava/math/MutableBigInteger;->offset:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    if-lt v1, v15, :cond_4d

    .line 1490
    iget v1, v6, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, v4

    new-array v1, v1, [I

    .line 1491
    .local v1, "remarr":[I
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 1492
    .local v2, "rem":Ljava/math/MutableBigInteger;
    iget v3, v6, Ljava/math/MutableBigInteger;->intLen:I

    iput v3, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1493
    iput v4, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1494
    iget-object v9, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v6, Ljava/math/MutableBigInteger;->offset:I

    iget v11, v6, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v13, 0x1

    move-object v12, v1

    move v14, v15

    invoke-static/range {v9 .. v14}, Ljava/math/MutableBigInteger;->copyAndShift([III[III)V

    .line 1495
    .end local v1    # "remarr":[I
    move-object v9, v0

    move-object v10, v2

    goto :goto_ad

    .line 1496
    .end local v2    # "rem":Ljava/math/MutableBigInteger;
    :cond_4d
    iget v1, v6, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1497
    .restart local v1    # "remarr":[I
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 1498
    .restart local v2    # "rem":Ljava/math/MutableBigInteger;
    iget v3, v6, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v4

    iput v3, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1499
    iput v4, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1500
    iget v3, v6, Ljava/math/MutableBigInteger;->offset:I

    .line 1501
    .local v3, "rFrom":I
    const/4 v9, 0x0

    .line 1502
    .local v9, "c":I
    rsub-int/lit8 v10, v15, 0x20

    .line 1503
    .local v10, "n2":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_65
    iget v12, v6, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v13, v12, 0x1

    if-ge v11, v13, :cond_7c

    .line 1504
    move v12, v9

    .line 1505
    .local v12, "b":I
    iget-object v13, v6, Ljava/math/MutableBigInteger;->value:[I

    aget v9, v13, v3

    .line 1506
    shl-int v13, v12, v15

    ushr-int v14, v9, v10

    or-int/2addr v13, v14

    aput v13, v1, v11

    .line 1503
    .end local v12    # "b":I
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 1508
    .end local v11    # "i":I
    :cond_7c
    add-int/2addr v12, v4

    shl-int v11, v9, v15

    aput v11, v1, v12

    .line 1509
    .end local v1    # "remarr":[I
    .end local v3    # "rFrom":I
    .end local v9    # "c":I
    .end local v10    # "n2":I
    move-object v9, v0

    move-object v10, v2

    goto :goto_ad

    .line 1511
    .end local v0    # "divisor":[I
    .end local v2    # "rem":Ljava/math/MutableBigInteger;
    :cond_84
    iget-object v0, v7, Ljava/math/MutableBigInteger;->value:[I

    iget v1, v7, Ljava/math/MutableBigInteger;->offset:I

    iget v2, v7, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    .line 1512
    .restart local v0    # "divisor":[I
    new-instance v1, Ljava/math/MutableBigInteger;

    iget v2, v6, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v4

    new-array v2, v2, [I

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    move-object v2, v1

    .line 1513
    .restart local v2    # "rem":Ljava/math/MutableBigInteger;
    iget-object v1, v6, Ljava/math/MutableBigInteger;->value:[I

    iget v3, v6, Ljava/math/MutableBigInteger;->offset:I

    iget-object v9, v2, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v6, Ljava/math/MutableBigInteger;->intLen:I

    invoke-static {v1, v3, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1514
    iget v1, v6, Ljava/math/MutableBigInteger;->intLen:I

    iput v1, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1515
    iput v4, v2, Ljava/math/MutableBigInteger;->offset:I

    move-object v9, v0

    move-object v10, v2

    .line 1518
    .end local v0    # "divisor":[I
    .end local v2    # "rem":Ljava/math/MutableBigInteger;
    .local v9, "divisor":[I
    .local v10, "rem":Ljava/math/MutableBigInteger;
    :goto_ad
    iget v11, v10, Ljava/math/MutableBigInteger;->intLen:I

    .line 1521
    .local v11, "nlen":I
    sub-int v0, v11, v5

    add-int/lit8 v12, v0, 0x1

    .line 1522
    .local v12, "limit":I
    iget-object v0, v8, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    const/4 v13, 0x0

    if-ge v0, v12, :cond_bf

    .line 1523
    new-array v0, v12, [I

    iput-object v0, v8, Ljava/math/MutableBigInteger;->value:[I

    .line 1524
    iput v13, v8, Ljava/math/MutableBigInteger;->offset:I

    .line 1526
    :cond_bf
    iput v12, v8, Ljava/math/MutableBigInteger;->intLen:I

    .line 1527
    iget-object v14, v8, Ljava/math/MutableBigInteger;->value:[I

    .line 1531
    .local v14, "q":[I
    iget v0, v10, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v0, v11, :cond_d0

    .line 1532
    iput v13, v10, Ljava/math/MutableBigInteger;->offset:I

    .line 1533
    iget-object v1, v10, Ljava/math/MutableBigInteger;->value:[I

    aput v13, v1, v13

    .line 1534
    add-int/2addr v0, v4

    iput v0, v10, Ljava/math/MutableBigInteger;->intLen:I

    .line 1537
    :cond_d0
    aget v3, v9, v13

    .line 1538
    .local v3, "dh":I
    int-to-long v0, v3

    const-wide v16, 0xffffffffL

    and-long v18, v0, v16

    .line 1539
    .local v18, "dhLong":J
    aget v2, v9, v4

    .line 1542
    .local v2, "dl":I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "j":I
    :goto_de
    add-int/lit8 v0, v12, -0x1

    const-wide/16 v20, 0x0

    const/high16 v22, -0x80000000

    const/16 v23, 0x20

    if-ge v1, v0, :cond_200

    .line 1545
    const/4 v0, 0x0

    .line 1546
    .local v0, "qhat":I
    const/16 v24, 0x0

    .line 1547
    .local v24, "qrem":I
    const/16 v25, 0x0

    .line 1548
    .local v25, "skipCorrection":Z
    iget-object v4, v10, Ljava/math/MutableBigInteger;->value:[I

    iget v13, v10, Ljava/math/MutableBigInteger;->offset:I

    add-int v27, v1, v13

    aget v7, v4, v27

    .line 1549
    .local v7, "nh":I
    add-int v8, v7, v22

    .line 1550
    .local v8, "nh2":I
    add-int/lit8 v27, v1, 0x1

    add-int v27, v27, v13

    aget v13, v4, v27

    .line 1552
    .local v13, "nm":I
    if-ne v7, v3, :cond_11a

    .line 1553
    const/4 v0, -0x1

    .line 1554
    add-int v4, v7, v13

    .line 1555
    .end local v24    # "qrem":I
    .local v4, "qrem":I
    move/from16 v20, v0

    .end local v0    # "qhat":I
    .local v20, "qhat":I
    add-int v0, v4, v22

    if-ge v0, v8, :cond_10a

    const/4 v0, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v0, 0x0

    :goto_10b
    move/from16 v25, v0

    move/from16 v31, v3

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v30, v14

    move/from16 v29, v15

    move/from16 v0, v20

    goto :goto_145

    .line 1557
    .end local v4    # "qrem":I
    .end local v20    # "qhat":I
    .restart local v0    # "qhat":I
    .restart local v24    # "qrem":I
    :cond_11a
    move/from16 v27, v11

    move/from16 v28, v12

    .end local v11    # "nlen":I
    .end local v12    # "limit":I
    .local v27, "nlen":I
    .local v28, "limit":I
    int-to-long v11, v7

    shl-long v11, v11, v23

    move-object/from16 v30, v14

    move/from16 v29, v15

    .end local v14    # "q":[I
    .end local v15    # "shift":I
    .local v29, "shift":I
    .local v30, "q":[I
    int-to-long v14, v13

    and-long v14, v14, v16

    or-long/2addr v11, v14

    .line 1558
    .local v11, "nChunk":J
    cmp-long v4, v11, v20

    if-ltz v4, :cond_139

    .line 1559
    div-long v14, v11, v18

    long-to-int v0, v14

    .line 1560
    int-to-long v14, v0

    mul-long v14, v14, v18

    sub-long v14, v11, v14

    long-to-int v4, v14

    move/from16 v31, v3

    .end local v24    # "qrem":I
    .restart local v4    # "qrem":I
    goto :goto_145

    .line 1562
    .end local v4    # "qrem":I
    .restart local v24    # "qrem":I
    :cond_139
    invoke-static {v11, v12, v3}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v14

    .line 1563
    .local v14, "tmp":J
    move/from16 v31, v3

    .end local v3    # "dh":I
    .local v31, "dh":I
    and-long v3, v14, v16

    long-to-int v0, v3

    .line 1564
    ushr-long v3, v14, v23

    long-to-int v4, v3

    .line 1568
    .end local v11    # "nChunk":J
    .end local v14    # "tmp":J
    .end local v24    # "qrem":I
    .restart local v4    # "qrem":I
    :goto_145
    if-nez v0, :cond_155

    .line 1569
    move v11, v1

    move v12, v2

    move/from16 v26, v5

    move/from16 v14, v31

    const/4 v15, 0x1

    move-object/from16 v35, v10

    move-object v10, v9

    move-object/from16 v9, v35

    goto/16 :goto_1e5

    .line 1571
    :cond_155
    if-nez v25, :cond_1a2

    .line 1572
    iget-object v3, v10, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v11, v1, 0x2

    iget v12, v10, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v11, v12

    aget v3, v3, v11

    int-to-long v11, v3

    and-long v11, v11, v16

    .line 1573
    .local v11, "nl":J
    int-to-long v14, v4

    and-long v14, v14, v16

    shl-long v14, v14, v23

    or-long/2addr v14, v11

    .line 1574
    .local v14, "rs":J
    move/from16 v24, v7

    move/from16 v32, v8

    .end local v7    # "nh":I
    .end local v8    # "nh2":I
    .local v24, "nh":I
    .local v32, "nh2":I
    int-to-long v7, v2

    and-long v7, v7, v16

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    .end local v9    # "divisor":[I
    .end local v10    # "rem":Ljava/math/MutableBigInteger;
    .local v33, "divisor":[I
    .local v34, "rem":Ljava/math/MutableBigInteger;
    int-to-long v9, v0

    and-long v9, v9, v16

    mul-long/2addr v7, v9

    .line 1576
    .local v7, "estProduct":J
    invoke-direct {v6, v7, v8, v14, v15}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 1577
    add-int/lit8 v0, v0, -0x1

    .line 1578
    int-to-long v9, v4

    and-long v9, v9, v16

    add-long v9, v9, v18

    long-to-int v4, v9

    .line 1579
    int-to-long v9, v4

    and-long v9, v9, v16

    cmp-long v3, v9, v18

    if-ltz v3, :cond_1aa

    .line 1580
    int-to-long v9, v2

    and-long v9, v9, v16

    sub-long/2addr v7, v9

    .line 1581
    int-to-long v9, v4

    and-long v9, v9, v16

    shl-long v9, v9, v23

    or-long/2addr v9, v11

    .line 1582
    .end local v14    # "rs":J
    .local v9, "rs":J
    invoke-direct {v6, v7, v8, v9, v10}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 1583
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v8, v4

    goto :goto_1ac

    .line 1571
    .end local v11    # "nl":J
    .end local v24    # "nh":I
    .end local v32    # "nh2":I
    .end local v33    # "divisor":[I
    .end local v34    # "rem":Ljava/math/MutableBigInteger;
    .local v7, "nh":I
    .restart local v8    # "nh2":I
    .local v9, "divisor":[I
    .restart local v10    # "rem":Ljava/math/MutableBigInteger;
    :cond_1a2
    move/from16 v24, v7

    move/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    .line 1589
    .end local v7    # "nh":I
    .end local v8    # "nh2":I
    .end local v9    # "divisor":[I
    .end local v10    # "rem":Ljava/math/MutableBigInteger;
    .restart local v24    # "nh":I
    .restart local v32    # "nh2":I
    .restart local v33    # "divisor":[I
    .restart local v34    # "rem":Ljava/math/MutableBigInteger;
    :cond_1aa
    move v7, v0

    move v8, v4

    .end local v0    # "qhat":I
    .end local v4    # "qrem":I
    .local v7, "qhat":I
    .local v8, "qrem":I
    :goto_1ac
    move-object/from16 v9, v34

    .end local v34    # "rem":Ljava/math/MutableBigInteger;
    .local v9, "rem":Ljava/math/MutableBigInteger;
    iget-object v3, v9, Ljava/math/MutableBigInteger;->value:[I

    iget v0, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int v4, v1, v0

    const/4 v10, 0x0

    aput v10, v3, v4

    .line 1590
    add-int v10, v1, v0

    move-object/from16 v0, p0

    move v11, v1

    .end local v1    # "j":I
    .local v11, "j":I
    move-object v1, v3

    move v12, v2

    .end local v2    # "dl":I
    .local v12, "dl":I
    move-object/from16 v2, v33

    move/from16 v14, v31

    .end local v31    # "dh":I
    .local v14, "dh":I
    move v3, v7

    const/4 v15, 0x1

    move v4, v5

    move/from16 v26, v5

    .end local v5    # "dlen":I
    .local v26, "dlen":I
    move v5, v10

    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsub([I[IIII)I

    move-result v0

    .line 1593
    .local v0, "borrow":I
    add-int v1, v0, v22

    move/from16 v2, v32

    .end local v32    # "nh2":I
    .local v2, "nh2":I
    if-le v1, v2, :cond_1e1

    .line 1595
    iget-object v1, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v3, v11, 0x1

    iget v4, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v4

    move-object/from16 v10, v33

    .end local v33    # "divisor":[I
    .local v10, "divisor":[I
    invoke-direct {v6, v10, v1, v3}, Ljava/math/MutableBigInteger;->divadd([I[II)I

    .line 1596
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e3

    .line 1593
    .end local v10    # "divisor":[I
    .restart local v33    # "divisor":[I
    :cond_1e1
    move-object/from16 v10, v33

    .line 1600
    .end local v33    # "divisor":[I
    .restart local v10    # "divisor":[I
    :goto_1e3
    aput v7, v30, v11

    .line 1542
    .end local v0    # "borrow":I
    .end local v2    # "nh2":I
    .end local v7    # "qhat":I
    .end local v8    # "qrem":I
    .end local v13    # "nm":I
    .end local v24    # "nh":I
    .end local v25    # "skipCorrection":Z
    :goto_1e5
    add-int/lit8 v1, v11, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v2, v12

    move v3, v14

    move v4, v15

    move/from16 v5, v26

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v15, v29

    move-object/from16 v14, v30

    const/4 v13, 0x0

    move-object/from16 v35, v10

    move-object v10, v9

    move-object/from16 v9, v35

    .end local v11    # "j":I
    .restart local v1    # "j":I
    goto/16 :goto_de

    .end local v26    # "dlen":I
    .end local v27    # "nlen":I
    .end local v28    # "limit":I
    .end local v29    # "shift":I
    .end local v30    # "q":[I
    .local v2, "dl":I
    .restart local v3    # "dh":I
    .restart local v5    # "dlen":I
    .local v9, "divisor":[I
    .local v10, "rem":Ljava/math/MutableBigInteger;
    .local v11, "nlen":I
    .local v12, "limit":I
    .local v14, "q":[I
    .restart local v15    # "shift":I
    :cond_200
    move/from16 v26, v5

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v30, v14

    move/from16 v29, v15

    move v11, v1

    move v12, v2

    move v14, v3

    move v15, v4

    move-object/from16 v35, v10

    move-object v10, v9

    move-object/from16 v9, v35

    .line 1604
    .end local v1    # "j":I
    .end local v2    # "dl":I
    .end local v3    # "dh":I
    .end local v5    # "dlen":I
    .end local v11    # "nlen":I
    .end local v15    # "shift":I
    .local v9, "rem":Ljava/math/MutableBigInteger;
    .local v10, "divisor":[I
    .local v12, "dl":I
    .local v14, "dh":I
    .restart local v26    # "dlen":I
    .restart local v27    # "nlen":I
    .restart local v28    # "limit":I
    .restart local v29    # "shift":I
    .restart local v30    # "q":[I
    const/4 v0, 0x0

    .line 1605
    .local v0, "qhat":I
    const/4 v1, 0x0

    .line 1606
    .local v1, "qrem":I
    const/4 v2, 0x0

    .line 1607
    .local v2, "skipCorrection":Z
    iget-object v3, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v4, v28, -0x1

    iget v5, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v4, v5

    aget v7, v3, v4

    .line 1608
    .local v7, "nh":I
    add-int v8, v7, v22

    .line 1609
    .local v8, "nh2":I
    add-int v4, v28, v5

    aget v11, v3, v4

    .line 1611
    .local v11, "nm":I
    if-ne v7, v14, :cond_234

    .line 1612
    const/4 v0, -0x1

    .line 1613
    add-int v1, v7, v11

    .line 1614
    add-int v3, v1, v22

    if-ge v3, v8, :cond_230

    move v4, v15

    goto :goto_231

    :cond_230
    const/4 v4, 0x0

    :goto_231
    move v2, v4

    move v13, v2

    goto :goto_25d

    .line 1616
    :cond_234
    int-to-long v3, v7

    shl-long v3, v3, v23

    move v5, v0

    move v13, v1

    .end local v0    # "qhat":I
    .end local v1    # "qrem":I
    .local v5, "qhat":I
    .local v13, "qrem":I
    int-to-long v0, v11

    and-long v0, v0, v16

    or-long/2addr v0, v3

    .line 1617
    .local v0, "nChunk":J
    cmp-long v3, v0, v20

    if-ltz v3, :cond_24e

    .line 1618
    div-long v3, v0, v18

    long-to-int v3, v3

    .line 1619
    .end local v5    # "qhat":I
    .local v3, "qhat":I
    int-to-long v4, v3

    mul-long v4, v4, v18

    sub-long v4, v0, v4

    long-to-int v4, v4

    move v13, v2

    move v0, v3

    move v1, v4

    .end local v13    # "qrem":I
    .restart local v4    # "qrem":I
    goto :goto_25d

    .line 1621
    .end local v3    # "qhat":I
    .end local v4    # "qrem":I
    .restart local v5    # "qhat":I
    .restart local v13    # "qrem":I
    :cond_24e
    invoke-static {v0, v1, v14}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v3

    .line 1622
    .local v3, "tmp":J
    move-wide/from16 v20, v0

    .end local v0    # "nChunk":J
    .local v20, "nChunk":J
    and-long v0, v3, v16

    long-to-int v0, v0

    .line 1623
    .end local v5    # "qhat":I
    .local v0, "qhat":I
    move v5, v0

    .end local v0    # "qhat":I
    .restart local v5    # "qhat":I
    ushr-long v0, v3, v23

    long-to-int v1, v0

    move v13, v2

    move v0, v5

    .line 1626
    .end local v2    # "skipCorrection":Z
    .end local v3    # "tmp":J
    .end local v5    # "qhat":I
    .end local v20    # "nChunk":J
    .restart local v0    # "qhat":I
    .restart local v1    # "qrem":I
    .local v13, "skipCorrection":Z
    :goto_25d
    if-eqz v0, :cond_2fc

    .line 1627
    if-nez v13, :cond_2ad

    .line 1628
    iget-object v2, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v3, v28, 0x1

    iget v4, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v4

    aget v2, v2, v3

    int-to-long v2, v2

    and-long v2, v2, v16

    .line 1629
    .local v2, "nl":J
    int-to-long v4, v1

    and-long v4, v4, v16

    shl-long v4, v4, v23

    or-long/2addr v4, v2

    .line 1630
    .local v4, "rs":J
    move/from16 v20, v13

    move/from16 v31, v14

    .end local v13    # "skipCorrection":Z
    .end local v14    # "dh":I
    .local v20, "skipCorrection":Z
    .restart local v31    # "dh":I
    int-to-long v13, v12

    and-long v13, v13, v16

    move/from16 v21, v7

    move/from16 v24, v8

    .end local v7    # "nh":I
    .end local v8    # "nh2":I
    .local v21, "nh":I
    .local v24, "nh2":I
    int-to-long v7, v0

    and-long v7, v7, v16

    mul-long/2addr v13, v7

    .line 1632
    .local v13, "estProduct":J
    invoke-direct {v6, v13, v14, v4, v5}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v7

    if-eqz v7, :cond_2b5

    .line 1633
    add-int/lit8 v0, v0, -0x1

    .line 1634
    int-to-long v7, v1

    and-long v7, v7, v16

    add-long v7, v7, v18

    long-to-int v1, v7

    .line 1635
    int-to-long v7, v1

    and-long v7, v7, v16

    cmp-long v7, v7, v18

    if-ltz v7, :cond_2b5

    .line 1636
    int-to-long v7, v12

    and-long v7, v7, v16

    sub-long/2addr v13, v7

    .line 1637
    int-to-long v7, v1

    and-long v7, v7, v16

    shl-long v7, v7, v23

    or-long v4, v7, v2

    .line 1638
    invoke-direct {v6, v13, v14, v4, v5}, Ljava/math/MutableBigInteger;->unsignedLongCompare(JJ)Z

    move-result v7

    if-eqz v7, :cond_2b5

    .line 1639
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v8, v1

    goto :goto_2b7

    .line 1627
    .end local v2    # "nl":J
    .end local v4    # "rs":J
    .end local v20    # "skipCorrection":Z
    .end local v21    # "nh":I
    .end local v24    # "nh2":I
    .end local v31    # "dh":I
    .restart local v7    # "nh":I
    .restart local v8    # "nh2":I
    .local v13, "skipCorrection":Z
    .restart local v14    # "dh":I
    :cond_2ad
    move/from16 v21, v7

    move/from16 v24, v8

    move/from16 v20, v13

    move/from16 v31, v14

    .line 1647
    .end local v7    # "nh":I
    .end local v8    # "nh2":I
    .end local v13    # "skipCorrection":Z
    .end local v14    # "dh":I
    .restart local v20    # "skipCorrection":Z
    .restart local v21    # "nh":I
    .restart local v24    # "nh2":I
    .restart local v31    # "dh":I
    :cond_2b5
    move v7, v0

    move v8, v1

    .end local v0    # "qhat":I
    .end local v1    # "qrem":I
    .local v7, "qhat":I
    .local v8, "qrem":I
    :goto_2b7
    iget-object v1, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v0, v28, -0x1

    iget v2, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v0, v2

    const/4 v3, 0x0

    aput v3, v1, v0

    .line 1648
    if-eqz p3, :cond_2d2

    .line 1649
    add-int/lit8 v0, v28, -0x1

    add-int v5, v0, v2

    move-object/from16 v0, p0

    move-object v2, v10

    move v3, v7

    move/from16 v4, v26

    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsub([I[IIII)I

    move-result v0

    .local v0, "borrow":I
    goto :goto_2e0

    .line 1651
    .end local v0    # "borrow":I
    :cond_2d2
    add-int/lit8 v0, v28, -0x1

    add-int v5, v0, v2

    move-object/from16 v0, p0

    move-object v2, v10

    move v3, v7

    move/from16 v4, v26

    invoke-direct/range {v0 .. v5}, Ljava/math/MutableBigInteger;->mulsubBorrow([I[IIII)I

    move-result v0

    .line 1654
    .restart local v0    # "borrow":I
    :goto_2e0
    add-int v1, v0, v22

    move/from16 v2, v24

    .end local v24    # "nh2":I
    .local v2, "nh2":I
    if-le v1, v2, :cond_2f5

    .line 1656
    if-eqz p3, :cond_2f3

    .line 1657
    iget-object v1, v9, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v3, v28, -0x1

    add-int/2addr v3, v15

    iget v4, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v4

    invoke-direct {v6, v10, v1, v3}, Ljava/math/MutableBigInteger;->divadd([I[II)I

    .line 1658
    :cond_2f3
    add-int/lit8 v7, v7, -0x1

    .line 1662
    :cond_2f5
    add-int/lit8 v1, v28, -0x1

    aput v7, v30, v1

    move v0, v7

    move v1, v8

    goto :goto_303

    .line 1626
    .end local v2    # "nh2":I
    .end local v20    # "skipCorrection":Z
    .end local v21    # "nh":I
    .end local v31    # "dh":I
    .local v0, "qhat":I
    .restart local v1    # "qrem":I
    .local v7, "nh":I
    .local v8, "nh2":I
    .restart local v13    # "skipCorrection":Z
    .restart local v14    # "dh":I
    :cond_2fc
    move/from16 v21, v7

    move v2, v8

    move/from16 v20, v13

    move/from16 v31, v14

    .line 1666
    .end local v7    # "nh":I
    .end local v8    # "nh2":I
    .end local v13    # "skipCorrection":Z
    .end local v14    # "dh":I
    .restart local v2    # "nh2":I
    .restart local v20    # "skipCorrection":Z
    .restart local v21    # "nh":I
    .restart local v31    # "dh":I
    :goto_303
    if-eqz p3, :cond_313

    .line 1668
    if-lez v29, :cond_30d

    .line 1669
    move/from16 v3, v29

    .end local v29    # "shift":I
    .local v3, "shift":I
    invoke-virtual {v9, v3}, Ljava/math/MutableBigInteger;->rightShift(I)V

    goto :goto_30f

    .line 1668
    .end local v3    # "shift":I
    .restart local v29    # "shift":I
    :cond_30d
    move/from16 v3, v29

    .line 1670
    .end local v29    # "shift":I
    .restart local v3    # "shift":I
    :goto_30f
    invoke-virtual {v9}, Ljava/math/MutableBigInteger;->normalize()V

    goto :goto_315

    .line 1666
    .end local v3    # "shift":I
    .restart local v29    # "shift":I
    :cond_313
    move/from16 v3, v29

    .line 1672
    .end local v29    # "shift":I
    .restart local v3    # "shift":I
    :goto_315
    invoke-virtual/range {p2 .. p2}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1673
    if-eqz p3, :cond_31c

    move-object v4, v9

    goto :goto_31d

    :cond_31c
    const/4 v4, 0x0

    :goto_31d
    return-object v4
.end method

.method private final blacklist ensureCapacity(I)V
    .registers 3
    .param p1, "len"    # I

    .line 410
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    if-ge v0, p1, :cond_e

    .line 411
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 412
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 413
    iput p1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 415
    :cond_e
    return-void
.end method

.method static blacklist fixup(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;
    .registers 11
    .param p0, "c"    # Ljava/math/MutableBigInteger;
    .param p1, "p"    # Ljava/math/MutableBigInteger;
    .param p2, "k"    # I

    .line 2169
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2171
    .local v0, "temp":Ljava/math/MutableBigInteger;
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p1, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p1, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/math/MutableBigInteger;->inverseMod32(I)I

    move-result v1

    neg-int v1, v1

    .line 2173
    .local v1, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    shr-int/lit8 v4, p2, 0x5

    .local v4, "numWords":I
    :goto_18
    if-ge v2, v4, :cond_33

    .line 2175
    iget-object v5, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v6, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v7, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    aget v5, v5, v6

    mul-int/2addr v5, v1

    .line 2177
    .local v5, "v":I
    invoke-virtual {p1, v5, v0}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    .line 2178
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2180
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v6, v3

    iput v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 2173
    .end local v5    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2182
    .end local v2    # "i":I
    .end local v4    # "numWords":I
    :cond_33
    and-int/lit8 v2, p2, 0x1f

    .line 2183
    .local v2, "numBits":I
    if-eqz v2, :cond_50

    .line 2185
    iget-object v4, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aget v4, v4, v5

    mul-int/2addr v4, v1

    .line 2186
    .local v4, "v":I
    shl-int v5, v3, v2

    sub-int/2addr v5, v3

    and-int v3, v4, v5

    .line 2188
    .end local v4    # "v":I
    .local v3, "v":I
    invoke-virtual {p1, v3, v0}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    .line 2189
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2191
    invoke-virtual {p0, v2}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2195
    .end local v3    # "v":I
    :cond_50
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v3

    if-ltz v3, :cond_5f

    .line 2196
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3}, Ljava/math/MutableBigInteger;-><init>()V

    invoke-virtual {p0, p1, v3}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object p0

    .line 2198
    :cond_5f
    return-object p0
.end method

.method private blacklist getBlock(III)Ljava/math/MutableBigInteger;
    .registers 10
    .param p1, "index"    # I
    .param p2, "numBlocks"    # I
    .param p3, "blockLength"    # I

    .line 1405
    mul-int v0, p1, p3

    .line 1406
    .local v0, "blockStart":I
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-lt v0, v1, :cond_c

    .line 1407
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    return-object v1

    .line 1411
    :cond_c
    add-int/lit8 v2, p2, -0x1

    if-ne p1, v2, :cond_13

    .line 1412
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    .local v2, "blockEnd":I
    goto :goto_16

    .line 1414
    .end local v2    # "blockEnd":I
    :cond_13
    add-int/lit8 v2, p1, 0x1

    mul-int/2addr v2, p3

    .line 1416
    .restart local v2    # "blockEnd":I
    :goto_16
    if-le v2, v1, :cond_1e

    .line 1417
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    return-object v1

    .line 1420
    :cond_1e
    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int v5, v4, v1

    sub-int/2addr v5, v2

    add-int/2addr v4, v1

    sub-int/2addr v4, v0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 1421
    .local v1, "newVal":[I
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, v1}, Ljava/math/MutableBigInteger;-><init>([I)V

    return-object v3
.end method

.method private final blacklist getInt(I)I
    .registers 4
    .param p1, "index"    # I

    .line 368
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method private final blacklist getLong(I)J
    .registers 6
    .param p1, "index"    # I

    .line 377
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getLower(I)Ljava/math/BigInteger;
    .registers 9
    .param p1, "n"    # I

    .line 708
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 709
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0

    .line 710
    :cond_9
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_13

    .line 711
    invoke-virtual {p0, v1}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 714
    :cond_13
    move v0, p1

    .line 715
    .local v0, "len":I
    :goto_14
    if-lez v0, :cond_25

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    aget v2, v2, v3

    if-nez v2, :cond_25

    .line 716
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 717
    :cond_25
    if-lez v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 718
    .local v1, "sign":I
    :goto_29
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v5, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int v6, v4, v5

    sub-int/2addr v6, v0

    add-int/2addr v4, v5

    invoke-static {v3, v6, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v2
.end method

.method private final blacklist getLowestSetBit()I
    .registers 5

    .line 351
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 352
    return v1

    .line 354
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_8
    if-lez v0, :cond_16

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    if-nez v2, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 356
    :cond_16
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v0

    aget v2, v2, v3

    .line 357
    .local v2, "b":I
    if-nez v2, :cond_20

    .line 358
    return v1

    .line 359
    :cond_20
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    shl-int/lit8 v1, v1, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/2addr v1, v3

    return v1
.end method

.method private blacklist getMagnitudeArray()[I
    .registers 5

    .line 163
    iget v0, p0, Ljava/math/MutableBigInteger;->offset:I

    if-gtz v0, :cond_d

    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v2, v1

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eq v2, v3, :cond_c

    goto :goto_d

    .line 165
    :cond_c
    return-object v1

    .line 164
    :cond_d
    :goto_d
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method static blacklist inverseMod32(I)I
    .registers 3
    .param p0, "val"    # I

    .line 2059
    move v0, p0

    .line 2060
    .local v0, "t":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2061
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2062
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2063
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 2064
    return v0
.end method

.method static blacklist inverseMod64(J)J
    .registers 8
    .param p0, "val"    # J

    .line 2072
    move-wide v0, p0

    .line 2073
    .local v0, "t":J
    mul-long v2, p0, v0

    const-wide/16 v4, 0x2

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2074
    mul-long v2, p0, v0

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2075
    mul-long v2, p0, v0

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2076
    mul-long v2, p0, v0

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    .line 2077
    mul-long v2, p0, v0

    sub-long/2addr v4, v2

    mul-long/2addr v0, v4

    .line 2078
    nop

    .line 2079
    return-wide v0
.end method

.method private blacklist keepLower(I)V
    .registers 4
    .param p1, "n"    # I

    .line 726
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-lt v0, p1, :cond_c

    .line 727
    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    sub-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 728
    iput p1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 730
    :cond_c
    return-void
.end method

.method private blacklist modInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 15
    .param p1, "mod"    # Ljava/math/MutableBigInteger;

    .line 2100
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2101
    .local v0, "p":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2102
    .local v1, "f":Ljava/math/MutableBigInteger;
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2103
    .local v2, "g":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/SignedMutableBigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/math/SignedMutableBigInteger;-><init>(I)V

    .line 2104
    .local v3, "c":Ljava/math/SignedMutableBigInteger;
    new-instance v5, Ljava/math/SignedMutableBigInteger;

    invoke-direct {v5}, Ljava/math/SignedMutableBigInteger;-><init>()V

    .line 2105
    .local v5, "d":Ljava/math/SignedMutableBigInteger;
    const/4 v6, 0x0

    .line 2106
    .local v6, "temp":Ljava/math/MutableBigInteger;
    const/4 v7, 0x0

    .line 2108
    .local v7, "sTemp":Ljava/math/SignedMutableBigInteger;
    const/4 v8, 0x0

    .line 2110
    .local v8, "k":I
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isEven()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 2111
    invoke-direct {v1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v9

    .line 2112
    .local v9, "trailingZeros":I
    invoke-virtual {v1, v9}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2113
    invoke-virtual {v5, v9}, Ljava/math/SignedMutableBigInteger;->leftShift(I)V

    .line 2114
    move v8, v9

    .line 2118
    .end local v9    # "trailingZeros":I
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v9

    if-nez v9, :cond_80

    .line 2120
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v9

    if-nez v9, :cond_78

    .line 2124
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v9

    if-gez v9, :cond_46

    .line 2125
    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    .line 2126
    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    .line 2130
    :cond_46
    iget-object v9, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v1, Ljava/math/MutableBigInteger;->offset:I

    iget v11, v1, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v10, v11

    sub-int/2addr v10, v4

    aget v9, v9, v10

    iget-object v10, v2, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v2, Ljava/math/MutableBigInteger;->offset:I

    iget v12, v2, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v11, v12

    sub-int/2addr v11, v4

    aget v10, v10, v11

    xor-int/2addr v9, v10

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_66

    .line 2132
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 2133
    invoke-virtual {v3, v5}, Ljava/math/SignedMutableBigInteger;->signedSubtract(Ljava/math/SignedMutableBigInteger;)V

    goto :goto_6c

    .line 2135
    :cond_66
    invoke-virtual {v1, v2}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2136
    invoke-virtual {v3, v5}, Ljava/math/SignedMutableBigInteger;->signedAdd(Ljava/math/SignedMutableBigInteger;)V

    .line 2140
    :goto_6c
    invoke-direct {v1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v9

    .line 2141
    .restart local v9    # "trailingZeros":I
    invoke-virtual {v1, v9}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 2142
    invoke-virtual {v5, v9}, Ljava/math/SignedMutableBigInteger;->leftShift(I)V

    .line 2143
    add-int/2addr v8, v9

    .line 2144
    .end local v9    # "trailingZeros":I
    goto :goto_2e

    .line 2121
    :cond_78
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v9, "BigInteger not invertible."

    invoke-direct {v4, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2146
    :cond_80
    invoke-virtual {v3, v0}, Ljava/math/SignedMutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v4

    if-ltz v4, :cond_92

    .line 2147
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    invoke-virtual {v3, v0, v4}, Ljava/math/SignedMutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 2152
    .local v4, "remainder":Ljava/math/MutableBigInteger;
    invoke-virtual {v3, v4}, Ljava/math/SignedMutableBigInteger;->copyValue(Ljava/math/MutableBigInteger;)V

    .line 2155
    .end local v4    # "remainder":Ljava/math/MutableBigInteger;
    :cond_92
    iget v4, v3, Ljava/math/SignedMutableBigInteger;->sign:I

    if-gez v4, :cond_99

    .line 2156
    invoke-virtual {v3, v0}, Ljava/math/SignedMutableBigInteger;->signedAdd(Ljava/math/MutableBigInteger;)V

    .line 2159
    :cond_99
    invoke-static {v3, v0, v8}, Ljava/math/MutableBigInteger;->fixup(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;

    move-result-object v4

    return-object v4
.end method

.method static blacklist modInverseBP2(Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;
    .registers 4
    .param p0, "mod"    # Ljava/math/MutableBigInteger;
    .param p1, "k"    # I

    .line 2087
    new-instance v0, Ljava/math/MutableBigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    invoke-static {v0, v1, p1}, Ljava/math/MutableBigInteger;->fixup(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method private blacklist mulsub([I[IIII)I
    .registers 26
    .param p1, "q"    # [I
    .param p2, "a"    # [I
    .param p3, "x"    # I
    .param p4, "len"    # I
    .param p5, "offset"    # I

    .line 638
    move/from16 v0, p3

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 639
    .local v1, "xLong":J
    const-wide/16 v5, 0x0

    .line 640
    .local v5, "carry":J
    add-int v7, p5, p4

    .line 642
    .end local p5    # "offset":I
    .local v7, "offset":I
    add-int/lit8 v8, p4, -0x1

    .local v8, "j":I
    :goto_f
    if-ltz v8, :cond_3e

    .line 643
    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-long/2addr v9, v5

    .line 644
    .local v9, "product":J
    aget v11, p1, v7

    int-to-long v11, v11

    sub-long/2addr v11, v9

    .line 645
    .local v11, "difference":J
    add-int/lit8 v13, v7, -0x1

    .end local v7    # "offset":I
    .local v13, "offset":I
    long-to-int v14, v11

    aput v14, p1, v7

    .line 646
    const/16 v7, 0x20

    ushr-long v14, v9, v7

    .line 647
    and-long v16, v11, v3

    long-to-int v7, v9

    not-int v7, v7

    move-wide/from16 v18, v1

    .end local v1    # "xLong":J
    .local v18, "xLong":J
    int-to-long v0, v7

    and-long/2addr v0, v3

    cmp-long v0, v16, v0

    if-lez v0, :cond_32

    .line 648
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    int-to-long v0, v0

    add-long v5, v14, v0

    .line 642
    .end local v9    # "product":J
    .end local v11    # "difference":J
    add-int/lit8 v8, v8, -0x1

    move/from16 v0, p3

    move v7, v13

    move-wide/from16 v1, v18

    goto :goto_f

    .line 650
    .end local v8    # "j":I
    .end local v13    # "offset":I
    .end local v18    # "xLong":J
    .restart local v1    # "xLong":J
    .restart local v7    # "offset":I
    :cond_3e
    long-to-int v0, v5

    return v0
.end method

.method private blacklist mulsubBorrow([I[IIII)I
    .registers 26
    .param p1, "q"    # [I
    .param p2, "a"    # [I
    .param p3, "x"    # I
    .param p4, "len"    # I
    .param p5, "offset"    # I

    .line 658
    move/from16 v0, p3

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 659
    .local v1, "xLong":J
    const-wide/16 v5, 0x0

    .line 660
    .local v5, "carry":J
    add-int v7, p5, p4

    .line 661
    .end local p5    # "offset":I
    .local v7, "offset":I
    add-int/lit8 v8, p4, -0x1

    .local v8, "j":I
    :goto_f
    if-ltz v8, :cond_3b

    .line 662
    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-long/2addr v9, v5

    .line 663
    .local v9, "product":J
    add-int/lit8 v11, v7, -0x1

    .end local v7    # "offset":I
    .local v11, "offset":I
    aget v7, p1, v7

    int-to-long v12, v7

    sub-long/2addr v12, v9

    .line 664
    .local v12, "difference":J
    const/16 v7, 0x20

    ushr-long v14, v9, v7

    .line 665
    and-long v16, v12, v3

    long-to-int v7, v9

    not-int v7, v7

    move-wide/from16 v18, v1

    .end local v1    # "xLong":J
    .local v18, "xLong":J
    int-to-long v0, v7

    and-long/2addr v0, v3

    cmp-long v0, v16, v0

    if-lez v0, :cond_2f

    .line 666
    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    int-to-long v0, v0

    add-long v5, v14, v0

    .line 661
    .end local v9    # "product":J
    .end local v12    # "difference":J
    add-int/lit8 v8, v8, -0x1

    move/from16 v0, p3

    move v7, v11

    move-wide/from16 v1, v18

    goto :goto_f

    .line 668
    .end local v8    # "j":I
    .end local v11    # "offset":I
    .end local v18    # "xLong":J
    .restart local v1    # "xLong":J
    .restart local v7    # "offset":I
    :cond_3b
    long-to-int v0, v5

    return v0
.end method

.method private blacklist mulsubLong([IIIII)I
    .registers 27
    .param p1, "q"    # [I
    .param p2, "dh"    # I
    .param p3, "dl"    # I
    .param p4, "x"    # I
    .param p5, "offset"    # I

    .line 1810
    move/from16 v0, p4

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1811
    .local v1, "xLong":J
    add-int/lit8 v5, p5, 0x2

    .line 1812
    .end local p5    # "offset":I
    .local v5, "offset":I
    move/from16 v6, p3

    int-to-long v7, v6

    and-long/2addr v7, v3

    mul-long/2addr v7, v1

    .line 1813
    .local v7, "product":J
    aget v9, p1, v5

    int-to-long v9, v9

    sub-long/2addr v9, v7

    .line 1814
    .local v9, "difference":J
    add-int/lit8 v11, v5, -0x1

    .end local v5    # "offset":I
    .local v11, "offset":I
    long-to-int v12, v9

    aput v12, p1, v5

    .line 1815
    const/16 v5, 0x20

    ushr-long v12, v7, v5

    .line 1816
    and-long v14, v9, v3

    long-to-int v5, v7

    not-int v5, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    cmp-long v5, v14, v5

    if-lez v5, :cond_29

    .line 1817
    const/4 v5, 0x1

    goto :goto_2a

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    move-wide v15, v7

    .end local v7    # "product":J
    .local v15, "product":J
    int-to-long v6, v5

    add-long/2addr v12, v6

    .line 1818
    .local v12, "carry":J
    move/from16 v5, p2

    int-to-long v6, v5

    and-long/2addr v6, v3

    mul-long/2addr v6, v1

    add-long/2addr v6, v12

    .line 1819
    .end local v15    # "product":J
    .local v6, "product":J
    aget v15, p1, v11

    move-wide/from16 v16, v9

    .end local v9    # "difference":J
    .local v16, "difference":J
    int-to-long v8, v15

    sub-long/2addr v8, v6

    .line 1820
    .end local v16    # "difference":J
    .local v8, "difference":J
    add-int/lit8 v15, v11, -0x1

    .end local v11    # "offset":I
    .local v15, "offset":I
    long-to-int v10, v8

    aput v10, p1, v11

    .line 1821
    const/16 v10, 0x20

    ushr-long v10, v6, v10

    .line 1822
    and-long v17, v8, v3

    long-to-int v14, v6

    not-int v14, v14

    move-wide/from16 v19, v1

    .end local v1    # "xLong":J
    .local v19, "xLong":J
    int-to-long v0, v14

    and-long/2addr v0, v3

    cmp-long v0, v17, v0

    if-lez v0, :cond_50

    .line 1823
    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    int-to-long v0, v0

    add-long/2addr v10, v0

    .line 1824
    .end local v12    # "carry":J
    .local v10, "carry":J
    long-to-int v0, v10

    return v0
.end method

.method private blacklist ones(I)V
    .registers 4
    .param p1, "n"    # I

    .line 151
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v0, v0

    if-le p1, v0, :cond_9

    .line 152
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 153
    :cond_9
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 155
    iput p1, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 156
    return-void
.end method

.method private final blacklist primitiveLeftShift(I)V
    .registers 10
    .param p1, "n"    # I

    .line 693
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 694
    .local v0, "val":[I
    rsub-int/lit8 v1, p1, 0x20

    .line 695
    .local v1, "n2":I
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    .local v2, "i":I
    aget v3, v0, v2

    .local v3, "c":I
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    .local v4, "m":I
    :goto_d
    if-ge v2, v4, :cond_1e

    .line 696
    move v5, v3

    .line 697
    .local v5, "b":I
    add-int/lit8 v6, v2, 0x1

    aget v3, v0, v6

    .line 698
    shl-int v6, v5, p1

    ushr-int v7, v3, v1

    or-int/2addr v6, v7

    aput v6, v0, v2

    .line 695
    .end local v5    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 700
    .end local v2    # "i":I
    .end local v3    # "c":I
    .end local v4    # "m":I
    :cond_1e
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget v3, v0, v2

    shl-int/2addr v3, p1

    aput v3, v0, v2

    .line 701
    return-void
.end method

.method private final blacklist primitiveRightShift(I)V
    .registers 9
    .param p1, "n"    # I

    .line 677
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 678
    .local v0, "val":[I
    rsub-int/lit8 v1, p1, 0x20

    .line 679
    .local v1, "n2":I
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    aget v3, v0, v2

    .local v3, "c":I
    :goto_d
    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    if-le v2, v4, :cond_20

    .line 680
    move v4, v3

    .line 681
    .local v4, "b":I
    add-int/lit8 v5, v2, -0x1

    aget v3, v0, v5

    .line 682
    shl-int v5, v3, v1

    ushr-int v6, v4, p1

    or-int/2addr v5, v6

    aput v5, v0, v2

    .line 679
    .end local v4    # "b":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 684
    .end local v2    # "i":I
    .end local v3    # "c":I
    :cond_20
    aget v2, v0, v4

    ushr-int/2addr v2, p1

    aput v2, v0, v4

    .line 685
    return-void
.end method

.method private blacklist toLong()J
    .registers 10

    .line 173
    nop

    .line 174
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_8

    .line 175
    const-wide/16 v0, 0x0

    return-wide v0

    .line 176
    :cond_8
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v3, v1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 177
    .local v3, "d":J
    const/4 v7, 0x2

    if-ne v0, v7, :cond_24

    const/16 v0, 0x20

    shl-long v7, v3, v0

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    int-to-long v0, v0

    and-long/2addr v0, v5

    or-long/2addr v0, v7

    goto :goto_25

    :cond_24
    move-wide v0, v3

    :goto_25
    return-wide v0
.end method

.method private blacklist unsignedLongCompare(JJ)Z
    .registers 9
    .param p1, "one"    # J
    .param p3, "two"    # J

    .line 1832
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p1, v0

    add-long/2addr v0, p3

    cmp-long v0, v2, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method


# virtual methods
.method blacklist add(Ljava/math/MutableBigInteger;)V
    .registers 19
    .param p1, "addend"    # Ljava/math/MutableBigInteger;

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 739
    .local v2, "x":I
    iget v3, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 740
    .local v3, "y":I
    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    iget v5, v1, Ljava/math/MutableBigInteger;->intLen:I

    if-le v4, v5, :cond_f

    goto :goto_10

    :cond_f
    move v4, v5

    .line 741
    .local v4, "resultLen":I
    :goto_10
    iget-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    array-length v6, v5

    if-ge v6, v4, :cond_17

    new-array v5, v4, [I

    .line 743
    .local v5, "result":[I
    :cond_17
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 745
    .local v6, "rstart":I
    const-wide/16 v8, 0x0

    .line 748
    .local v8, "carry":J
    :goto_1c
    const/16 v10, 0x20

    const-wide v11, 0xffffffffL

    if-lez v2, :cond_4f

    if-lez v3, :cond_4f

    .line 749
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 750
    iget-object v13, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v2

    aget v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v11

    iget-object v15, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v7, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v3

    aget v7, v15, v7

    move v15, v2

    move/from16 v16, v3

    .end local v2    # "x":I
    .end local v3    # "y":I
    .local v15, "x":I
    .local v16, "y":I
    int-to-long v2, v7

    and-long/2addr v2, v11

    add-long/2addr v13, v2

    add-long/2addr v13, v8

    .line 752
    .local v13, "sum":J
    add-int/lit8 v2, v6, -0x1

    .end local v6    # "rstart":I
    .local v2, "rstart":I
    long-to-int v3, v13

    aput v3, v5, v6

    .line 753
    ushr-long v8, v13, v10

    move v6, v2

    move v2, v15

    move/from16 v3, v16

    const/4 v7, 0x1

    goto :goto_1c

    .line 757
    .end local v13    # "sum":J
    .end local v15    # "x":I
    .end local v16    # "y":I
    .local v2, "x":I
    .restart local v3    # "y":I
    .restart local v6    # "rstart":I
    :cond_4f
    :goto_4f
    const-wide/16 v13, 0x0

    if-lez v2, :cond_76

    .line 758
    add-int/lit8 v2, v2, -0x1

    .line 759
    cmp-long v7, v8, v13

    if-nez v7, :cond_63

    iget-object v7, v0, Ljava/math/MutableBigInteger;->value:[I

    if-ne v5, v7, :cond_63

    iget v7, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v2

    if-ne v6, v7, :cond_63

    .line 760
    return-void

    .line 761
    :cond_63
    iget-object v7, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v13, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v13, v2

    aget v7, v7, v13

    int-to-long v13, v7

    and-long/2addr v13, v11

    add-long/2addr v13, v8

    .line 762
    .restart local v13    # "sum":J
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "rstart":I
    .local v7, "rstart":I
    long-to-int v15, v13

    aput v15, v5, v6

    .line 763
    ushr-long v8, v13, v10

    move v6, v7

    goto :goto_4f

    .line 765
    .end local v7    # "rstart":I
    .end local v13    # "sum":J
    .restart local v6    # "rstart":I
    :cond_76
    :goto_76
    if-lez v3, :cond_8f

    .line 766
    add-int/lit8 v3, v3, -0x1

    .line 767
    iget-object v7, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v15, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v15, v3

    aget v7, v7, v15

    int-to-long v13, v7

    and-long/2addr v13, v11

    add-long/2addr v13, v8

    .line 768
    .restart local v13    # "sum":J
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "rstart":I
    .restart local v7    # "rstart":I
    long-to-int v15, v13

    aput v15, v5, v6

    .line 769
    ushr-long v8, v13, v10

    move v6, v7

    const-wide/16 v13, 0x0

    goto :goto_76

    .line 772
    .end local v7    # "rstart":I
    .end local v13    # "sum":J
    .restart local v6    # "rstart":I
    :cond_8f
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_ac

    .line 773
    add-int/lit8 v4, v4, 0x1

    .line 774
    array-length v7, v5

    if-ge v7, v4, :cond_a6

    .line 775
    new-array v7, v4, [I

    .line 778
    .local v7, "temp":[I
    array-length v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v11, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 779
    aput v12, v7, v11

    .line 780
    move-object v5, v7

    .line 781
    .end local v7    # "temp":[I
    goto :goto_ac

    .line 782
    :cond_a6
    const/4 v12, 0x1

    add-int/lit8 v7, v6, -0x1

    .end local v6    # "rstart":I
    .local v7, "rstart":I
    aput v12, v5, v6

    move v6, v7

    .line 786
    .end local v7    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_ac
    :goto_ac
    iput-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 787
    iput v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 788
    array-length v7, v5

    sub-int/2addr v7, v4

    iput v7, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 789
    return-void
.end method

.method blacklist addDisjoint(Ljava/math/MutableBigInteger;I)V
    .registers 13
    .param p1, "addend"    # Ljava/math/MutableBigInteger;
    .param p2, "n"    # I

    .line 863
    invoke-virtual {p1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 864
    return-void

    .line 866
    :cond_7
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 867
    .local v0, "x":I
    iget v1, p1, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v1, p2

    .line 868
    .local v1, "y":I
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-le v2, v1, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    .line 870
    .local v3, "resultLen":I
    :goto_13
    iget-object v4, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v5, v3, :cond_1c

    .line 871
    new-array v2, v3, [I

    .local v2, "result":[I
    goto :goto_26

    .line 873
    .end local v2    # "result":[I
    :cond_1c
    iget-object v5, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 874
    .local v5, "result":[I
    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v2

    array-length v2, v4

    invoke-static {v4, v7, v2, v6}, Ljava/util/Arrays;->fill([IIII)V

    move-object v2, v5

    .line 877
    .end local v5    # "result":[I
    .restart local v2    # "result":[I
    :goto_26
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    .line 880
    .local v4, "rstart":I
    iget-object v5, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/lit8 v8, v4, 0x1

    sub-int/2addr v8, v0

    invoke-static {v5, v7, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    sub-int/2addr v1, v0

    .line 882
    sub-int/2addr v4, v0

    .line 884
    iget-object v5, p1, Ljava/math/MutableBigInteger;->value:[I

    array-length v5, v5

    iget v7, p1, Ljava/math/MutableBigInteger;->offset:I

    sub-int/2addr v5, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 885
    .local v5, "len":I
    iget-object v7, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v8, p1, Ljava/math/MutableBigInteger;->offset:I

    add-int/lit8 v9, v4, 0x1

    sub-int/2addr v9, v1

    invoke-static {v7, v8, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    add-int/lit8 v7, v4, 0x1

    sub-int/2addr v7, v1

    add-int/2addr v7, v5

    .local v7, "i":I
    :goto_4d
    add-int/lit8 v8, v4, 0x1

    if-ge v7, v8, :cond_56

    .line 889
    aput v6, v2, v7

    .line 888
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 891
    .end local v7    # "i":I
    :cond_56
    iput-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 892
    iput v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 893
    array-length v6, v2

    sub-int/2addr v6, v3

    iput v6, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 894
    return-void
.end method

.method blacklist addLower(Ljava/math/MutableBigInteger;I)V
    .registers 7
    .param p1, "addend"    # Ljava/math/MutableBigInteger;
    .param p2, "n"    # I

    .line 900
    new-instance v0, Ljava/math/MutableBigInteger;

    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 901
    .local v0, "a":Ljava/math/MutableBigInteger;
    iget v1, v0, Ljava/math/MutableBigInteger;->offset:I

    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int v3, v1, v2

    if-lt v3, p2, :cond_13

    .line 902
    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    iput v1, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 903
    iput p2, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 905
    :cond_13
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 906
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 907
    return-void
.end method

.method blacklist addShifted(Ljava/math/MutableBigInteger;I)V
    .registers 19
    .param p1, "addend"    # Ljava/math/MutableBigInteger;
    .param p2, "n"    # I

    .line 797
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 798
    return-void

    .line 801
    :cond_b
    iget v2, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 802
    .local v2, "x":I
    iget v3, v1, Ljava/math/MutableBigInteger;->intLen:I

    add-int v3, v3, p2

    .line 803
    .local v3, "y":I
    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    if-le v4, v3, :cond_16

    goto :goto_17

    :cond_16
    move v4, v3

    .line 804
    .local v4, "resultLen":I
    :goto_17
    iget-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    array-length v6, v5

    if-ge v6, v4, :cond_1e

    new-array v5, v4, [I

    .line 806
    .local v5, "result":[I
    :cond_1e
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 808
    .local v6, "rstart":I
    const-wide/16 v8, 0x0

    .line 811
    .local v8, "carry":J
    :goto_23
    const-wide v12, 0xffffffffL

    if-lez v2, :cond_58

    if-lez v3, :cond_58

    .line 812
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 813
    iget v14, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int v15, v3, v14

    iget-object v7, v1, Ljava/math/MutableBigInteger;->value:[I

    array-length v11, v7

    if-ge v15, v11, :cond_3d

    add-int/2addr v14, v3

    aget v11, v7, v14

    goto :goto_3e

    :cond_3d
    const/4 v11, 0x0

    :goto_3e
    move v7, v11

    .line 814
    .local v7, "bval":I
    iget-object v11, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v2

    aget v11, v11, v14

    int-to-long v14, v11

    and-long/2addr v14, v12

    int-to-long v10, v7

    and-long/2addr v10, v12

    add-long/2addr v14, v10

    add-long/2addr v14, v8

    .line 816
    .local v14, "sum":J
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "rstart":I
    .local v10, "rstart":I
    long-to-int v11, v14

    aput v11, v5, v6

    .line 817
    const/16 v6, 0x20

    ushr-long v8, v14, v6

    .line 818
    .end local v7    # "bval":I
    move v6, v10

    const/4 v7, 0x1

    goto :goto_23

    .line 821
    .end local v10    # "rstart":I
    .end local v14    # "sum":J
    .restart local v6    # "rstart":I
    :cond_58
    :goto_58
    const-wide/16 v10, 0x0

    if-lez v2, :cond_81

    .line 822
    add-int/lit8 v2, v2, -0x1

    .line 823
    cmp-long v7, v8, v10

    if-nez v7, :cond_6c

    iget-object v7, v0, Ljava/math/MutableBigInteger;->value:[I

    if-ne v5, v7, :cond_6c

    iget v7, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v2

    if-ne v6, v7, :cond_6c

    .line 824
    return-void

    .line 826
    :cond_6c
    iget-object v7, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v2

    aget v7, v7, v10

    int-to-long v10, v7

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 827
    .local v10, "sum":J
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "rstart":I
    .local v7, "rstart":I
    long-to-int v14, v10

    aput v14, v5, v6

    .line 828
    const/16 v6, 0x20

    ushr-long v8, v10, v6

    move v6, v7

    goto :goto_58

    .line 830
    .end local v7    # "rstart":I
    .end local v10    # "sum":J
    .restart local v6    # "rstart":I
    :cond_81
    :goto_81
    if-lez v3, :cond_a3

    .line 831
    add-int/lit8 v3, v3, -0x1

    .line 832
    iget v7, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int v14, v3, v7

    iget-object v15, v1, Ljava/math/MutableBigInteger;->value:[I

    array-length v10, v15

    if-ge v14, v10, :cond_92

    add-int/2addr v7, v3

    aget v7, v15, v7

    goto :goto_93

    :cond_92
    const/4 v7, 0x0

    .line 833
    .local v7, "bval":I
    :goto_93
    int-to-long v10, v7

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 834
    .restart local v10    # "sum":J
    add-int/lit8 v14, v6, -0x1

    .end local v6    # "rstart":I
    .local v14, "rstart":I
    long-to-int v15, v10

    aput v15, v5, v6

    .line 835
    const/16 v15, 0x20

    ushr-long v8, v10, v15

    .line 836
    .end local v7    # "bval":I
    move v6, v14

    const-wide/16 v10, 0x0

    goto :goto_81

    .line 838
    .end local v10    # "sum":J
    .end local v14    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_a3
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_c0

    .line 839
    add-int/lit8 v4, v4, 0x1

    .line 840
    array-length v7, v5

    if-ge v7, v4, :cond_ba

    .line 841
    new-array v7, v4, [I

    .line 844
    .local v7, "temp":[I
    array-length v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v11, v7, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    aput v12, v7, v11

    .line 846
    move-object v5, v7

    .line 847
    .end local v7    # "temp":[I
    goto :goto_c0

    .line 848
    :cond_ba
    const/4 v12, 0x1

    add-int/lit8 v7, v6, -0x1

    .end local v6    # "rstart":I
    .local v7, "rstart":I
    aput v12, v5, v6

    move v6, v7

    .line 852
    .end local v7    # "rstart":I
    .restart local v6    # "rstart":I
    :cond_c0
    :goto_c0
    iput-object v5, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 853
    iput v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 854
    array-length v7, v5

    sub-int/2addr v7, v4

    iput v7, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 855
    return-void
.end method

.method blacklist bitLength()J
    .registers 5

    .line 1426
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_7

    .line 1427
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1428
    :cond_7
    int-to-long v0, v0

    const-wide/16 v2, 0x20

    mul-long/2addr v0, v2

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method blacklist clear()V
    .registers 5

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 243
    const/4 v1, 0x0

    .local v1, "index":I
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v2, v2

    .local v2, "n":I
    :goto_9
    if-ge v1, v2, :cond_12

    .line 244
    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    aput v0, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 245
    .end local v1    # "index":I
    .end local v2    # "n":I
    :cond_12
    return-void
.end method

.method final blacklist compare(Ljava/math/MutableBigInteger;)I
    .registers 11
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 260
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 261
    .local v0, "blen":I
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_8

    .line 262
    return v2

    .line 263
    :cond_8
    const/4 v3, 0x1

    if-le v1, v0, :cond_c

    .line 264
    return v3

    .line 268
    :cond_c
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    .line 269
    .local v1, "bval":[I
    iget v4, p0, Ljava/math/MutableBigInteger;->offset:I

    .local v4, "i":I
    iget v5, p1, Ljava/math/MutableBigInteger;->offset:I

    .local v5, "j":I
    :goto_12
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2e

    .line 270
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v6, v6, v4

    const/high16 v7, -0x80000000

    add-int/2addr v6, v7

    .line 271
    .local v6, "b1":I
    aget v8, v1, v5

    add-int/2addr v8, v7

    .line 272
    .local v8, "b2":I
    if-ge v6, v8, :cond_26

    .line 273
    return v2

    .line 274
    :cond_26
    if-le v6, v8, :cond_29

    .line 275
    return v3

    .line 269
    .end local v6    # "b1":I
    .end local v8    # "b2":I
    :cond_29
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 277
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2e
    const/4 v2, 0x0

    return v2
.end method

.method final blacklist compareHalf(Ljava/math/MutableBigInteger;)I
    .registers 22
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 314
    .local v2, "blen":I
    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 315
    .local v3, "len":I
    const/4 v5, -0x1

    if-gtz v3, :cond_11

    .line 316
    if-gtz v2, :cond_f

    const/4 v4, 0x0

    goto :goto_10

    :cond_f
    move v4, v5

    :goto_10
    return v4

    .line 317
    :cond_11
    const/4 v6, 0x1

    if-le v3, v2, :cond_15

    .line 318
    return v6

    .line 319
    :cond_15
    add-int/lit8 v7, v2, -0x1

    if-ge v3, v7, :cond_1a

    .line 320
    return v5

    .line 321
    :cond_1a
    iget-object v7, v1, Ljava/math/MutableBigInteger;->value:[I

    .line 322
    .local v7, "bval":[I
    const/4 v8, 0x0

    .line 323
    .local v8, "bstart":I
    const/4 v9, 0x0

    .line 325
    .local v9, "carry":I
    if-eq v3, v2, :cond_2a

    .line 326
    aget v10, v7, v8

    if-ne v10, v6, :cond_29

    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 328
    const/high16 v9, -0x80000000

    goto :goto_2a

    .line 330
    :cond_29
    return v5

    .line 334
    :cond_2a
    :goto_2a
    iget-object v10, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 335
    .local v10, "val":[I
    iget v11, v0, Ljava/math/MutableBigInteger;->offset:I

    .local v11, "i":I
    move v12, v8

    .local v12, "j":I
    :goto_2f
    iget v13, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v13, v3

    if-ge v11, v13, :cond_61

    .line 336
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .local v13, "j":I
    aget v12, v7, v12

    .line 337
    .local v12, "bv":I
    ushr-int/lit8 v14, v12, 0x1

    add-int/2addr v14, v9

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    .line 338
    .local v14, "hb":J
    add-int/lit8 v18, v11, 0x1

    .end local v11    # "i":I
    .local v18, "i":I
    aget v11, v10, v11

    int-to-long v4, v11

    and-long v4, v4, v16

    .line 339
    .local v4, "v":J
    cmp-long v11, v4, v14

    if-eqz v11, :cond_58

    .line 340
    cmp-long v11, v4, v14

    if-gez v11, :cond_55

    const/16 v19, -0x1

    goto :goto_57

    :cond_55
    move/from16 v19, v6

    :goto_57
    return v19

    .line 341
    :cond_58
    and-int/lit8 v11, v12, 0x1

    shl-int/lit8 v9, v11, 0x1f

    .line 342
    .end local v4    # "v":J
    .end local v12    # "bv":I
    .end local v14    # "hb":J
    move v12, v13

    move/from16 v11, v18

    const/4 v5, -0x1

    goto :goto_2f

    .line 343
    .end local v13    # "j":I
    .end local v18    # "i":I
    :cond_61
    if-nez v9, :cond_65

    const/4 v4, 0x0

    goto :goto_66

    :cond_65
    const/4 v4, -0x1

    :goto_66
    return v4
.end method

.method blacklist copyValue(Ljava/math/MutableBigInteger;)V
    .registers 7
    .param p1, "src"    # Ljava/math/MutableBigInteger;

    .line 452
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    .line 453
    .local v0, "len":I
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    if-ge v1, v0, :cond_b

    .line 454
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 455
    :cond_b
    iget-object v1, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p1, Ljava/math/MutableBigInteger;->offset:I

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 457
    iput v4, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 458
    return-void
.end method

.method blacklist copyValue([I)V
    .registers 5
    .param p1, "val"    # [I

    .line 465
    array-length v0, p1

    .line 466
    .local v0, "len":I
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v1, v1

    if-ge v1, v0, :cond_a

    .line 467
    new-array v1, v0, [I

    iput-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 468
    :cond_a
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 470
    iput v2, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 471
    return-void
.end method

.method blacklist divide(JLjava/math/MutableBigInteger;)J
    .registers 9
    .param p1, "v"    # J
    .param p3, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1439
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_35

    .line 1443
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v2, :cond_10

    .line 1444
    const/4 v2, 0x0

    iput v2, p3, Ljava/math/MutableBigInteger;->offset:I

    iput v2, p3, Ljava/math/MutableBigInteger;->intLen:I

    .line 1445
    return-wide v0

    .line 1447
    :cond_10
    cmp-long v0, p1, v0

    if-gez v0, :cond_15

    .line 1448
    neg-long p1, p1

    .line 1450
    :cond_15
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    .line 1451
    .local v0, "d":I
    invoke-virtual {p3}, Ljava/math/MutableBigInteger;->clear()V

    .line 1453
    if-nez v0, :cond_2c

    .line 1454
    long-to-int v1, p1

    invoke-virtual {p0, v1, p3}, Ljava/math/MutableBigInteger;->divideOneWord(ILjava/math/MutableBigInteger;)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1

    .line 1456
    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Ljava/math/MutableBigInteger;->divideLongMagnitude(JLjava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    invoke-direct {v1}, Ljava/math/MutableBigInteger;->toLong()J

    move-result-wide v1

    return-wide v1

    .line 1440
    .end local v0    # "d":I
    :cond_35
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 4
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;
    .registers 6
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;
    .param p3, "needRemainder"    # Z

    .line 1151
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    const/16 v1, 0x50

    if-lt v0, v1, :cond_13

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v1, v0

    const/16 v0, 0x28

    if-ge v1, v0, :cond_e

    goto :goto_13

    .line 1155
    :cond_e
    invoke-virtual {p0, p1, p2}, Ljava/math/MutableBigInteger;->divideAndRemainderBurnikelZiegler(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0

    .line 1153
    :cond_13
    :goto_13
    invoke-virtual {p0, p1, p2, p3}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist divideAndRemainderBurnikelZiegler(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 21
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 1243
    .local v3, "r":I
    iget v4, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1246
    .local v4, "s":I
    const/4 v5, 0x0

    iput v5, v2, Ljava/math/MutableBigInteger;->intLen:I

    iput v5, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1248
    if-ge v3, v4, :cond_12

    .line 1249
    return-object v0

    .line 1256
    :cond_12
    div-int/lit8 v5, v4, 0x50

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    shl-int v5, v6, v5

    .line 1258
    .local v5, "m":I
    add-int v7, v4, v5

    sub-int/2addr v7, v6

    div-int/2addr v7, v5

    .line 1259
    .local v7, "j":I
    mul-int v6, v7, v5

    .line 1260
    .local v6, "n":I
    const-wide/16 v8, 0x20

    int-to-long v10, v6

    mul-long/2addr v10, v8

    .line 1261
    .local v10, "n32":J
    const-wide/16 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v12

    sub-long v12, v10, v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    .line 1262
    .local v8, "sigma":I
    new-instance v9, Ljava/math/MutableBigInteger;

    invoke-direct {v9, v1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1263
    .local v9, "bShifted":Ljava/math/MutableBigInteger;
    invoke-virtual {v9, v8}, Ljava/math/MutableBigInteger;->safeLeftShift(I)V

    .line 1264
    new-instance v12, Ljava/math/MutableBigInteger;

    invoke-direct {v12, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1265
    .local v12, "aShifted":Ljava/math/MutableBigInteger;
    invoke-virtual {v12, v8}, Ljava/math/MutableBigInteger;->safeLeftShift(I)V

    .line 1268
    invoke-virtual {v12}, Ljava/math/MutableBigInteger;->bitLength()J

    move-result-wide v13

    add-long/2addr v13, v10

    div-long/2addr v13, v10

    long-to-int v13, v13

    .line 1269
    .local v13, "t":I
    const/4 v14, 0x2

    if-ge v13, v14, :cond_4f

    .line 1270
    const/4 v13, 0x2

    .line 1274
    :cond_4f
    add-int/lit8 v14, v13, -0x1

    invoke-direct {v12, v14, v13, v6}, Ljava/math/MutableBigInteger;->getBlock(III)Ljava/math/MutableBigInteger;

    move-result-object v14

    .line 1277
    .local v14, "a1":Ljava/math/MutableBigInteger;
    add-int/lit8 v15, v13, -0x2

    invoke-direct {v12, v15, v13, v6}, Ljava/math/MutableBigInteger;->getBlock(III)Ljava/math/MutableBigInteger;

    move-result-object v15

    .line 1278
    .local v15, "z":Ljava/math/MutableBigInteger;
    invoke-virtual {v15, v14, v6}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1281
    new-instance v16, Ljava/math/MutableBigInteger;

    invoke-direct/range {v16 .. v16}, Ljava/math/MutableBigInteger;-><init>()V

    move-object/from16 v17, v16

    .line 1283
    .local v17, "qi":Ljava/math/MutableBigInteger;
    add-int/lit8 v16, v13, -0x2

    .local v16, "i":I
    :goto_67
    if-lez v16, :cond_8a

    .line 1285
    move-object/from16 v0, v17

    .end local v17    # "qi":Ljava/math/MutableBigInteger;
    .local v0, "qi":Ljava/math/MutableBigInteger;
    invoke-direct {v15, v9, v0}, Ljava/math/MutableBigInteger;->divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    .line 1288
    .local v1, "ri":Ljava/math/MutableBigInteger;
    move/from16 v17, v3

    .end local v3    # "r":I
    .local v17, "r":I
    add-int/lit8 v3, v16, -0x1

    invoke-direct {v12, v3, v13, v6}, Ljava/math/MutableBigInteger;->getBlock(III)Ljava/math/MutableBigInteger;

    move-result-object v15

    .line 1289
    invoke-virtual {v15, v1, v6}, Ljava/math/MutableBigInteger;->addDisjoint(Ljava/math/MutableBigInteger;I)V

    .line 1290
    mul-int v3, v16, v6

    invoke-virtual {v2, v0, v3}, Ljava/math/MutableBigInteger;->addShifted(Ljava/math/MutableBigInteger;I)V

    .line 1283
    add-int/lit8 v16, v16, -0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    goto :goto_67

    .end local v0    # "qi":Ljava/math/MutableBigInteger;
    .end local v1    # "ri":Ljava/math/MutableBigInteger;
    .restart local v3    # "r":I
    .local v17, "qi":Ljava/math/MutableBigInteger;
    :cond_8a
    move-object/from16 v0, v17

    .line 1293
    .end local v16    # "i":I
    .end local v17    # "qi":Ljava/math/MutableBigInteger;
    .restart local v0    # "qi":Ljava/math/MutableBigInteger;
    invoke-direct {v15, v9, v0}, Ljava/math/MutableBigInteger;->divide2n1n(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v1

    .line 1294
    .restart local v1    # "ri":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v0}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 1296
    invoke-virtual {v1, v8}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1297
    return-object v1
.end method

.method blacklist divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 4
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1163
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;
    .registers 9
    .param p1, "b"    # Ljava/math/MutableBigInteger;
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;
    .param p3, "needRemainder"    # Z

    .line 1178
    iget v0, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_90

    .line 1182
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 1183
    iput v2, p2, Ljava/math/MutableBigInteger;->offset:I

    iput v2, p2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1184
    if-eqz p3, :cond_15

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    :cond_15
    return-object v1

    .line 1187
    :cond_16
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v0

    .line 1189
    .local v0, "cmp":I
    if-gez v0, :cond_28

    .line 1190
    iput v2, p2, Ljava/math/MutableBigInteger;->offset:I

    iput v2, p2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1191
    if-eqz p3, :cond_27

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    :cond_27
    return-object v1

    .line 1194
    :cond_28
    const/4 v3, 0x1

    if-nez v0, :cond_3b

    .line 1195
    iget-object v4, p2, Ljava/math/MutableBigInteger;->value:[I

    iput v3, p2, Ljava/math/MutableBigInteger;->intLen:I

    aput v3, v4, v2

    .line 1196
    iput v2, p2, Ljava/math/MutableBigInteger;->offset:I

    .line 1197
    if-eqz p3, :cond_3a

    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    :cond_3a
    return-object v1

    .line 1200
    :cond_3b
    invoke-virtual {p2}, Ljava/math/MutableBigInteger;->clear()V

    .line 1202
    iget v2, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v2, v3, :cond_5d

    .line 1203
    iget-object v2, p1, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p1, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-virtual {p0, v2, p2}, Ljava/math/MutableBigInteger;->divideOneWord(ILjava/math/MutableBigInteger;)I

    move-result v2

    .line 1204
    .local v2, "r":I
    if-eqz p3, :cond_5c

    .line 1205
    if-nez v2, :cond_56

    .line 1206
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    return-object v1

    .line 1207
    :cond_56
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v2}, Ljava/math/MutableBigInteger;-><init>(I)V

    return-object v1

    .line 1209
    :cond_5c
    return-object v1

    .line 1214
    .end local v2    # "r":I
    :cond_5d
    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_8b

    .line 1215
    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v1

    invoke-direct {p1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1216
    .local v1, "trailingZeroBits":I
    const/16 v2, 0x60

    if-lt v1, v2, :cond_8b

    .line 1217
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1218
    .local v2, "a":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    move-object p1, v3

    .line 1219
    invoke-virtual {v2, v1}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1220
    invoke-virtual {p1, v1}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1221
    invoke-virtual {v2, p1, p2}, Ljava/math/MutableBigInteger;->divideKnuth(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 1222
    .local v3, "r":Ljava/math/MutableBigInteger;
    invoke-virtual {v3, v1}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 1223
    return-object v3

    .line 1227
    .end local v1    # "trailingZeroBits":I
    .end local v2    # "a":Ljava/math/MutableBigInteger;
    .end local v3    # "r":Ljava/math/MutableBigInteger;
    :cond_8b
    invoke-direct {p0, p1, p2, p3}, Ljava/math/MutableBigInteger;->divideMagnitude(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;Z)Ljava/math/MutableBigInteger;

    move-result-object v1

    return-object v1

    .line 1179
    .end local v0    # "cmp":I
    :cond_90
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger divide by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist divideOneWord(ILjava/math/MutableBigInteger;)I
    .registers 23
    .param p1, "divisor"    # I
    .param p2, "quotient"    # Ljava/math/MutableBigInteger;

    .line 1086
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    int-to-long v3, v1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 1089
    .local v3, "divisorLong":J
    iget v7, v0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v7, v8, :cond_2f

    .line 1090
    iget-object v7, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v7, v7, v10

    int-to-long v10, v7

    and-long/2addr v5, v10

    .line 1091
    .local v5, "dividendValue":J
    div-long v10, v5, v3

    long-to-int v7, v10

    .line 1092
    .local v7, "q":I
    int-to-long v10, v7

    mul-long/2addr v10, v3

    sub-long v10, v5, v10

    long-to-int v10, v10

    .line 1093
    .local v10, "r":I
    iget-object v11, v2, Ljava/math/MutableBigInteger;->value:[I

    aput v7, v11, v9

    .line 1094
    if-nez v7, :cond_2a

    move v8, v9

    :cond_2a
    iput v8, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1095
    iput v9, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1096
    return v10

    .line 1099
    .end local v5    # "dividendValue":J
    .end local v7    # "q":I
    .end local v10    # "r":I
    :cond_2f
    iget-object v8, v2, Ljava/math/MutableBigInteger;->value:[I

    array-length v8, v8

    if-ge v8, v7, :cond_38

    .line 1100
    new-array v8, v7, [I

    iput-object v8, v2, Ljava/math/MutableBigInteger;->value:[I

    .line 1101
    :cond_38
    iput v9, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1102
    iput v7, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1105
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v7

    .line 1107
    .local v7, "shift":I
    iget-object v8, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    aget v8, v8, v10

    .line 1108
    .local v8, "rem":I
    int-to-long v10, v8

    and-long/2addr v10, v5

    .line 1109
    .local v10, "remLong":J
    cmp-long v12, v10, v3

    if-gez v12, :cond_51

    .line 1110
    iget-object v12, v2, Ljava/math/MutableBigInteger;->value:[I

    aput v9, v12, v9

    goto :goto_62

    .line 1112
    :cond_51
    iget-object v12, v2, Ljava/math/MutableBigInteger;->value:[I

    div-long v13, v10, v3

    long-to-int v13, v13

    aput v13, v12, v9

    .line 1113
    aget v9, v12, v9

    int-to-long v12, v9

    mul-long/2addr v12, v3

    sub-long v12, v10, v12

    long-to-int v8, v12

    .line 1114
    int-to-long v12, v8

    and-long v10, v12, v5

    .line 1116
    :goto_62
    iget v9, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 1117
    .local v9, "xlen":I
    :goto_64
    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_b8

    .line 1118
    const/16 v12, 0x20

    shl-long v13, v10, v12

    iget-object v15, v0, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v0, Ljava/math/MutableBigInteger;->offset:I

    iget v5, v0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    aget v5, v15, v12

    int-to-long v5, v5

    const-wide v16, 0xffffffffL

    and-long v5, v5, v16

    or-long/2addr v5, v13

    .line 1121
    .local v5, "dividendEstimate":J
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-ltz v12, :cond_90

    .line 1122
    div-long v12, v5, v3

    long-to-int v12, v12

    .line 1123
    .local v12, "q":I
    int-to-long v13, v12

    mul-long/2addr v13, v3

    sub-long v13, v5, v13

    long-to-int v8, v13

    move-wide/from16 v18, v3

    goto :goto_a5

    .line 1125
    .end local v12    # "q":I
    :cond_90
    invoke-static {v5, v6, v1}, Ljava/math/MutableBigInteger;->divWord(JI)J

    move-result-wide v12

    .line 1126
    .local v12, "tmp":J
    move-wide/from16 v18, v3

    const-wide v14, 0xffffffffL

    .end local v3    # "divisorLong":J
    .local v18, "divisorLong":J
    and-long v3, v12, v14

    long-to-int v3, v3

    .line 1127
    .local v3, "q":I
    const/16 v4, 0x20

    ushr-long v14, v12, v4

    long-to-int v4, v14

    move v12, v3

    move v8, v4

    .line 1129
    .end local v3    # "q":I
    .local v12, "q":I
    :goto_a5
    iget-object v3, v2, Ljava/math/MutableBigInteger;->value:[I

    iget v4, v0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v4, v9

    aput v12, v3, v4

    .line 1130
    int-to-long v3, v8

    const-wide v13, 0xffffffffL

    and-long v10, v3, v13

    .line 1131
    .end local v5    # "dividendEstimate":J
    .end local v12    # "q":I
    move-wide v5, v13

    move-wide/from16 v3, v18

    goto :goto_64

    .line 1133
    .end local v18    # "divisorLong":J
    .local v3, "divisorLong":J
    :cond_b8
    move-wide/from16 v18, v3

    .end local v3    # "divisorLong":J
    .restart local v18    # "divisorLong":J
    invoke-virtual/range {p2 .. p2}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1135
    if-lez v7, :cond_c2

    .line 1136
    rem-int v3, v8, v1

    return v3

    .line 1138
    :cond_c2
    return v8
.end method

.method blacklist euclidModInverse(I)Ljava/math/MutableBigInteger;
    .registers 15
    .param p1, "k"    # I

    .line 2206
    new-instance v0, Ljava/math/MutableBigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    .line 2207
    .local v0, "b":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, p1}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 2208
    new-instance v2, Ljava/math/MutableBigInteger;

    invoke-direct {v2, v0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2210
    .local v2, "mod":Ljava/math/MutableBigInteger;
    new-instance v3, Ljava/math/MutableBigInteger;

    invoke-direct {v3, p0}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2211
    .local v3, "a":Ljava/math/MutableBigInteger;
    new-instance v4, Ljava/math/MutableBigInteger;

    invoke-direct {v4}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2212
    .local v4, "q":Ljava/math/MutableBigInteger;
    invoke-virtual {v0, v3, v4}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2214
    .local v5, "r":Ljava/math/MutableBigInteger;
    move-object v6, v0

    .line 2216
    .local v6, "swapper":Ljava/math/MutableBigInteger;
    move-object v0, v5

    .line 2217
    move-object v5, v6

    .line 2219
    new-instance v7, Ljava/math/MutableBigInteger;

    invoke-direct {v7, v4}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 2220
    .local v7, "t1":Ljava/math/MutableBigInteger;
    new-instance v8, Ljava/math/MutableBigInteger;

    invoke-direct {v8, v1}, Ljava/math/MutableBigInteger;-><init>(I)V

    .line 2221
    .local v8, "t0":Ljava/math/MutableBigInteger;
    new-instance v9, Ljava/math/MutableBigInteger;

    invoke-direct {v9}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2223
    .local v9, "temp":Ljava/math/MutableBigInteger;
    :goto_2e
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v10

    if-nez v10, :cond_8c

    .line 2224
    invoke-virtual {v3, v0, v4}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2226
    iget v10, v5, Ljava/math/MutableBigInteger;->intLen:I

    const-string v11, "BigInteger not invertible."

    if-eqz v10, :cond_86

    .line 2229
    move-object v6, v5

    .line 2230
    move-object v3, v6

    .line 2232
    iget v10, v4, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v10, v1, :cond_4e

    .line 2233
    iget-object v10, v4, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v4, Ljava/math/MutableBigInteger;->offset:I

    aget v10, v10, v12

    invoke-virtual {v7, v10, v9}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    goto :goto_51

    .line 2235
    :cond_4e
    invoke-virtual {v4, v7, v9}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2236
    :goto_51
    move-object v6, v4

    .line 2237
    move-object v4, v9

    .line 2238
    move-object v9, v6

    .line 2239
    invoke-virtual {v8, v4}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2241
    invoke-virtual {v3}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 2242
    return-object v8

    .line 2244
    :cond_5e
    invoke-virtual {v0, v3, v4}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2246
    iget v10, v5, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v10, :cond_80

    .line 2249
    move-object v6, v0

    .line 2250
    move-object v0, v5

    .line 2252
    iget v10, v4, Ljava/math/MutableBigInteger;->intLen:I

    if-ne v10, v1, :cond_76

    .line 2253
    iget-object v10, v4, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v4, Ljava/math/MutableBigInteger;->offset:I

    aget v10, v10, v11

    invoke-virtual {v8, v10, v9}, Ljava/math/MutableBigInteger;->mul(ILjava/math/MutableBigInteger;)V

    goto :goto_79

    .line 2255
    :cond_76
    invoke-virtual {v4, v8, v9}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2256
    :goto_79
    move-object v6, v4

    move-object v4, v9

    move-object v9, v6

    .line 2258
    invoke-virtual {v7, v4}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    goto :goto_2e

    .line 2247
    :cond_80
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2227
    :cond_86
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2260
    :cond_8c
    invoke-virtual {v2, v7}, Ljava/math/MutableBigInteger;->subtract(Ljava/math/MutableBigInteger;)I

    .line 2261
    return-object v2
.end method

.method blacklist hybridGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 6
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 1875
    move-object v0, p0

    .line 1876
    .local v0, "a":Ljava/math/MutableBigInteger;
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1}, Ljava/math/MutableBigInteger;-><init>()V

    .line 1878
    .local v1, "q":Ljava/math/MutableBigInteger;
    :goto_6
    iget v2, p1, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v2, :cond_20

    .line 1879
    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_19

    .line 1880
    invoke-direct {v0, p1}, Ljava/math/MutableBigInteger;->binaryGCD(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    return-object v2

    .line 1882
    :cond_19
    invoke-virtual {v0, p1, v1}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    .line 1883
    .local v2, "r":Ljava/math/MutableBigInteger;
    move-object v0, p1

    .line 1884
    move-object p1, v2

    .line 1885
    .end local v2    # "r":Ljava/math/MutableBigInteger;
    goto :goto_6

    .line 1886
    :cond_20
    return-object v0
.end method

.method blacklist isEven()Z
    .registers 5

    .line 491
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    aget v0, v2, v3

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    return v1
.end method

.method blacklist isNormal()Z
    .registers 7

    .line 507
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int v2, v0, v1

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v4, v3

    const/4 v5, 0x0

    if-le v2, v4, :cond_d

    .line 508
    return v5

    .line 509
    :cond_d
    const/4 v2, 0x1

    if-nez v0, :cond_11

    .line 510
    return v2

    .line 511
    :cond_11
    aget v0, v3, v1

    if-eqz v0, :cond_16

    move v5, v2

    :cond_16
    return v5
.end method

.method blacklist isOdd()Z
    .registers 6

    .line 498
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    :cond_8
    goto :goto_17

    :cond_9
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    aget v0, v0, v3

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_8

    move v1, v2

    :goto_17
    return v1
.end method

.method blacklist isOne()Z
    .registers 4

    .line 477
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v0, v0, v2

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method blacklist isZero()Z
    .registers 2

    .line 484
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist leftShift(I)V
    .registers 11
    .param p1, "n"    # I

    .line 573
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_5

    .line 574
    return-void

    .line 575
    :cond_5
    ushr-int/lit8 v0, p1, 0x5

    .line 576
    .local v0, "nInts":I
    and-int/lit8 v1, p1, 0x1f

    .line 577
    .local v1, "nBits":I
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v2

    .line 580
    .local v2, "bitsInHighWord":I
    rsub-int/lit8 v3, v2, 0x20

    if-gt p1, v3, :cond_1b

    .line 581
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->primitiveLeftShift(I)V

    .line 582
    return-void

    .line 585
    :cond_1b
    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    .line 586
    .local v3, "newLen":I
    rsub-int/lit8 v4, v2, 0x20

    if-gt v1, v4, :cond_26

    .line 587
    add-int/lit8 v3, v3, -0x1

    .line 588
    :cond_26
    iget-object v4, p0, Ljava/math/MutableBigInteger;->value:[I

    array-length v5, v4

    if-ge v5, v3, :cond_42

    .line 590
    new-array v4, v3, [I

    .line 591
    .local v4, "result":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2e
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v5, v6, :cond_3e

    .line 592
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v5

    aget v6, v6, v7

    aput v6, v4, v5

    .line 591
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 593
    .end local v5    # "i":I
    :cond_3e
    invoke-virtual {p0, v4, v3}, Ljava/math/MutableBigInteger;->setValue([II)V

    .line 594
    .end local v4    # "result":[I
    goto :goto_7a

    :cond_42
    array-length v4, v4

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    if-lt v4, v3, :cond_5c

    .line 596
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4a
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int v7, v3, v6

    if-ge v4, v7, :cond_5b

    .line 597
    iget-object v7, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v8, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    aput v5, v7, v8

    .line 596
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .end local v4    # "i":I
    :cond_5b
    goto :goto_7a

    .line 600
    :cond_5c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5d
    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v4, v6, :cond_6d

    .line 601
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v7, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v7, v4

    aget v7, v6, v7

    aput v7, v6, v4

    .line 600
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 602
    .end local v4    # "i":I
    :cond_6d
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    .restart local v4    # "i":I
    :goto_6f
    if-ge v4, v3, :cond_78

    .line 603
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    aput v5, v6, v4

    .line 602
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 604
    .end local v4    # "i":I
    :cond_78
    iput v5, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 606
    :goto_7a
    iput v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 607
    if-nez v1, :cond_7f

    .line 608
    return-void

    .line 609
    :cond_7f
    rsub-int/lit8 v4, v2, 0x20

    if-gt v1, v4, :cond_87

    .line 610
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->primitiveLeftShift(I)V

    goto :goto_8c

    .line 612
    :cond_87
    rsub-int/lit8 v4, v1, 0x20

    invoke-direct {p0, v4}, Ljava/math/MutableBigInteger;->primitiveRightShift(I)V

    .line 613
    :goto_8c
    return-void
.end method

.method blacklist modInverseMP2(I)Ljava/math/MutableBigInteger;
    .registers 16
    .param p1, "k"    # I

    .line 2026
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isEven()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2029
    const/16 v0, 0x40

    if-le p1, v0, :cond_f

    .line 2030
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->euclidModInverse(I)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0

    .line 2032
    :cond_f
    iget-object v1, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/math/MutableBigInteger;->inverseMod32(I)I

    move-result v1

    .line 2034
    .local v1, "t":I
    const/16 v2, 0x21

    const/16 v4, 0x20

    if-ge p1, v2, :cond_32

    .line 2035
    if-ne p1, v4, :cond_28

    move v0, v1

    goto :goto_2c

    :cond_28
    shl-int v0, v3, p1

    sub-int/2addr v0, v3

    and-int/2addr v0, v1

    .line 2036
    .end local v1    # "t":I
    .local v0, "t":I
    :goto_2c
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, v0}, Ljava/math/MutableBigInteger;-><init>(I)V

    return-object v1

    .line 2039
    .end local v0    # "t":I
    .restart local v1    # "t":I
    :cond_32
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v5, p0, Ljava/math/MutableBigInteger;->offset:I

    iget v6, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int v7, v5, v6

    sub-int/2addr v7, v3

    aget v7, v2, v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 2040
    .local v7, "pLong":J
    const/4 v11, 0x2

    if-le v6, v3, :cond_4e

    .line 2041
    add-int/2addr v5, v6

    sub-int/2addr v5, v11

    aget v2, v2, v5

    int-to-long v5, v2

    shl-long/2addr v5, v4

    or-long/2addr v7, v5

    .line 2042
    :cond_4e
    int-to-long v5, v1

    and-long/2addr v5, v9

    .line 2043
    .local v5, "tLong":J
    const-wide/16 v9, 0x2

    mul-long v12, v7, v5

    sub-long/2addr v9, v12

    mul-long/2addr v5, v9

    .line 2044
    if-ne p1, v0, :cond_5a

    move-wide v9, v5

    goto :goto_61

    :cond_5a
    const-wide/16 v9, 0x1

    shl-long v12, v9, p1

    sub-long/2addr v12, v9

    and-long v9, v5, v12

    :goto_61
    move-wide v5, v9

    .line 2046
    new-instance v0, Ljava/math/MutableBigInteger;

    new-array v2, v11, [I

    invoke-direct {v0, v2}, Ljava/math/MutableBigInteger;-><init>([I)V

    .line 2047
    .local v0, "result":Ljava/math/MutableBigInteger;
    iget-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    const/4 v9, 0x0

    ushr-long v12, v5, v4

    long-to-int v4, v12

    aput v4, v2, v9

    .line 2048
    long-to-int v4, v5

    aput v4, v2, v3

    .line 2049
    iput v11, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 2050
    invoke-virtual {v0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 2051
    return-object v0

    .line 2027
    .end local v0    # "result":Ljava/math/MutableBigInteger;
    .end local v1    # "t":I
    .end local v5    # "tLong":J
    .end local v7    # "pLong":J
    :cond_7a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Non-invertible. (GCD != 1)"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist mul(ILjava/math/MutableBigInteger;)V
    .registers 16
    .param p1, "y"    # I
    .param p2, "z"    # Ljava/math/MutableBigInteger;

    .line 1045
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1046
    invoke-virtual {p2, p0}, Ljava/math/MutableBigInteger;->copyValue(Ljava/math/MutableBigInteger;)V

    .line 1047
    return-void

    .line 1050
    :cond_7
    if-nez p1, :cond_d

    .line 1051
    invoke-virtual {p2}, Ljava/math/MutableBigInteger;->clear()V

    .line 1052
    return-void

    .line 1056
    :cond_d
    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1057
    .local v1, "ylong":J
    iget-object v5, p2, Ljava/math/MutableBigInteger;->value:[I

    array-length v6, v5

    iget v7, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v8, v7, 0x1

    if-ge v6, v8, :cond_22

    add-int/lit8 v5, v7, 0x1

    new-array v5, v5, [I

    goto :goto_23

    .line 1058
    :cond_22
    nop

    :goto_23
    nop

    .line 1059
    .local v5, "zval":[I
    const-wide/16 v8, 0x0

    .line 1060
    .local v8, "carry":J
    sub-int/2addr v7, v0

    .local v7, "i":I
    :goto_27
    if-ltz v7, :cond_40

    .line 1061
    iget-object v6, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v10, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v10, v7

    aget v6, v6, v10

    int-to-long v10, v6

    and-long/2addr v10, v3

    mul-long/2addr v10, v1

    add-long/2addr v10, v8

    .line 1062
    .local v10, "product":J
    add-int/lit8 v6, v7, 0x1

    long-to-int v12, v10

    aput v12, v5, v6

    .line 1063
    const/16 v6, 0x20

    ushr-long v8, v10, v6

    .line 1060
    .end local v10    # "product":J
    add-int/lit8 v7, v7, -0x1

    goto :goto_27

    .line 1066
    .end local v7    # "i":I
    :cond_40
    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-nez v3, :cond_4d

    .line 1067
    iput v0, p2, Ljava/math/MutableBigInteger;->offset:I

    .line 1068
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p2, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_58

    .line 1070
    :cond_4d
    const/4 v3, 0x0

    iput v3, p2, Ljava/math/MutableBigInteger;->offset:I

    .line 1071
    iget v4, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/2addr v4, v0

    iput v4, p2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1072
    long-to-int v0, v8

    aput v0, v5, v3

    .line 1074
    :goto_58
    iput-object v5, p2, Ljava/math/MutableBigInteger;->value:[I

    .line 1075
    return-void
.end method

.method blacklist multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V
    .registers 22
    .param p1, "y"    # Ljava/math/MutableBigInteger;
    .param p2, "z"    # Ljava/math/MutableBigInteger;

    .line 1003
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 1004
    .local v3, "xLen":I
    iget v4, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 1005
    .local v4, "yLen":I
    add-int v5, v3, v4

    .line 1008
    .local v5, "newLen":I
    iget-object v6, v2, Ljava/math/MutableBigInteger;->value:[I

    array-length v6, v6

    if-ge v6, v5, :cond_15

    .line 1009
    new-array v6, v5, [I

    iput-object v6, v2, Ljava/math/MutableBigInteger;->value:[I

    .line 1010
    :cond_15
    const/4 v6, 0x0

    iput v6, v2, Ljava/math/MutableBigInteger;->offset:I

    .line 1011
    iput v5, v2, Ljava/math/MutableBigInteger;->intLen:I

    .line 1014
    const-wide/16 v6, 0x0

    .line 1015
    .local v6, "carry":J
    add-int/lit8 v8, v4, -0x1

    .local v8, "j":I
    add-int v9, v4, v3

    add-int/lit8 v9, v9, -0x1

    .local v9, "k":I
    :goto_22
    const-wide v11, 0xffffffffL

    if-ltz v8, :cond_52

    .line 1016
    iget-object v13, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v14, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v14, v8

    aget v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v13, v11

    iget-object v15, v0, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v16, v3, -0x1

    iget v10, v0, Ljava/math/MutableBigInteger;->offset:I

    add-int v16, v16, v10

    aget v10, v15, v16

    int-to-long v0, v10

    and-long/2addr v0, v11

    mul-long/2addr v13, v0

    add-long/2addr v13, v6

    .line 1018
    .local v13, "product":J
    iget-object v0, v2, Ljava/math/MutableBigInteger;->value:[I

    long-to-int v1, v13

    aput v1, v0, v9

    .line 1019
    const/16 v0, 0x20

    ushr-long v6, v13, v0

    .line 1015
    .end local v13    # "product":J
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_22

    .line 1021
    .end local v8    # "j":I
    .end local v9    # "k":I
    :cond_52
    iget-object v0, v2, Ljava/math/MutableBigInteger;->value:[I

    add-int/lit8 v1, v3, -0x1

    long-to-int v8, v6

    aput v8, v0, v1

    .line 1024
    add-int/lit8 v0, v3, -0x2

    .local v0, "i":I
    :goto_5b
    if-ltz v0, :cond_b5

    .line 1025
    const-wide/16 v6, 0x0

    .line 1026
    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    add-int v8, v4, v0

    .local v8, "k":I
    :goto_63
    if-ltz v1, :cond_9e

    .line 1027
    move-object/from16 v9, p1

    iget-object v10, v9, Ljava/math/MutableBigInteger;->value:[I

    iget v13, v9, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v13, v1

    aget v10, v10, v13

    int-to-long v13, v10

    and-long/2addr v13, v11

    move-object/from16 v10, p0

    iget-object v15, v10, Ljava/math/MutableBigInteger;->value:[I

    iget v11, v10, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v11, v0

    aget v11, v15, v11

    int-to-long v11, v11

    const-wide v15, 0xffffffffL

    and-long/2addr v11, v15

    mul-long/2addr v13, v11

    iget-object v11, v2, Ljava/math/MutableBigInteger;->value:[I

    aget v12, v11, v8

    move/from16 v17, v3

    move/from16 v18, v4

    .end local v3    # "xLen":I
    .end local v4    # "yLen":I
    .local v17, "xLen":I
    .local v18, "yLen":I
    int-to-long v3, v12

    and-long/2addr v3, v15

    add-long/2addr v13, v3

    add-long/2addr v13, v6

    .line 1030
    .restart local v13    # "product":J
    long-to-int v3, v13

    aput v3, v11, v8

    .line 1031
    const/16 v3, 0x20

    ushr-long v6, v13, v3

    .line 1026
    .end local v13    # "product":J
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v8, v8, -0x1

    move-wide v11, v15

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_63

    .end local v17    # "xLen":I
    .end local v18    # "yLen":I
    .restart local v3    # "xLen":I
    .restart local v4    # "yLen":I
    :cond_9e
    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v17, v3

    move/from16 v18, v4

    move-wide v15, v11

    const/16 v3, 0x20

    .line 1033
    .end local v1    # "j":I
    .end local v3    # "xLen":I
    .end local v4    # "yLen":I
    .end local v8    # "k":I
    .restart local v17    # "xLen":I
    .restart local v18    # "yLen":I
    iget-object v1, v2, Ljava/math/MutableBigInteger;->value:[I

    long-to-int v4, v6

    aput v4, v1, v0

    .line 1024
    add-int/lit8 v0, v0, -0x1

    move/from16 v3, v17

    move/from16 v4, v18

    goto :goto_5b

    .line 1037
    .end local v0    # "i":I
    .end local v17    # "xLen":I
    .end local v18    # "yLen":I
    .restart local v3    # "xLen":I
    .restart local v4    # "yLen":I
    :cond_b5
    invoke-virtual/range {p2 .. p2}, Ljava/math/MutableBigInteger;->normalize()V

    .line 1038
    return-void
.end method

.method blacklist mutableModInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;
    .registers 12
    .param p1, "p"    # Ljava/math/MutableBigInteger;

    .line 1981
    invoke-virtual {p1}, Ljava/math/MutableBigInteger;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1982
    invoke-direct {p0, p1}, Ljava/math/MutableBigInteger;->modInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v0

    return-object v0

    .line 1985
    :cond_b
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isEven()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1989
    invoke-direct {p1}, Ljava/math/MutableBigInteger;->getLowestSetBit()I

    move-result v0

    .line 1992
    .local v0, "powersOf2":I
    new-instance v1, Ljava/math/MutableBigInteger;

    invoke-direct {v1, p1}, Ljava/math/MutableBigInteger;-><init>(Ljava/math/MutableBigInteger;)V

    .line 1993
    .local v1, "oddMod":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v0}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 1995
    invoke-virtual {v1}, Ljava/math/MutableBigInteger;->isOne()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1996
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->modInverseMP2(I)Ljava/math/MutableBigInteger;

    move-result-object v2

    return-object v2

    .line 1999
    :cond_28
    invoke-direct {p0, v1}, Ljava/math/MutableBigInteger;->modInverse(Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v2

    .line 2002
    .local v2, "oddPart":Ljava/math/MutableBigInteger;
    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->modInverseMP2(I)Ljava/math/MutableBigInteger;

    move-result-object v3

    .line 2005
    .local v3, "evenPart":Ljava/math/MutableBigInteger;
    invoke-static {v1, v0}, Ljava/math/MutableBigInteger;->modInverseBP2(Ljava/math/MutableBigInteger;I)Ljava/math/MutableBigInteger;

    move-result-object v4

    .line 2006
    .local v4, "y1":Ljava/math/MutableBigInteger;
    invoke-virtual {v1, v0}, Ljava/math/MutableBigInteger;->modInverseMP2(I)Ljava/math/MutableBigInteger;

    move-result-object v5

    .line 2008
    .local v5, "y2":Ljava/math/MutableBigInteger;
    new-instance v6, Ljava/math/MutableBigInteger;

    invoke-direct {v6}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2009
    .local v6, "temp1":Ljava/math/MutableBigInteger;
    new-instance v7, Ljava/math/MutableBigInteger;

    invoke-direct {v7}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2010
    .local v7, "temp2":Ljava/math/MutableBigInteger;
    new-instance v8, Ljava/math/MutableBigInteger;

    invoke-direct {v8}, Ljava/math/MutableBigInteger;-><init>()V

    .line 2012
    .local v8, "result":Ljava/math/MutableBigInteger;
    invoke-virtual {v2, v0}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 2013
    invoke-virtual {v2, v4, v8}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2015
    invoke-virtual {v3, v1, v6}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2016
    invoke-virtual {v6, v5, v7}, Ljava/math/MutableBigInteger;->multiply(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)V

    .line 2018
    invoke-virtual {v8, v7}, Ljava/math/MutableBigInteger;->add(Ljava/math/MutableBigInteger;)V

    .line 2019
    invoke-virtual {v8, p1, v6}, Ljava/math/MutableBigInteger;->divide(Ljava/math/MutableBigInteger;Ljava/math/MutableBigInteger;)Ljava/math/MutableBigInteger;

    move-result-object v9

    return-object v9

    .line 1986
    .end local v0    # "powersOf2":I
    .end local v1    # "oddMod":Ljava/math/MutableBigInteger;
    .end local v2    # "oddPart":Ljava/math/MutableBigInteger;
    .end local v3    # "evenPart":Ljava/math/MutableBigInteger;
    .end local v4    # "y1":Ljava/math/MutableBigInteger;
    .end local v5    # "y2":Ljava/math/MutableBigInteger;
    .end local v6    # "temp1":Ljava/math/MutableBigInteger;
    .end local v7    # "temp2":Ljava/math/MutableBigInteger;
    .end local v8    # "result":Ljava/math/MutableBigInteger;
    :cond_5b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final blacklist normalize()V
    .registers 7

    .line 386
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 387
    iput v1, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 388
    return-void

    .line 391
    :cond_8
    iget v2, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 392
    .local v2, "index":I
    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v3, v3, v2

    if-eqz v3, :cond_11

    .line 393
    return-void

    .line 395
    :cond_11
    add-int/2addr v0, v2

    .line 397
    .local v0, "indexBound":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 398
    if-ge v2, v0, :cond_1c

    iget-object v3, p0, Ljava/math/MutableBigInteger;->value:[I

    aget v3, v3, v2

    if-eqz v3, :cond_12

    .line 400
    :cond_1c
    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    sub-int v4, v2, v3

    .line 401
    .local v4, "numZeros":I
    iget v5, p0, Ljava/math/MutableBigInteger;->intLen:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 402
    if-nez v5, :cond_28

    goto :goto_2a

    :cond_28
    add-int v1, v3, v4

    :goto_2a
    iput v1, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 403
    return-void
.end method

.method blacklist reset()V
    .registers 2

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 252
    return-void
.end method

.method blacklist rightShift(I)V
    .registers 6
    .param p1, "n"    # I

    .line 538
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-nez v0, :cond_5

    .line 539
    return-void

    .line 540
    :cond_5
    ushr-int/lit8 v1, p1, 0x5

    .line 541
    .local v1, "nInts":I
    and-int/lit8 v2, p1, 0x1f

    .line 542
    .local v2, "nBits":I
    sub-int/2addr v0, v1

    iput v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 543
    if-nez v2, :cond_f

    .line 544
    return-void

    .line 545
    :cond_f
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/math/BigInteger;->bitLengthForInt(I)I

    move-result v0

    .line 546
    .local v0, "bitsInHighWord":I
    if-lt v2, v0, :cond_27

    .line 547
    rsub-int/lit8 v3, v2, 0x20

    invoke-direct {p0, v3}, Ljava/math/MutableBigInteger;->primitiveLeftShift(I)V

    .line 548
    iget v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/math/MutableBigInteger;->intLen:I

    goto :goto_2a

    .line 550
    :cond_27
    invoke-direct {p0, v2}, Ljava/math/MutableBigInteger;->primitiveRightShift(I)V

    .line 552
    :goto_2a
    return-void
.end method

.method blacklist safeLeftShift(I)V
    .registers 2
    .param p1, "n"    # I

    .line 558
    if-lez p1, :cond_5

    .line 559
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->leftShift(I)V

    .line 561
    :cond_5
    return-void
.end method

.method blacklist safeRightShift(I)V
    .registers 4
    .param p1, "n"    # I

    .line 526
    div-int/lit8 v0, p1, 0x20

    iget v1, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-lt v0, v1, :cond_a

    .line 527
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->reset()V

    goto :goto_d

    .line 529
    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/MutableBigInteger;->rightShift(I)V

    .line 531
    :goto_d
    return-void
.end method

.method blacklist setInt(II)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "val"    # I

    .line 434
    iget-object v0, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v1, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    .line 435
    return-void
.end method

.method blacklist setValue([II)V
    .registers 4
    .param p1, "val"    # [I
    .param p2, "length"    # I

    .line 442
    iput-object p1, p0, Ljava/math/MutableBigInteger;->value:[I

    .line 443
    iput p2, p0, Ljava/math/MutableBigInteger;->intLen:I

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Ljava/math/MutableBigInteger;->offset:I

    .line 445
    return-void
.end method

.method blacklist subtract(Ljava/math/MutableBigInteger;)I
    .registers 20
    .param p1, "b"    # Ljava/math/MutableBigInteger;

    .line 914
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 916
    .local v1, "a":Ljava/math/MutableBigInteger;
    iget-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 917
    .local v2, "result":[I
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/math/MutableBigInteger;->compare(Ljava/math/MutableBigInteger;)I

    move-result v4

    .line 919
    .local v4, "sign":I
    if-nez v4, :cond_13

    .line 920
    invoke-virtual/range {p0 .. p0}, Ljava/math/MutableBigInteger;->reset()V

    .line 921
    const/4 v5, 0x0

    return v5

    .line 923
    :cond_13
    if-gez v4, :cond_19

    .line 924
    move-object v5, v1

    .line 925
    .local v5, "tmp":Ljava/math/MutableBigInteger;
    move-object/from16 v1, p1

    .line 926
    move-object v3, v5

    .line 929
    .end local v5    # "tmp":Ljava/math/MutableBigInteger;
    .end local p1    # "b":Ljava/math/MutableBigInteger;
    .local v3, "b":Ljava/math/MutableBigInteger;
    :cond_19
    iget v5, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 930
    .local v5, "resultLen":I
    array-length v6, v2

    if-ge v6, v5, :cond_20

    .line 931
    new-array v2, v5, [I

    .line 933
    :cond_20
    const-wide/16 v6, 0x0

    .line 934
    .local v6, "diff":J
    iget v8, v1, Ljava/math/MutableBigInteger;->intLen:I

    .line 935
    .local v8, "x":I
    iget v9, v3, Ljava/math/MutableBigInteger;->intLen:I

    .line 936
    .local v9, "y":I
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    .line 939
    .local v10, "rstart":I
    :goto_29
    const-wide v12, 0xffffffffL

    if-lez v9, :cond_5d

    .line 940
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    .line 942
    iget-object v14, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v15, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v15, v8

    aget v14, v14, v15

    int-to-long v14, v14

    and-long/2addr v14, v12

    iget-object v11, v3, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v3, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v9

    aget v11, v11, v12

    int-to-long v11, v11

    const-wide v16, 0xffffffffL

    and-long v11, v11, v16

    sub-long/2addr v14, v11

    const/16 v11, 0x20

    shr-long v11, v6, v11

    neg-long v11, v11

    long-to-int v11, v11

    int-to-long v11, v11

    sub-long v6, v14, v11

    .line 944
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "rstart":I
    .local v11, "rstart":I
    long-to-int v12, v6

    aput v12, v2, v10

    move v10, v11

    goto :goto_29

    .line 947
    .end local v11    # "rstart":I
    .restart local v10    # "rstart":I
    :cond_5d
    :goto_5d
    if-lez v8, :cond_7f

    .line 948
    add-int/lit8 v8, v8, -0x1

    .line 949
    iget-object v11, v1, Ljava/math/MutableBigInteger;->value:[I

    iget v12, v1, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v12, v8

    aget v11, v11, v12

    int-to-long v11, v11

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    const/16 v15, 0x20

    shr-long v13, v6, v15

    neg-long v13, v13

    long-to-int v13, v13

    int-to-long v13, v13

    sub-long v6, v11, v13

    .line 950
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "rstart":I
    .restart local v11    # "rstart":I
    long-to-int v12, v6

    aput v12, v2, v10

    move v10, v11

    goto :goto_5d

    .line 953
    .end local v11    # "rstart":I
    .restart local v10    # "rstart":I
    :cond_7f
    iput-object v2, v0, Ljava/math/MutableBigInteger;->value:[I

    .line 954
    iput v5, v0, Ljava/math/MutableBigInteger;->intLen:I

    .line 955
    array-length v11, v2

    sub-int/2addr v11, v5

    iput v11, v0, Ljava/math/MutableBigInteger;->offset:I

    .line 956
    invoke-virtual/range {p0 .. p0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 957
    return v4
.end method

.method blacklist toBigDecimal(II)Ljava/math/BigDecimal;
    .registers 15
    .param p1, "sign"    # I
    .param p2, "scale"    # I

    .line 202
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_4a

    if-nez p1, :cond_7

    goto :goto_4a

    .line 204
    :cond_7
    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getMagnitudeArray()[I

    move-result-object v0

    .line 205
    .local v0, "mag":[I
    array-length v1, v0

    .line 206
    .local v1, "len":I
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 209
    .local v2, "d":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_3a

    if-gez v2, :cond_17

    if-ne v1, v3, :cond_17

    goto :goto_3a

    .line 211
    :cond_17
    const-wide v4, 0xffffffffL

    if-ne v1, v3, :cond_2b

    .line 212
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    int-to-long v8, v2

    and-long v3, v8, v4

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    goto :goto_2e

    .line 213
    :cond_2b
    int-to-long v6, v2

    and-long v3, v6, v4

    :goto_2e
    nop

    .line 214
    .local v3, "v":J
    const/4 v5, -0x1

    if-ne p1, v5, :cond_34

    neg-long v5, v3

    goto :goto_35

    :cond_34
    move-wide v5, v3

    :goto_35
    invoke-static {v5, v6, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 210
    .end local v3    # "v":J
    :cond_3a
    :goto_3a
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0, p1}, Ljava/math/BigInteger;-><init>([II)V

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v11, 0x0

    move-object v6, v3

    move v10, p2

    invoke-direct/range {v6 .. v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;JII)V

    return-object v3

    .line 203
    .end local v0    # "mag":[I
    .end local v1    # "len":I
    .end local v2    # "d":I
    :cond_4a
    :goto_4a
    invoke-static {p2}, Ljava/math/BigDecimal;->zeroValueOf(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 193
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->normalize()V

    .line 194
    invoke-virtual {p0}, Ljava/math/MutableBigInteger;->isZero()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method blacklist toBigInteger(I)Ljava/math/BigInteger;
    .registers 4
    .param p1, "sign"    # I

    .line 184
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_11

    if-nez p1, :cond_7

    goto :goto_11

    .line 186
    :cond_7
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getMagnitudeArray()[I

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>([II)V

    return-object v0

    .line 185
    :cond_11
    :goto_11
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method blacklist toCompactValue(I)J
    .registers 12
    .param p1, "sign"    # I

    .line 223
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-eqz v0, :cond_39

    if-nez p1, :cond_7

    goto :goto_39

    .line 225
    :cond_7
    invoke-direct {p0}, Ljava/math/MutableBigInteger;->getMagnitudeArray()[I

    move-result-object v0

    .line 226
    .local v0, "mag":[I
    array-length v1, v0

    .line 227
    .local v1, "len":I
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 230
    .local v2, "d":I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_36

    if-gez v2, :cond_17

    if-ne v1, v3, :cond_17

    goto :goto_36

    .line 232
    :cond_17
    const-wide v4, 0xffffffffL

    if-ne v1, v3, :cond_2b

    .line 233
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    int-to-long v8, v2

    and-long v3, v8, v4

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v3, v6

    goto :goto_2e

    .line 234
    :cond_2b
    int-to-long v6, v2

    and-long v3, v6, v4

    :goto_2e
    nop

    .line 235
    .local v3, "v":J
    const/4 v5, -0x1

    if-ne p1, v5, :cond_34

    neg-long v5, v3

    goto :goto_35

    :cond_34
    move-wide v5, v3

    :goto_35
    return-wide v5

    .line 231
    .end local v3    # "v":J
    :cond_36
    :goto_36
    const-wide/high16 v3, -0x8000000000000000L

    return-wide v3

    .line 224
    .end local v0    # "mag":[I
    .end local v1    # "len":I
    .end local v2    # "d":I
    :cond_39
    :goto_39
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist toIntArray()[I
    .registers 5

    .line 422
    iget v0, p0, Ljava/math/MutableBigInteger;->intLen:I

    new-array v0, v0, [I

    .line 423
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget v2, p0, Ljava/math/MutableBigInteger;->intLen:I

    if-ge v1, v2, :cond_15

    .line 424
    iget-object v2, p0, Ljava/math/MutableBigInteger;->value:[I

    iget v3, p0, Ljava/math/MutableBigInteger;->offset:I

    add-int/2addr v3, v1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 425
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/MutableBigInteger;->toBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 519
    .local v0, "b":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
