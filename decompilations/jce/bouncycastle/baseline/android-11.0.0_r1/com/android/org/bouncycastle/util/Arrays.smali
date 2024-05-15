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
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static blacklist append([BB)[B
    .registers 5
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .line 988
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 990
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 993
    :cond_9
    array-length v1, p0

    .line 994
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    .line 995
    .local v2, "result":[B
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    aput-byte p1, v2, v1

    .line 997
    return-object v2
.end method

.method public static blacklist append([II)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .line 1016
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 1018
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 1021
    :cond_9
    array-length v1, p0

    .line 1022
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 1023
    .local v2, "result":[I
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    aput p1, v2, v1

    .line 1025
    return-object v2
.end method

.method public static blacklist append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 1030
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 1032
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    return-object v1

    .line 1035
    :cond_9
    array-length v1, p0

    .line 1036
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1037
    .local v2, "result":[Ljava/lang/String;
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    aput-object p1, v2, v1

    .line 1039
    return-object v2
.end method

.method public static blacklist append([SS)[S
    .registers 5
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .line 1002
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 1004
    const/4 v1, 0x1

    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 1007
    :cond_9
    array-length v1, p0

    .line 1008
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    .line 1009
    .local v2, "result":[S
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    aput-short p1, v2, v1

    .line 1011
    return-object v2
.end method

.method public static blacklist areAllZeroes([BII)Z
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "bits":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_c

    .line 23
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    .end local v1    # "i":I
    :cond_c
    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static blacklist areEqual([B[B)Z
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 94
    return v0

    .line 97
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    .line 102
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 104
    return v1

    .line 107
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_1d

    .line 109
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1a

    .line 111
    return v1

    .line 107
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 115
    .end local v2    # "i":I
    :cond_1d
    return v0

    .line 99
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static blacklist areEqual([C[C)Z
    .registers 7
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 64
    return v0

    .line 67
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    .line 72
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 74
    return v1

    .line 77
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_1d

    .line 79
    aget-char v3, p0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_1a

    .line 81
    return v1

    .line 77
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 85
    .end local v2    # "i":I
    :cond_1d
    return v0

    .line 69
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static blacklist areEqual([I[I)Z
    .registers 7
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 190
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 192
    return v0

    .line 195
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    .line 200
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 202
    return v1

    .line 205
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_1d

    .line 207
    aget v3, p0, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_1a

    .line 209
    return v1

    .line 205
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 213
    .end local v2    # "i":I
    :cond_1d
    return v0

    .line 197
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static blacklist areEqual([J[J)Z
    .registers 9
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 222
    return v0

    .line 225
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_a

    goto :goto_20

    .line 230
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 232
    return v1

    .line 235
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_1f

    .line 237
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1c

    .line 239
    return v1

    .line 235
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 243
    .end local v2    # "i":I
    :cond_1f
    return v0

    .line 227
    :cond_20
    :goto_20
    return v1
.end method

.method public static blacklist areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 8
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 250
    return v0

    .line 252
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 256
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 258
    return v1

    .line 260
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_26

    .line 262
    aget-object v3, p0, v2

    .local v3, "objA":Ljava/lang/Object;
    aget-object v4, p1, v2

    .line 263
    .local v4, "objB":Ljava/lang/Object;
    if-nez v3, :cond_1c

    .line 265
    if-eqz v4, :cond_23

    .line 267
    return v1

    .line 270
    :cond_1c
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 272
    return v1

    .line 260
    .end local v3    # "objA":Ljava/lang/Object;
    .end local v4    # "objB":Ljava/lang/Object;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 275
    .end local v2    # "i":I
    :cond_26
    return v0

    .line 254
    :cond_27
    :goto_27
    return v1
.end method

.method public static blacklist areEqual([S[S)Z
    .registers 7
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 124
    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    .line 132
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 134
    return v1

    .line 137
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_1d

    .line 139
    aget-short v3, p0, v2

    aget-short v4, p1, v2

    if-eq v3, v4, :cond_1a

    .line 141
    return v1

    .line 137
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 145
    .end local v2    # "i":I
    :cond_1d
    return v0

    .line 129
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static blacklist areEqual([Z[Z)Z
    .registers 7
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 34
    return v0

    .line 37
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-nez p1, :cond_a

    goto :goto_1e

    .line 42
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_f

    .line 44
    return v1

    .line 47
    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-eq v2, v3, :cond_1d

    .line 49
    aget-boolean v3, p0, v2

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_1a

    .line 51
    return v1

    .line 47
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 55
    .end local v2    # "i":I
    :cond_1d
    return v0

    .line 39
    :cond_1e
    :goto_1e
    return v1
.end method

.method public static blacklist clear([B)V
    .registers 3
    .param p0, "array"    # [B

    .line 1289
    if-eqz p0, :cond_c

    .line 1291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 1293
    const/4 v1, 0x0

    aput-byte v1, p0, v0

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1296
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static blacklist clone([B)[B
    .registers 4
    .param p0, "data"    # [B

    .line 673
    if-nez p0, :cond_4

    .line 675
    const/4 v0, 0x0

    return-object v0

    .line 677
    :cond_4
    array-length v0, p0

    new-array v0, v0, [B

    .line 679
    .local v0, "copy":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    return-object v0
.end method

.method public static blacklist clone([B[B)[B
    .registers 4
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .line 699
    if-nez p0, :cond_4

    .line 701
    const/4 v0, 0x0

    return-object v0

    .line 703
    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 707
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    return-object p1

    .line 705
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([C)[C
    .registers 4
    .param p0, "data"    # [C

    .line 686
    if-nez p0, :cond_4

    .line 688
    const/4 v0, 0x0

    return-object v0

    .line 690
    :cond_4
    array-length v0, p0

    new-array v0, v0, [C

    .line 692
    .local v0, "copy":[C
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    return-object v0
.end method

.method public static blacklist clone([I)[I
    .registers 4
    .param p0, "data"    # [I

    .line 747
    if-nez p0, :cond_4

    .line 749
    const/4 v0, 0x0

    return-object v0

    .line 751
    :cond_4
    array-length v0, p0

    new-array v0, v0, [I

    .line 753
    .local v0, "copy":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    return-object v0
.end method

.method public static blacklist clone([J)[J
    .registers 4
    .param p0, "data"    # [J

    .line 760
    if-nez p0, :cond_4

    .line 762
    const/4 v0, 0x0

    return-object v0

    .line 764
    :cond_4
    array-length v0, p0

    new-array v0, v0, [J

    .line 766
    .local v0, "copy":[J
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 768
    return-object v0
.end method

.method public static blacklist clone([J[J)[J
    .registers 4
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .line 773
    if-nez p0, :cond_4

    .line 775
    const/4 v0, 0x0

    return-object v0

    .line 777
    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 781
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    return-object p1

    .line 779
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 4
    .param p0, "data"    # [Ljava/math/BigInteger;

    .line 800
    if-nez p0, :cond_4

    .line 802
    const/4 v0, 0x0

    return-object v0

    .line 804
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 806
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    return-object v0
.end method

.method public static blacklist clone([S)[S
    .registers 4
    .param p0, "data"    # [S

    .line 787
    if-nez p0, :cond_4

    .line 789
    const/4 v0, 0x0

    return-object v0

    .line 791
    :cond_4
    array-length v0, p0

    new-array v0, v0, [S

    .line 793
    .local v0, "copy":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 795
    return-object v0
.end method

.method public static blacklist clone([[B)[[B
    .registers 4
    .param p0, "data"    # [[B

    .line 713
    if-nez p0, :cond_4

    .line 715
    const/4 v0, 0x0

    return-object v0

    .line 718
    :cond_4
    array-length v0, p0

    new-array v0, v0, [[B

    .line 720
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 722
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 725
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static blacklist clone([[[B)[[[B
    .registers 4
    .param p0, "data"    # [[[B

    .line 730
    if-nez p0, :cond_4

    .line 732
    const/4 v0, 0x0

    return-object v0

    .line 735
    :cond_4
    array-length v0, p0

    new-array v0, v0, [[[B

    .line 737
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 739
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 742
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static blacklist compareUnsigned([B[B)I
    .registers 9
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 280
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 282
    return v0

    .line 284
    :cond_4
    const/4 v1, -0x1

    if-nez p0, :cond_8

    .line 286
    return v1

    .line 288
    :cond_8
    const/4 v2, 0x1

    if-nez p1, :cond_c

    .line 290
    return v2

    .line 292
    :cond_c
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 293
    .local v3, "minLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_26

    .line 295
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .local v5, "aVal":I
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    .line 296
    .local v6, "bVal":I
    if-ge v5, v6, :cond_20

    .line 298
    return v1

    .line 300
    :cond_20
    if-le v5, v6, :cond_23

    .line 302
    return v2

    .line 293
    .end local v5    # "aVal":I
    .end local v6    # "bVal":I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 305
    .end local v4    # "i":I
    :cond_26
    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_2b

    .line 307
    return v1

    .line 309
    :cond_2b
    array-length v1, p0

    array-length v4, p1

    if-le v1, v4, :cond_30

    .line 311
    return v2

    .line 313
    :cond_30
    return v0
.end method

.method public static blacklist concatenate([B[B)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 1046
    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 1048
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1050
    .local v0, "rv":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1051
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1053
    return-object v0

    .line 1055
    .end local v0    # "rv":[B
    :cond_14
    if-eqz p1, :cond_1b

    .line 1057
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 1061
    :cond_1b
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist concatenate([B[B[B)[B
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .line 1067
    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 1069
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1071
    .local v0, "rv":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1072
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1073
    array-length v1, p0

    array-length v3, p1

    add-int/2addr v1, v3

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    return-object v0

    .line 1077
    .end local v0    # "rv":[B
    :cond_1f
    if-nez p0, :cond_26

    .line 1079
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 1081
    :cond_26
    if-nez p1, :cond_2d

    .line 1083
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 1087
    :cond_2d
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist concatenate([B[B[B[B)[B
    .registers 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .line 1093
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    if-eqz p2, :cond_2c

    if-eqz p3, :cond_2c

    .line 1095
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1097
    .local v0, "rv":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1098
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1099
    array-length v1, p0

    array-length v3, p1

    add-int/2addr v1, v3

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    array-length v1, p0

    array-length v3, p1

    add-int/2addr v1, v3

    array-length v3, p2

    add-int/2addr v1, v3

    array-length v3, p3

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    return-object v0

    .line 1104
    .end local v0    # "rv":[B
    :cond_2c
    if-nez p3, :cond_33

    .line 1106
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 1108
    :cond_33
    if-nez p2, :cond_3a

    .line 1110
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 1112
    :cond_3a
    if-nez p1, :cond_41

    .line 1114
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 1118
    :cond_41
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist concatenate([[B)[B
    .registers 8
    .param p0, "arrays"    # [[B

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_c

    .line 1127
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 1125
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1130
    .end local v1    # "i":I
    :cond_c
    new-array v1, v0, [B

    .line 1132
    .local v1, "rv":[B
    const/4 v2, 0x0

    .line 1133
    .local v2, "offSet":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, p0

    if-eq v3, v4, :cond_23

    .line 1135
    aget-object v4, p0, v3

    const/4 v5, 0x0

    aget-object v6, p0, v3

    array-length v6, v6

    invoke-static {v4, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1136
    aget-object v4, p0, v3

    array-length v4, v4

    add-int/2addr v2, v4

    .line 1133
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1139
    .end local v3    # "i":I
    :cond_23
    return-object v1
.end method

.method public static blacklist concatenate([I[I)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 1144
    if-nez p0, :cond_7

    .line 1146
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 1148
    :cond_7
    if-nez p1, :cond_e

    .line 1150
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 1153
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1154
    .local v0, "c":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1155
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    return-object v0
.end method

.method public static blacklist constantTimeAreEqual([B[B)Z
    .registers 8
    .param p0, "expected"    # [B
    .param p1, "supplied"    # [B

    .line 161
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 163
    return v0

    .line 166
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_27

    if-nez p1, :cond_a

    goto :goto_27

    .line 171
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_14

    .line 173
    invoke-static {p0, p0}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 176
    :cond_14
    const/4 v2, 0x0

    .line 178
    .local v2, "nonEqual":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, p0

    if-eq v3, v4, :cond_22

    .line 180
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 183
    .end local v3    # "i":I
    :cond_22
    if-nez v2, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 168
    .end local v2    # "nonEqual":I
    :cond_27
    :goto_27
    return v1
.end method

.method public static blacklist contains([II)Z
    .registers 4
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 332
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 334
    const/4 v1, 0x1

    return v1

    .line 330
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([SS)Z
    .registers 4
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 320
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 322
    const/4 v1, 0x1

    return v1

    .line 318
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copyOf([BI)[B
    .registers 5
    .param p0, "data"    # [B
    .param p1, "newLength"    # I

    .line 813
    new-array v0, p1, [B

    .line 815
    .local v0, "tmp":[B
    array-length v1, p0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_a

    .line 817
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    .line 821
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    :goto_e
    return-object v0
.end method

.method public static blacklist copyOf([CI)[C
    .registers 5
    .param p0, "data"    # [C
    .param p1, "newLength"    # I

    .line 829
    new-array v0, p1, [C

    .line 831
    .local v0, "tmp":[C
    array-length v1, p0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_a

    .line 833
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    .line 837
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 840
    :goto_e
    return-object v0
.end method

.method public static blacklist copyOf([II)[I
    .registers 5
    .param p0, "data"    # [I
    .param p1, "newLength"    # I

    .line 845
    new-array v0, p1, [I

    .line 847
    .local v0, "tmp":[I
    array-length v1, p0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_a

    .line 849
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    .line 853
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    :goto_e
    return-object v0
.end method

.method public static blacklist copyOf([JI)[J
    .registers 5
    .param p0, "data"    # [J
    .param p1, "newLength"    # I

    .line 861
    new-array v0, p1, [J

    .line 863
    .local v0, "tmp":[J
    array-length v1, p0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_a

    .line 865
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    .line 869
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    :goto_e
    return-object v0
.end method

.method public static blacklist copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 5
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .line 877
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 879
    .local v0, "tmp":[Ljava/math/BigInteger;
    array-length v1, p0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_a

    .line 881
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    .line 885
    :cond_a
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    :goto_e
    return-object v0
.end method

.method public static blacklist copyOfRange([BII)[B
    .registers 7
    .param p0, "data"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 904
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 906
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 908
    .local v1, "tmp":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_11

    .line 910
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    .line 914
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 917
    :goto_14
    return-object v1
.end method

.method public static blacklist copyOfRange([III)[I
    .registers 7
    .param p0, "data"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 922
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 924
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 926
    .local v1, "tmp":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_11

    .line 928
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    .line 932
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    :goto_14
    return-object v1
.end method

.method public static blacklist copyOfRange([JII)[J
    .registers 7
    .param p0, "data"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 940
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 942
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 944
    .local v1, "tmp":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_11

    .line 946
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    .line 950
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 953
    :goto_14
    return-object v1
.end method

.method public static blacklist copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 7
    .param p0, "data"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 958
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 960
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 962
    .local v1, "tmp":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_11

    .line 964
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    .line 968
    :cond_11
    invoke-static {p0, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    :goto_14
    return-object v1
.end method

.method public static blacklist fill([BB)V
    .registers 4
    .param p0, "array"    # [B
    .param p1, "value"    # B

    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 346
    aput-byte p1, p0, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 348
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist fill([BIB)V
    .registers 5
    .param p0, "array"    # [B
    .param p1, "out"    # I
    .param p2, "value"    # B

    .line 407
    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 409
    move v0, p1

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 411
    aput-byte p2, p0, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 414
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static blacklist fill([BIIB)V
    .registers 5
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "finish"    # I
    .param p3, "value"    # B

    .line 356
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_8

    .line 358
    aput-byte p3, p0, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method public static blacklist fill([CC)V
    .registers 4
    .param p0, "array"    # [C
    .param p1, "value"    # C

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 368
    aput-char p1, p0, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist fill([II)V
    .registers 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 398
    aput p1, p0, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 400
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist fill([III)V
    .registers 5
    .param p0, "array"    # [I
    .param p1, "out"    # I
    .param p2, "value"    # I

    .line 421
    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 423
    move v0, p1

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 425
    aput p2, p0, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 428
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static blacklist fill([JIJ)V
    .registers 6
    .param p0, "array"    # [J
    .param p1, "out"    # I
    .param p2, "value"    # J

    .line 449
    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 451
    move v0, p1

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 453
    aput-wide p2, p0, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 456
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static blacklist fill([JJ)V
    .registers 5
    .param p0, "array"    # [J
    .param p1, "value"    # J

    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 378
    aput-wide p1, p0, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist fill([SIS)V
    .registers 5
    .param p0, "array"    # [S
    .param p1, "out"    # I
    .param p2, "value"    # S

    .line 435
    array-length v0, p0

    if-ge p1, v0, :cond_c

    .line 437
    move v0, p1

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_c

    .line 439
    aput-short p2, p0, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 442
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public static blacklist fill([SS)V
    .registers 4
    .param p0, "array"    # [S
    .param p1, "value"    # S

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 388
    aput-short p1, p0, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method private static blacklist getLength(II)I
    .registers 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 976
    sub-int v0, p1, p0

    .line 977
    .local v0, "newLength":I
    if-ltz v0, :cond_5

    .line 983
    return v0

    .line 979
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 980
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 981
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist hashCode([B)I
    .registers 4
    .param p0, "data"    # [B

    .line 460
    if-nez p0, :cond_4

    .line 462
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_4
    array-length v0, p0

    .line 466
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 468
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 470
    mul-int/lit16 v1, v1, 0x101

    .line 471
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 474
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([BII)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 479
    if-nez p0, :cond_4

    .line 481
    const/4 v0, 0x0

    return v0

    .line 484
    :cond_4
    move v0, p2

    .line 485
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 487
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 489
    mul-int/lit16 v1, v1, 0x101

    .line 490
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 493
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([C)I
    .registers 4
    .param p0, "data"    # [C

    .line 498
    if-nez p0, :cond_4

    .line 500
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_4
    array-length v0, p0

    .line 504
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 506
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 508
    mul-int/lit16 v1, v1, 0x101

    .line 509
    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 512
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([I)I
    .registers 4
    .param p0, "data"    # [I

    .line 529
    if-nez p0, :cond_4

    .line 531
    const/4 v0, 0x0

    return v0

    .line 534
    :cond_4
    array-length v0, p0

    .line 535
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 537
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 539
    mul-int/lit16 v1, v1, 0x101

    .line 540
    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 543
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([III)I
    .registers 6
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 548
    if-nez p0, :cond_4

    .line 550
    const/4 v0, 0x0

    return v0

    .line 553
    :cond_4
    move v0, p2

    .line 554
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 556
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 558
    mul-int/lit16 v1, v1, 0x101

    .line 559
    add-int v2, p1, v0

    aget v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 562
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([J)I
    .registers 7
    .param p0, "data"    # [J

    .line 567
    if-nez p0, :cond_4

    .line 569
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_4
    array-length v0, p0

    .line 573
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 575
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1a

    .line 577
    aget-wide v2, p0, v0

    .line 578
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 579
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 580
    mul-int/lit16 v1, v1, 0x101

    .line 581
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    .line 582
    .end local v2    # "di":J
    goto :goto_7

    .line 584
    :cond_1a
    return v1
.end method

.method public static blacklist hashCode([JII)I
    .registers 9
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 589
    if-nez p0, :cond_4

    .line 591
    const/4 v0, 0x0

    return v0

    .line 594
    :cond_4
    move v0, p2

    .line 595
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 597
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 599
    add-int v2, p1, v0

    aget-wide v2, p0, v2

    .line 600
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 601
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 602
    mul-int/lit16 v1, v1, 0x101

    .line 603
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    .line 604
    .end local v2    # "di":J
    goto :goto_7

    .line 606
    :cond_1c
    return v1
.end method

.method public static blacklist hashCode([Ljava/lang/Object;)I
    .registers 4
    .param p0, "data"    # [Ljava/lang/Object;

    .line 654
    if-nez p0, :cond_4

    .line 656
    const/4 v0, 0x0

    return v0

    .line 659
    :cond_4
    array-length v0, p0

    .line 660
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 662
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 664
    mul-int/lit16 v1, v1, 0x101

    .line 665
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 668
    :cond_15
    return v1
.end method

.method public static blacklist hashCode([S)I
    .registers 4
    .param p0, "data"    # [S

    .line 635
    if-nez p0, :cond_4

    .line 637
    const/4 v0, 0x0

    return v0

    .line 640
    :cond_4
    array-length v0, p0

    .line 641
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 643
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 645
    mul-int/lit16 v1, v1, 0x101

    .line 646
    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_7

    .line 649
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([[I)I
    .registers 5
    .param p0, "ints"    # [[I

    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 521
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 524
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist hashCode([[S)I
    .registers 5
    .param p0, "shorts"    # [[S

    .line 623
    const/4 v0, 0x0

    .line 625
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 627
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 630
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist hashCode([[[S)I
    .registers 5
    .param p0, "shorts"    # [[[S

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 615
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 618
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist prepend([BB)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .line 1161
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1163
    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 1166
    :cond_9
    array-length v2, p0

    .line 1167
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    .line 1168
    .local v3, "result":[B
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1169
    aput-byte p1, v3, v0

    .line 1170
    return-object v3
.end method

.method public static blacklist prepend([II)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .line 1189
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1191
    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 1194
    :cond_9
    array-length v2, p0

    .line 1195
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    .line 1196
    .local v3, "result":[I
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1197
    aput p1, v3, v0

    .line 1198
    return-object v3
.end method

.method public static blacklist prepend([SS)[S
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .line 1175
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1177
    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 1180
    :cond_9
    array-length v2, p0

    .line 1181
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    .line 1182
    .local v3, "result":[S
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1183
    aput-short p1, v3, v0

    .line 1184
    return-object v3
.end method

.method public static blacklist reverse([B)[B
    .registers 5
    .param p0, "a"    # [B

    .line 1203
    if-nez p0, :cond_4

    .line 1205
    const/4 v0, 0x0

    return-object v0

    .line 1208
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1209
    .local v1, "p2":I
    new-array v2, v1, [B

    .line 1211
    .local v2, "result":[B
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1213
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget-byte v0, p0, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_8

    .line 1216
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_14
    return-object v2
.end method

.method public static blacklist reverse([I)[I
    .registers 5
    .param p0, "a"    # [I

    .line 1221
    if-nez p0, :cond_4

    .line 1223
    const/4 v0, 0x0

    return-object v0

    .line 1226
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1227
    .local v1, "p2":I
    new-array v2, v1, [I

    .line 1229
    .local v2, "result":[I
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1231
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget v0, p0, v0

    aput v0, v2, v1

    move v0, v3

    goto :goto_8

    .line 1234
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_14
    return-object v2
.end method
