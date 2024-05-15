.class public final Lcom/android/org/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static append([BB)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v3, 0x0

    .line 907
    if-nez p0, :cond_9

    .line 909
    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte p1, v2, v3

    return-object v2

    .line 912
    :cond_9
    array-length v0, p0

    .line 913
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 914
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 915
    aput-byte p1, v1, v0

    .line 916
    return-object v1
.end method

.method public static append([II)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 935
    if-nez p0, :cond_9

    .line 937
    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    return-object v2

    .line 940
    :cond_9
    array-length v0, p0

    .line 941
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 942
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 943
    aput p1, v1, v0

    .line 944
    return-object v1
.end method

.method public static append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 949
    if-nez p0, :cond_9

    .line 951
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    return-object v2

    .line 954
    :cond_9
    array-length v0, p0

    .line 955
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 956
    .local v1, "result":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 957
    aput-object p1, v1, v0

    .line 958
    return-object v1
.end method

.method public static append([SS)[S
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .prologue
    const/4 v3, 0x0

    .line 921
    if-nez p0, :cond_9

    .line 923
    const/4 v2, 0x1

    new-array v2, v2, [S

    aput-short p1, v2, v3

    return-object v2

    .line 926
    :cond_9
    array-length v0, p0

    .line 927
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [S

    .line 928
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 929
    aput-short p1, v1, v0

    .line 930
    return-object v1
.end method

.method public static areEqual([B[B)Z
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    if-ne p0, p1, :cond_5

    .line 82
    return v4

    .line 85
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 87
    :cond_9
    return v3

    .line 90
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 92
    return v3

    .line 95
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    if-eq v0, v1, :cond_1d

    .line 97
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1a

    .line 99
    return v3

    .line 95
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 103
    :cond_1d
    return v4
.end method

.method public static areEqual([C[C)Z
    .registers 7
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    if-ne p0, p1, :cond_5

    .line 52
    return v4

    .line 55
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 57
    :cond_9
    return v3

    .line 60
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 62
    return v3

    .line 65
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    if-eq v0, v1, :cond_1d

    .line 67
    aget-char v1, p0, v0

    aget-char v2, p1, v0

    if-eq v1, v2, :cond_1a

    .line 69
    return v3

    .line 65
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 73
    :cond_1d
    return v4
.end method

.method public static areEqual([I[I)Z
    .registers 7
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    if-ne p0, p1, :cond_5

    .line 179
    return v4

    .line 182
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 184
    :cond_9
    return v3

    .line 187
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 189
    return v3

    .line 192
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    if-eq v0, v1, :cond_1d

    .line 194
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_1a

    .line 196
    return v3

    .line 192
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 200
    :cond_1d
    return v4
.end method

.method public static areEqual([J[J)Z
    .registers 10
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    if-ne p0, p1, :cond_5

    .line 209
    return v7

    .line 212
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 214
    :cond_9
    return v6

    .line 217
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 219
    return v6

    .line 222
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    if-eq v0, v1, :cond_1f

    .line 224
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    .line 226
    return v6

    .line 222
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 230
    :cond_1f
    return v7
.end method

.method public static areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 9
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    if-ne p0, p1, :cond_5

    .line 237
    return v6

    .line 239
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 241
    :cond_9
    return v5

    .line 243
    :cond_a
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_f

    .line 245
    return v5

    .line 247
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v3, p0

    if-eq v0, v3, :cond_26

    .line 249
    aget-object v1, p0, v0

    .local v1, "objA":Ljava/lang/Object;
    aget-object v2, p1, v0

    .line 250
    .local v2, "objB":Ljava/lang/Object;
    if-nez v1, :cond_1c

    .line 252
    if-eqz v2, :cond_23

    .line 254
    return v5

    .line 257
    :cond_1c
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 259
    return v5

    .line 247
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 262
    .end local v1    # "objA":Ljava/lang/Object;
    .end local v2    # "objB":Ljava/lang/Object;
    :cond_26
    return v6
.end method

.method public static areEqual([S[S)Z
    .registers 7
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    if-ne p0, p1, :cond_5

    .line 112
    return v4

    .line 115
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 117
    :cond_9
    return v3

    .line 120
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 122
    return v3

    .line 125
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    if-eq v0, v1, :cond_1d

    .line 127
    aget-short v1, p0, v0

    aget-short v2, p1, v0

    if-eq v1, v2, :cond_1a

    .line 129
    return v3

    .line 125
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 133
    :cond_1d
    return v4
.end method

.method public static areEqual([Z[Z)Z
    .registers 7
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    if-ne p0, p1, :cond_5

    .line 22
    return v4

    .line 25
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 27
    :cond_9
    return v3

    .line 30
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 32
    return v3

    .line 35
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    array-length v1, p0

    if-eq v0, v1, :cond_1d

    .line 37
    aget-boolean v1, p0, v0

    aget-boolean v2, p1, v0

    if-eq v1, v2, :cond_1a

    .line 39
    return v3

    .line 35
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 43
    :cond_1d
    return v4
.end method

.method public static clone([B)[B
    .registers 4
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 592
    if-nez p0, :cond_5

    .line 594
    return-object v1

    .line 596
    :cond_5
    array-length v1, p0

    new-array v0, v1, [B

    .line 598
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 600
    return-object v0
.end method

.method public static clone([B[B)[B
    .registers 5
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 618
    if-nez p0, :cond_5

    .line 620
    return-object v0

    .line 622
    :cond_5
    if-eqz p1, :cond_b

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_10

    .line 624
    :cond_b
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 626
    :cond_10
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 627
    return-object p1
.end method

.method public static clone([C)[C
    .registers 4
    .param p0, "data"    # [C

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 605
    if-nez p0, :cond_5

    .line 607
    return-object v1

    .line 609
    :cond_5
    array-length v1, p0

    new-array v0, v1, [C

    .line 611
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 613
    return-object v0
.end method

.method public static clone([I)[I
    .registers 4
    .param p0, "data"    # [I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 666
    if-nez p0, :cond_5

    .line 668
    return-object v1

    .line 670
    :cond_5
    array-length v1, p0

    new-array v0, v1, [I

    .line 672
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 674
    return-object v0
.end method

.method public static clone([J)[J
    .registers 4
    .param p0, "data"    # [J

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 679
    if-nez p0, :cond_5

    .line 681
    return-object v1

    .line 683
    :cond_5
    array-length v1, p0

    new-array v0, v1, [J

    .line 685
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 687
    return-object v0
.end method

.method public static clone([J[J)[J
    .registers 5
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 692
    if-nez p0, :cond_5

    .line 694
    return-object v0

    .line 696
    :cond_5
    if-eqz p1, :cond_b

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_10

    .line 698
    :cond_b
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 700
    :cond_10
    array-length v0, p1

    invoke-static {p0, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 701
    return-object p1
.end method

.method public static clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 4
    .param p0, "data"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 719
    if-nez p0, :cond_5

    .line 721
    return-object v1

    .line 723
    :cond_5
    array-length v1, p0

    new-array v0, v1, [Ljava/math/BigInteger;

    .line 725
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 727
    return-object v0
.end method

.method public static clone([S)[S
    .registers 4
    .param p0, "data"    # [S

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 706
    if-nez p0, :cond_5

    .line 708
    return-object v1

    .line 710
    :cond_5
    array-length v1, p0

    new-array v0, v1, [S

    .line 712
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 714
    return-object v0
.end method

.method public static clone([[B)[[B
    .registers 4
    .param p0, "data"    # [[B

    .prologue
    const/4 v2, 0x0

    .line 632
    if-nez p0, :cond_4

    .line 634
    return-object v2

    .line 637
    :cond_4
    array-length v2, p0

    new-array v0, v2, [[B

    .line 639
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 641
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 644
    :cond_16
    return-object v0
.end method

.method public static clone([[[B)[[[B
    .registers 4
    .param p0, "data"    # [[[B

    .prologue
    const/4 v2, 0x0

    .line 649
    if-nez p0, :cond_4

    .line 651
    return-object v2

    .line 654
    :cond_4
    array-length v2, p0

    new-array v0, v2, [[[B

    .line 656
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 658
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 661
    :cond_16
    return-object v0
.end method

.method public static compareUnsigned([B[B)I
    .registers 11
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 267
    if-ne p0, p1, :cond_6

    .line 269
    return v8

    .line 271
    :cond_6
    if-nez p0, :cond_9

    .line 273
    return v6

    .line 275
    :cond_9
    if-nez p1, :cond_c

    .line 277
    return v7

    .line 279
    :cond_c
    array-length v4, p0

    array-length v5, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 280
    .local v3, "minLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v3, :cond_26

    .line 282
    aget-byte v4, p0, v2

    and-int/lit16 v0, v4, 0xff

    .local v0, "aVal":I
    aget-byte v4, p1, v2

    and-int/lit16 v1, v4, 0xff

    .line 283
    .local v1, "bVal":I
    if-ge v0, v1, :cond_20

    .line 285
    return v6

    .line 287
    :cond_20
    if-le v0, v1, :cond_23

    .line 289
    return v7

    .line 280
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 292
    .end local v0    # "aVal":I
    .end local v1    # "bVal":I
    :cond_26
    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_2b

    .line 294
    return v6

    .line 296
    :cond_2b
    array-length v4, p0

    array-length v5, p1

    if-le v4, v5, :cond_30

    .line 298
    return v7

    .line 300
    :cond_30
    return v8
.end method

.method public static concatenate([B[B)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 965
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 967
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 969
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 970
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 972
    return-object v0

    .line 974
    .end local v0    # "rv":[B
    :cond_14
    if-eqz p1, :cond_1b

    .line 976
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    return-object v1

    .line 980
    :cond_1b
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static concatenate([B[B[B)[B
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .prologue
    const/4 v3, 0x0

    .line 986
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 988
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 990
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 991
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 992
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 994
    return-object v0

    .line 996
    .end local v0    # "rv":[B
    :cond_1f
    if-nez p0, :cond_26

    .line 998
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    return-object v1

    .line 1000
    :cond_26
    if-nez p1, :cond_2d

    .line 1002
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    return-object v1

    .line 1006
    :cond_2d
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static concatenate([B[B[B[B)[B
    .registers 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1012
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    if-eqz p3, :cond_2c

    .line 1014
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 1016
    .local v0, "rv":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1017
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1018
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1019
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1021
    return-object v0

    .line 1023
    .end local v0    # "rv":[B
    :cond_2c
    if-nez p3, :cond_33

    .line 1025
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    return-object v1

    .line 1027
    :cond_33
    if-nez p2, :cond_3a

    .line 1029
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    return-object v1

    .line 1031
    :cond_3a
    if-nez p1, :cond_41

    .line 1033
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    return-object v1

    .line 1037
    :cond_41
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static concatenate([[B)[B
    .registers 8
    .param p0, "arrays"    # [[B

    .prologue
    .line 1043
    const/4 v3, 0x0

    .line 1044
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v4, p0

    if-eq v0, v4, :cond_c

    .line 1046
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/2addr v3, v4

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1049
    :cond_c
    new-array v2, v3, [B

    .line 1051
    .local v2, "rv":[B
    const/4 v1, 0x0

    .line 1052
    .local v1, "offSet":I
    const/4 v0, 0x0

    :goto_10
    array-length v4, p0

    if-eq v0, v4, :cond_23

    .line 1054
    aget-object v4, p0, v0

    aget-object v5, p0, v0

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1055
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/2addr v1, v4

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1058
    :cond_23
    return-object v2
.end method

.method public static concatenate([I[I)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1063
    if-nez p0, :cond_8

    .line 1065
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 1067
    :cond_8
    if-nez p1, :cond_f

    .line 1069
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    return-object v1

    .line 1072
    :cond_f
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 1073
    .local v0, "c":[I
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1074
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1075
    return-object v0
.end method

.method public static constantTimeAreEqual([B[B)Z
    .registers 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    if-ne p0, p1, :cond_5

    .line 150
    return v2

    .line 153
    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_a

    .line 155
    :cond_9
    return v3

    .line 158
    :cond_a
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_f

    .line 160
    return v3

    .line 163
    :cond_f
    const/4 v1, 0x0

    .line 165
    .local v1, "nonEqual":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    array-length v4, p0

    if-eq v0, v4, :cond_1d

    .line 167
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    xor-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 170
    :cond_1d
    if-nez v1, :cond_20

    :goto_1f
    return v2

    :cond_20
    move v2, v3

    goto :goto_1f
.end method

.method public static contains([II)Z
    .registers 4
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 319
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 321
    const/4 v1, 0x1

    return v1

    .line 317
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public static contains([SS)Z
    .registers 4
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 307
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 309
    const/4 v1, 0x1

    return v1

    .line 305
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method public static copyOf([BI)[B
    .registers 5
    .param p0, "data"    # [B
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 732
    new-array v0, p1, [B

    .line 734
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .line 736
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 743
    :goto_9
    return-object v0

    .line 740
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_9
.end method

.method public static copyOf([CI)[C
    .registers 5
    .param p0, "data"    # [C
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 748
    new-array v0, p1, [C

    .line 750
    .local v0, "tmp":[C
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .line 752
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 759
    :goto_9
    return-object v0

    .line 756
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_9
.end method

.method public static copyOf([II)[I
    .registers 5
    .param p0, "data"    # [I
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 764
    new-array v0, p1, [I

    .line 766
    .local v0, "tmp":[I
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .line 768
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 775
    :goto_9
    return-object v0

    .line 772
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_9
.end method

.method public static copyOf([JI)[J
    .registers 5
    .param p0, "data"    # [J
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 780
    new-array v0, p1, [J

    .line 782
    .local v0, "tmp":[J
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .line 784
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 791
    :goto_9
    return-object v0

    .line 788
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_9
.end method

.method public static copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 5
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 796
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 798
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    if-ge p1, v1, :cond_a

    .line 800
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    :goto_9
    return-object v0

    .line 804
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9
.end method

.method public static copyOfRange([BII)[B
    .registers 7
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 823
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 825
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 827
    .local v1, "tmp":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_11

    .line 829
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 836
    :goto_10
    return-object v1

    .line 833
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_10
.end method

.method public static copyOfRange([III)[I
    .registers 7
    .param p0, "data"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 841
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 843
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 845
    .local v1, "tmp":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_11

    .line 847
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 854
    :goto_10
    return-object v1

    .line 851
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_10
.end method

.method public static copyOfRange([JII)[J
    .registers 7
    .param p0, "data"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 859
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 861
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 863
    .local v1, "tmp":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_11

    .line 865
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 872
    :goto_10
    return-object v1

    .line 869
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_10
.end method

.method public static copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 7
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v3, 0x0

    .line 877
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 879
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 881
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    if-ge v2, v0, :cond_11

    .line 883
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 890
    :goto_10
    return-object v1

    .line 887
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10
.end method

.method public static fill([BB)V
    .registers 4
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 333
    aput-byte p1, p0, v0

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    :cond_9
    return-void
.end method

.method public static fill([CC)V
    .registers 4
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .prologue
    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 343
    aput-char p1, p0, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 345
    :cond_9
    return-void
.end method

.method public static fill([II)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 373
    aput p1, p0, v0

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_9
    return-void
.end method

.method public static fill([JJ)V
    .registers 6
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .prologue
    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 353
    aput-wide p1, p0, v0

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    :cond_9
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 363
    aput-short p1, p0, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_9
    return-void
.end method

.method private static getLength(II)I
    .registers 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 895
    sub-int v0, p1, p0

    .line 896
    .local v0, "newLength":I
    if-gez v0, :cond_1d

    .line 898
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 899
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 900
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_1d
    return v0
.end method

.method public static hashCode([B)I
    .registers 4
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 379
    if-nez p0, :cond_4

    .line 381
    return v2

    .line 384
    :cond_4
    array-length v1, p0

    .line 385
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 387
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_11

    .line 389
    mul-int/lit16 v0, v0, 0x101

    .line 390
    aget-byte v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7

    .line 393
    :cond_11
    return v0
.end method

.method public static hashCode([BII)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 398
    if-nez p0, :cond_4

    .line 400
    return v2

    .line 403
    :cond_4
    move v1, p2

    .line 404
    .local v1, "i":I
    add-int/lit8 v0, p2, 0x1

    .line 406
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    .line 408
    mul-int/lit16 v0, v0, 0x101

    .line 409
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    xor-int/2addr v0, v2

    goto :goto_7

    .line 412
    :cond_13
    return v0
.end method

.method public static hashCode([C)I
    .registers 4
    .param p0, "data"    # [C

    .prologue
    const/4 v2, 0x0

    .line 417
    if-nez p0, :cond_4

    .line 419
    return v2

    .line 422
    :cond_4
    array-length v1, p0

    .line 423
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 425
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_11

    .line 427
    mul-int/lit16 v0, v0, 0x101

    .line 428
    aget-char v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7

    .line 431
    :cond_11
    return v0
.end method

.method public static hashCode([I)I
    .registers 4
    .param p0, "data"    # [I

    .prologue
    const/4 v2, 0x0

    .line 448
    if-nez p0, :cond_4

    .line 450
    return v2

    .line 453
    :cond_4
    array-length v1, p0

    .line 454
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 456
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_11

    .line 458
    mul-int/lit16 v0, v0, 0x101

    .line 459
    aget v2, p0, v1

    xor-int/2addr v0, v2

    goto :goto_7

    .line 462
    :cond_11
    return v0
.end method

.method public static hashCode([III)I
    .registers 6
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 467
    if-nez p0, :cond_4

    .line 469
    return v2

    .line 472
    :cond_4
    move v1, p2

    .line 473
    .local v1, "i":I
    add-int/lit8 v0, p2, 0x1

    .line 475
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    .line 477
    mul-int/lit16 v0, v0, 0x101

    .line 478
    add-int v2, p1, v1

    aget v2, p0, v2

    xor-int/2addr v0, v2

    goto :goto_7

    .line 481
    :cond_13
    return v0
.end method

.method public static hashCode([J)I
    .registers 7
    .param p0, "data"    # [J

    .prologue
    const/4 v4, 0x0

    .line 486
    if-nez p0, :cond_4

    .line 488
    return v4

    .line 491
    :cond_4
    array-length v3, p0

    .line 492
    .local v3, "i":I
    add-int/lit8 v2, v3, 0x1

    .line 494
    .local v2, "hc":I
    :goto_7
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1a

    .line 496
    aget-wide v0, p0, v3

    .line 497
    .local v0, "di":J
    mul-int/lit16 v2, v2, 0x101

    .line 498
    long-to-int v4, v0

    xor-int/2addr v2, v4

    .line 499
    mul-int/lit16 v2, v2, 0x101

    .line 500
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    xor-int/2addr v2, v4

    goto :goto_7

    .line 503
    .end local v0    # "di":J
    :cond_1a
    return v2
.end method

.method public static hashCode([JII)I
    .registers 9
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 508
    if-nez p0, :cond_4

    .line 510
    return v4

    .line 513
    :cond_4
    move v3, p2

    .line 514
    .local v3, "i":I
    add-int/lit8 v2, p2, 0x1

    .line 516
    .local v2, "hc":I
    :goto_7
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1c

    .line 518
    add-int v4, p1, v3

    aget-wide v0, p0, v4

    .line 519
    .local v0, "di":J
    mul-int/lit16 v2, v2, 0x101

    .line 520
    long-to-int v4, v0

    xor-int/2addr v2, v4

    .line 521
    mul-int/lit16 v2, v2, 0x101

    .line 522
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    xor-int/2addr v2, v4

    goto :goto_7

    .line 525
    .end local v0    # "di":J
    :cond_1c
    return v2
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 4
    .param p0, "data"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 573
    if-nez p0, :cond_4

    .line 575
    return v2

    .line 578
    :cond_4
    array-length v1, p0

    .line 579
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 581
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_15

    .line 583
    mul-int/lit16 v0, v0, 0x101

    .line 584
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    goto :goto_7

    .line 587
    :cond_15
    return v0
.end method

.method public static hashCode([S)I
    .registers 4
    .param p0, "data"    # [S

    .prologue
    const/4 v2, 0x0

    .line 554
    if-nez p0, :cond_4

    .line 556
    return v2

    .line 559
    :cond_4
    array-length v1, p0

    .line 560
    .local v1, "i":I
    add-int/lit8 v0, v1, 0x1

    .line 562
    .local v0, "hc":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    .line 564
    mul-int/lit16 v0, v0, 0x101

    .line 565
    aget-short v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    goto :goto_7

    .line 568
    :cond_13
    return v0
.end method

.method public static hashCode([[I)I
    .registers 5
    .param p0, "ints"    # [[I

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 440
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 443
    :cond_12
    return v0
.end method

.method public static hashCode([[S)I
    .registers 5
    .param p0, "shorts"    # [[S

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 544
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 546
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 549
    :cond_12
    return v0
.end method

.method public static hashCode([[[S)I
    .registers 5
    .param p0, "shorts"    # [[[S

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 534
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 537
    :cond_12
    return v0
.end method

.method public static prepend([BB)[B
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1080
    if-nez p0, :cond_9

    .line 1082
    new-array v2, v4, [B

    aput-byte p1, v2, v3

    return-object v2

    .line 1085
    :cond_9
    array-length v0, p0

    .line 1086
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [B

    .line 1087
    .local v1, "result":[B
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1088
    aput-byte p1, v1, v3

    .line 1089
    return-object v1
.end method

.method public static prepend([II)[I
    .registers 7
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1108
    if-nez p0, :cond_9

    .line 1110
    new-array v2, v4, [I

    aput p1, v2, v3

    return-object v2

    .line 1113
    :cond_9
    array-length v0, p0

    .line 1114
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 1115
    .local v1, "result":[I
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1116
    aput p1, v1, v3

    .line 1117
    return-object v1
.end method

.method public static prepend([SS)[S
    .registers 7
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1094
    if-nez p0, :cond_9

    .line 1096
    new-array v2, v4, [S

    aput-short p1, v2, v3

    return-object v2

    .line 1099
    :cond_9
    array-length v0, p0

    .line 1100
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [S

    .line 1101
    .local v1, "result":[S
    invoke-static {p0, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 1102
    aput-short p1, v1, v3

    .line 1103
    return-object v1
.end method

.method public static reverse([B)[B
    .registers 6
    .param p0, "a"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1122
    if-nez p0, :cond_4

    .line 1124
    return-object v4

    .line 1127
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v2, p0

    .line 1128
    .local v2, "p2":I
    new-array v3, v2, [B

    .local v3, "result":[B
    move v1, v0

    .line 1130
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_15

    .line 1132
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget-byte v4, p0, v1

    aput-byte v4, v3, v2

    move v1, v0

    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_9

    .line 1135
    :cond_15
    return-object v3
.end method

.method public static reverse([I)[I
    .registers 6
    .param p0, "a"    # [I

    .prologue
    const/4 v4, 0x0

    .line 1140
    if-nez p0, :cond_4

    .line 1142
    return-object v4

    .line 1145
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v2, p0

    .line 1146
    .local v2, "p2":I
    new-array v3, v2, [I

    .local v3, "result":[I
    move v1, v0

    .line 1148
    .end local v0    # "p1":I
    .local v1, "p1":I
    :goto_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_15

    .line 1150
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p1":I
    .restart local v0    # "p1":I
    aget v4, p0, v1

    aput v4, v3, v2

    move v1, v0

    .end local v0    # "p1":I
    .restart local v1    # "p1":I
    goto :goto_9

    .line 1153
    :cond_15
    return-object v3
.end method
