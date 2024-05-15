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

    .line 808
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 810
    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 813
    :cond_9
    array-length v1, p0

    .line 814
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [B

    .line 815
    .local v2, "result":[B
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    aput-byte p1, v2, v1

    .line 817
    return-object v2
.end method

.method public static blacklist append([II)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .line 836
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 838
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 841
    :cond_9
    array-length v1, p0

    .line 842
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    .line 843
    .local v2, "result":[I
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    aput p1, v2, v1

    .line 845
    return-object v2
.end method

.method public static blacklist append([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 850
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 852
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    return-object v1

    .line 855
    :cond_9
    array-length v1, p0

    .line 856
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 857
    .local v2, "result":[Ljava/lang/String;
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    aput-object p1, v2, v1

    .line 859
    return-object v2
.end method

.method public static blacklist append([SS)[S
    .registers 5
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .line 822
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 824
    const/4 v1, 0x1

    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 827
    :cond_9
    array-length v1, p0

    .line 828
    .local v1, "length":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [S

    .line 829
    .local v2, "result":[S
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    aput-short p1, v2, v1

    .line 831
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

.method public static blacklist areEqual([BII[BII)Z
    .registers 12
    .param p0, "a"    # [B
    .param p1, "aFromIndex"    # I
    .param p2, "aToIndex"    # I
    .param p3, "b"    # [B
    .param p4, "bFromIndex"    # I
    .param p5, "bToIndex"    # I

    .line 40
    sub-int v0, p2, p1

    .line 41
    .local v0, "aLength":I
    sub-int v1, p5, p4

    .line 43
    .local v1, "bLength":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 45
    return v2

    .line 48
    :cond_8
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_19

    .line 50
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    add-int v5, p4, v3

    aget-byte v5, p3, v5

    if-eq v4, v5, :cond_16

    .line 52
    return v2

    .line 48
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 56
    .end local v3    # "i":I
    :cond_19
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist areEqual([B[B)Z
    .registers 3
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 35
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([C[C)Z
    .registers 3
    .param p0, "a"    # [C
    .param p1, "b"    # [C

    .line 61
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([I[I)Z
    .registers 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 66
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([J[J)Z
    .registers 3
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 71
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "b"    # [Ljava/lang/Object;

    .line 76
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([S[S)Z
    .registers 3
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 81
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0
.end method

.method public static blacklist areEqual([Z[Z)Z
    .registers 3
    .param p0, "a"    # [Z
    .param p1, "b"    # [Z

    .line 30
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist clear([B)V
    .registers 2
    .param p0, "data"    # [B

    .line 1120
    if-eqz p0, :cond_6

    .line 1122
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 1124
    :cond_6
    return-void
.end method

.method public static blacklist clear([I)V
    .registers 2
    .param p0, "data"    # [I

    .line 1128
    if-eqz p0, :cond_6

    .line 1130
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1132
    :cond_6
    return-void
.end method

.method public static blacklist clone([B)[B
    .registers 2
    .param p0, "data"    # [B

    .line 586
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([B[B)[B
    .registers 4
    .param p0, "data"    # [B
    .param p1, "existing"    # [B

    .line 616
    if-nez p0, :cond_4

    .line 618
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 624
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 625
    return-object p1

    .line 622
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([C)[C
    .registers 2
    .param p0, "data"    # [C

    .line 591
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([I)[I
    .registers 2
    .param p0, "data"    # [I

    .line 596
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([J)[J
    .registers 2
    .param p0, "data"    # [J

    .line 601
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([J[J)[J
    .registers 4
    .param p0, "data"    # [J
    .param p1, "existing"    # [J

    .line 630
    if-nez p0, :cond_4

    .line 632
    const/4 v0, 0x0

    return-object v0

    .line 634
    :cond_4
    if-eqz p1, :cond_11

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 638
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    return-object p1

    .line 636
    :cond_11
    :goto_11
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static blacklist clone([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 2
    .param p0, "data"    # [Ljava/math/BigInteger;

    .line 611
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Ljava/math/BigInteger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/math/BigInteger;

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([S)[S
    .registers 2
    .param p0, "data"    # [S

    .line 606
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([Z)[Z
    .registers 2
    .param p0, "data"    # [Z

    .line 581
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    :goto_a
    return-object v0
.end method

.method public static blacklist clone([[B)[[B
    .registers 4
    .param p0, "data"    # [[B

    .line 644
    if-nez p0, :cond_4

    .line 646
    const/4 v0, 0x0

    return-object v0

    .line 649
    :cond_4
    array-length v0, p0

    new-array v0, v0, [[B

    .line 651
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 653
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 656
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static blacklist clone([[[B)[[[B
    .registers 4
    .param p0, "data"    # [[[B

    .line 661
    if-nez p0, :cond_4

    .line 663
    const/4 v0, 0x0

    return-object v0

    .line 666
    :cond_4
    array-length v0, p0

    new-array v0, v0, [[[B

    .line 668
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-eq v1, v2, :cond_16

    .line 670
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 673
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method

.method public static blacklist compareUnsigned([B[B)I
    .registers 9
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 156
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 158
    return v0

    .line 160
    :cond_4
    const/4 v1, -0x1

    if-nez p0, :cond_8

    .line 162
    return v1

    .line 164
    :cond_8
    const/4 v2, 0x1

    if-nez p1, :cond_c

    .line 166
    return v2

    .line 168
    :cond_c
    array-length v3, p0

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 169
    .local v3, "minLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_26

    .line 171
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .local v5, "aVal":I
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    .line 172
    .local v6, "bVal":I
    if-ge v5, v6, :cond_20

    .line 174
    return v1

    .line 176
    :cond_20
    if-le v5, v6, :cond_23

    .line 178
    return v2

    .line 169
    .end local v5    # "aVal":I
    .end local v6    # "bVal":I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 181
    .end local v4    # "i":I
    :cond_26
    array-length v4, p0

    array-length v5, p1

    if-ge v4, v5, :cond_2b

    .line 183
    return v1

    .line 185
    :cond_2b
    array-length v1, p0

    array-length v4, p1

    if-le v1, v4, :cond_30

    .line 187
    return v2

    .line 189
    :cond_30
    return v0
.end method

.method public static blacklist concatenate([B[B)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 864
    if-nez p0, :cond_7

    .line 867
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 869
    :cond_7
    if-nez p1, :cond_e

    .line 872
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 875
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 876
    .local v0, "r":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 877
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    return-object v0
.end method

.method public static blacklist concatenate([B[B[B)[B
    .registers 7
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B

    .line 902
    if-nez p0, :cond_7

    .line 904
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 906
    :cond_7
    if-nez p1, :cond_e

    .line 908
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 910
    :cond_e
    if-nez p2, :cond_15

    .line 912
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0

    .line 915
    :cond_15
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 916
    .local v0, "r":[B
    const/4 v1, 0x0

    .line 917
    .local v1, "pos":I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    .line 918
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    .line 919
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    return-object v0
.end method

.method public static blacklist concatenate([B[B[B[B)[B
    .registers 8
    .param p0, "a"    # [B
    .param p1, "b"    # [B
    .param p2, "c"    # [B
    .param p3, "d"    # [B

    .line 925
    if-nez p0, :cond_7

    .line 927
    invoke-static {p1, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 929
    :cond_7
    if-nez p1, :cond_e

    .line 931
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 933
    :cond_e
    if-nez p2, :cond_15

    .line 935
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 937
    :cond_15
    if-nez p3, :cond_1c

    .line 939
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0

    .line 942
    :cond_1c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 943
    .local v0, "r":[B
    const/4 v1, 0x0

    .line 944
    .local v1, "pos":I
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    add-int/2addr v1, v2

    .line 945
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v1, v2

    .line 946
    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p2

    add-int/2addr v1, v2

    .line 947
    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 948
    return-object v0
.end method

.method public static blacklist concatenate([[B)[B
    .registers 8
    .param p0, "arrays"    # [[B

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_c

    .line 956
    aget-object v2, p0, v1

    array-length v2, v2

    add-int/2addr v0, v2

    .line 954
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 959
    .end local v1    # "i":I
    :cond_c
    new-array v1, v0, [B

    .line 961
    .local v1, "rv":[B
    const/4 v2, 0x0

    .line 962
    .local v2, "offSet":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, p0

    if-eq v3, v4, :cond_23

    .line 964
    aget-object v4, p0, v3

    const/4 v5, 0x0

    aget-object v6, p0, v3

    array-length v6, v6

    invoke-static {v4, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 965
    aget-object v4, p0, v3

    array-length v4, v4

    add-int/2addr v2, v4

    .line 962
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 968
    .end local v3    # "i":I
    :cond_23
    return-object v1
.end method

.method public static blacklist concatenate([I[I)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 973
    if-nez p0, :cond_7

    .line 976
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 978
    :cond_7
    if-nez p1, :cond_e

    .line 981
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 984
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 985
    .local v0, "r":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    return-object v0
.end method

.method public static blacklist concatenate([S[S)[S
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # [S

    .line 883
    if-nez p0, :cond_7

    .line 886
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 888
    :cond_7
    if-nez p1, :cond_e

    .line 891
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 894
    :cond_e
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 895
    .local v0, "r":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 896
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    return-object v0
.end method

.method public static blacklist constantTimeAreEqual(I[BI[BI)Z
    .registers 9
    .param p0, "len"    # I
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B
    .param p4, "bOff"    # I

    .line 125
    if-eqz p1, :cond_45

    .line 129
    if-eqz p3, :cond_3d

    .line 133
    if-ltz p0, :cond_35

    .line 137
    array-length v0, p1

    sub-int/2addr v0, p0

    if-gt p2, v0, :cond_2d

    .line 141
    array-length v0, p3

    sub-int/2addr v0, p0

    if-gt p4, v0, :cond_25

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, p0, :cond_1f

    .line 149
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    add-int v3, p4, v1

    aget-byte v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 151
    .end local v1    # "i":I
    :cond_1f
    if-nez v0, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1

    .line 143
    .end local v0    # "d":I
    :cond_25
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'bOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "\'aOff\' value invalid for specified length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'len\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'b\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'a\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist constantTimeAreEqual([B[B)Z
    .registers 9
    .param p0, "expected"    # [B
    .param p1, "supplied"    # [B

    .line 97
    const/4 v0, 0x0

    if-eqz p0, :cond_32

    if-nez p1, :cond_6

    goto :goto_32

    .line 102
    :cond_6
    const/4 v1, 0x1

    if-ne p0, p1, :cond_a

    .line 104
    return v1

    .line 107
    :cond_a
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_10

    array-length v2, p0

    goto :goto_11

    :cond_10
    array-length v2, p1

    .line 109
    .local v2, "len":I
    :goto_11
    array-length v3, p0

    array-length v4, p1

    xor-int/2addr v3, v4

    .line 111
    .local v3, "nonEqual":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_15
    if-eq v4, v2, :cond_20

    .line 113
    aget-byte v5, p0, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 115
    .end local v4    # "i":I
    :cond_20
    move v4, v2

    .restart local v4    # "i":I
    :goto_21
    array-length v5, p1

    if-ge v4, v5, :cond_2e

    .line 117
    aget-byte v5, p1, v4

    aget-byte v6, p1, v4

    not-int v6, v6

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 120
    .end local v4    # "i":I
    :cond_2e
    if-nez v3, :cond_31

    move v0, v1

    :cond_31
    return v0

    .line 99
    .end local v2    # "len":I
    .end local v3    # "nonEqual":I
    :cond_32
    :goto_32
    return v0
.end method

.method public static blacklist contains([BB)Z
    .registers 4
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 208
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 210
    const/4 v1, 0x1

    return v1

    .line 206
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([CC)Z
    .registers 4
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 220
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 222
    const/4 v1, 0x1

    return v1

    .line 218
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 4
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 232
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 234
    const/4 v1, 0x1

    return v1

    .line 230
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 237
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 6
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    .line 244
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_c

    .line 246
    const/4 v1, 0x1

    return v1

    .line 242
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([SS)Z
    .registers 4
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 256
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 258
    const/4 v1, 0x1

    return v1

    .line 254
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist contains([ZZ)Z
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 196
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 198
    const/4 v1, 0x1

    return v1

    .line 194
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copyOf([BI)[B
    .registers 5
    .param p0, "original"    # [B
    .param p1, "newLength"    # I

    .line 685
    new-array v0, p1, [B

    .line 686
    .local v0, "copy":[B
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 687
    return-object v0
.end method

.method public static blacklist copyOf([CI)[C
    .registers 5
    .param p0, "original"    # [C
    .param p1, "newLength"    # I

    .line 692
    new-array v0, p1, [C

    .line 693
    .local v0, "copy":[C
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    return-object v0
.end method

.method public static blacklist copyOf([II)[I
    .registers 5
    .param p0, "original"    # [I
    .param p1, "newLength"    # I

    .line 699
    new-array v0, p1, [I

    .line 700
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 701
    return-object v0
.end method

.method public static blacklist copyOf([JI)[J
    .registers 5
    .param p0, "original"    # [J
    .param p1, "newLength"    # I

    .line 706
    new-array v0, p1, [J

    .line 707
    .local v0, "copy":[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    return-object v0
.end method

.method public static blacklist copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;
    .registers 5
    .param p0, "original"    # [Ljava/math/BigInteger;
    .param p1, "newLength"    # I

    .line 720
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 721
    .local v0, "copy":[Ljava/math/BigInteger;
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 722
    return-object v0
.end method

.method public static blacklist copyOf([SI)[S
    .registers 5
    .param p0, "original"    # [S
    .param p1, "newLength"    # I

    .line 713
    new-array v0, p1, [S

    .line 714
    .local v0, "copy":[S
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 715
    return-object v0
.end method

.method public static blacklist copyOf([ZI)[Z
    .registers 5
    .param p0, "original"    # [Z
    .param p1, "newLength"    # I

    .line 678
    new-array v0, p1, [Z

    .line 679
    .local v0, "copy":[Z
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    return-object v0
.end method

.method public static blacklist copyOfRange([BII)[B
    .registers 7
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 748
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 749
    .local v0, "newLength":I
    new-array v1, v0, [B

    .line 750
    .local v1, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    return-object v1
.end method

.method public static blacklist copyOfRange([CII)[C
    .registers 7
    .param p0, "original"    # [C
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 756
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 757
    .local v0, "newLength":I
    new-array v1, v0, [C

    .line 758
    .local v1, "copy":[C
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    return-object v1
.end method

.method public static blacklist copyOfRange([III)[I
    .registers 7
    .param p0, "original"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 764
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 765
    .local v0, "newLength":I
    new-array v1, v0, [I

    .line 766
    .local v1, "copy":[I
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    return-object v1
.end method

.method public static blacklist copyOfRange([JII)[J
    .registers 7
    .param p0, "original"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 772
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 773
    .local v0, "newLength":I
    new-array v1, v0, [J

    .line 774
    .local v1, "copy":[J
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    return-object v1
.end method

.method public static blacklist copyOfRange([Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .registers 7
    .param p0, "original"    # [Ljava/math/BigInteger;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 788
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 789
    .local v0, "newLength":I
    new-array v1, v0, [Ljava/math/BigInteger;

    .line 790
    .local v1, "copy":[Ljava/math/BigInteger;
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    return-object v1
.end method

.method public static blacklist copyOfRange([SII)[S
    .registers 7
    .param p0, "original"    # [S
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 780
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 781
    .local v0, "newLength":I
    new-array v1, v0, [S

    .line 782
    .local v1, "copy":[S
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 783
    return-object v1
.end method

.method public static blacklist copyOfRange([ZII)[Z
    .registers 7
    .param p0, "original"    # [Z
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 727
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->getLength(II)I

    move-result v0

    .line 728
    .local v0, "newLength":I
    new-array v1, v0, [Z

    .line 729
    .local v1, "copy":[Z
    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 730
    return-object v1
.end method

.method public static blacklist fill([BB)V
    .registers 2
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 276
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 277
    return-void
.end method

.method public static blacklist fill([BIB)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "val"    # B

    .line 284
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 285
    return-void
.end method

.method public static blacklist fill([BIIB)V
    .registers 4
    .param p0, "a"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # B

    .line 289
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 290
    return-void
.end method

.method public static blacklist fill([CC)V
    .registers 2
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 294
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    .line 295
    return-void
.end method

.method public static blacklist fill([CIIC)V
    .registers 4
    .param p0, "a"    # [C
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # C

    .line 299
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([CIIC)V

    .line 300
    return-void
.end method

.method public static blacklist fill([II)V
    .registers 2
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 304
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 305
    return-void
.end method

.method public static blacklist fill([III)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "val"    # I

    .line 312
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Ljava/util/Arrays;->fill([IIII)V

    .line 313
    return-void
.end method

.method public static blacklist fill([IIII)V
    .registers 4
    .param p0, "a"    # [I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # I

    .line 317
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 318
    return-void
.end method

.method public static blacklist fill([JIIJ)V
    .registers 5
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # J

    .line 335
    invoke-static {p0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 336
    return-void
.end method

.method public static blacklist fill([JIJ)V
    .registers 5
    .param p0, "a"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "val"    # J

    .line 330
    array-length v0, p0

    invoke-static {p0, p1, v0, p2, p3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 331
    return-void
.end method

.method public static blacklist fill([JJ)V
    .registers 3
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 322
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 323
    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 4
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Ljava/lang/Object;

    .line 345
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 346
    return-void
.end method

.method public static blacklist fill([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;

    .line 340
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method public static blacklist fill([SIIS)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # S

    .line 363
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    .line 364
    return-void
.end method

.method public static blacklist fill([SIS)V
    .registers 4
    .param p0, "a"    # [S
    .param p1, "fromIndex"    # I
    .param p2, "val"    # S

    .line 358
    array-length v0, p0

    invoke-static {p0, p1, v0, p2}, Ljava/util/Arrays;->fill([SIIS)V

    .line 359
    return-void
.end method

.method public static blacklist fill([SS)V
    .registers 2
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 350
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    .line 351
    return-void
.end method

.method public static blacklist fill([ZIIZ)V
    .registers 4
    .param p0, "a"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "val"    # Z

    .line 271
    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 272
    return-void
.end method

.method public static blacklist fill([ZZ)V
    .registers 2
    .param p0, "a"    # [Z
    .param p1, "val"    # Z

    .line 266
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 267
    return-void
.end method

.method private static blacklist getLength(II)I
    .registers 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .line 796
    sub-int v0, p1, p0

    .line 797
    .local v0, "newLength":I
    if-ltz v0, :cond_5

    .line 803
    return v0

    .line 799
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 800
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 801
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist hashCode([B)I
    .registers 4
    .param p0, "data"    # [B

    .line 368
    if-nez p0, :cond_4

    .line 370
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_4
    array-length v0, p0

    .line 374
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 376
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 378
    mul-int/lit16 v1, v1, 0x101

    .line 379
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 382
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([BII)I
    .registers 6
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 387
    if-nez p0, :cond_4

    .line 389
    const/4 v0, 0x0

    return v0

    .line 392
    :cond_4
    move v0, p2

    .line 393
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 395
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 397
    mul-int/lit16 v1, v1, 0x101

    .line 398
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 401
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([C)I
    .registers 4
    .param p0, "data"    # [C

    .line 406
    if-nez p0, :cond_4

    .line 408
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_4
    array-length v0, p0

    .line 412
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 414
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 416
    mul-int/lit16 v1, v1, 0x101

    .line 417
    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 420
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([I)I
    .registers 4
    .param p0, "data"    # [I

    .line 437
    if-nez p0, :cond_4

    .line 439
    const/4 v0, 0x0

    return v0

    .line 442
    :cond_4
    array-length v0, p0

    .line 443
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 445
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 447
    mul-int/lit16 v1, v1, 0x101

    .line 448
    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_7

    .line 451
    :cond_11
    return v1
.end method

.method public static blacklist hashCode([III)I
    .registers 6
    .param p0, "data"    # [I
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 456
    if-nez p0, :cond_4

    .line 458
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_4
    move v0, p2

    .line 462
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 464
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 466
    mul-int/lit16 v1, v1, 0x101

    .line 467
    add-int v2, p1, v0

    aget v2, p0, v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 470
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([J)I
    .registers 7
    .param p0, "data"    # [J

    .line 475
    if-nez p0, :cond_4

    .line 477
    const/4 v0, 0x0

    return v0

    .line 480
    :cond_4
    array-length v0, p0

    .line 481
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 483
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1a

    .line 485
    aget-wide v2, p0, v0

    .line 486
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 487
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 488
    mul-int/lit16 v1, v1, 0x101

    .line 489
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    .line 490
    .end local v2    # "di":J
    goto :goto_7

    .line 492
    :cond_1a
    return v1
.end method

.method public static blacklist hashCode([JII)I
    .registers 9
    .param p0, "data"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 497
    if-nez p0, :cond_4

    .line 499
    const/4 v0, 0x0

    return v0

    .line 502
    :cond_4
    move v0, p2

    .line 503
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 505
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 507
    add-int v2, p1, v0

    aget-wide v2, p0, v2

    .line 508
    .local v2, "di":J
    mul-int/lit16 v1, v1, 0x101

    .line 509
    long-to-int v4, v2

    xor-int/2addr v1, v4

    .line 510
    mul-int/lit16 v1, v1, 0x101

    .line 511
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    long-to-int v4, v4

    xor-int/2addr v1, v4

    .line 512
    .end local v2    # "di":J
    goto :goto_7

    .line 514
    :cond_1c
    return v1
.end method

.method public static blacklist hashCode([Ljava/lang/Object;)I
    .registers 4
    .param p0, "data"    # [Ljava/lang/Object;

    .line 562
    if-nez p0, :cond_4

    .line 564
    const/4 v0, 0x0

    return v0

    .line 567
    :cond_4
    array-length v0, p0

    .line 568
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 570
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 572
    mul-int/lit16 v1, v1, 0x101

    .line 573
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_7

    .line 576
    :cond_15
    return v1
.end method

.method public static blacklist hashCode([S)I
    .registers 4
    .param p0, "data"    # [S

    .line 543
    if-nez p0, :cond_4

    .line 545
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_4
    array-length v0, p0

    .line 549
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .line 551
    .local v1, "hc":I
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    .line 553
    mul-int/lit16 v1, v1, 0x101

    .line 554
    aget-short v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    goto :goto_7

    .line 557
    :cond_13
    return v1
.end method

.method public static blacklist hashCode([[I)I
    .registers 5
    .param p0, "ints"    # [[I

    .line 425
    const/4 v0, 0x0

    .line 427
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 429
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v0, v2, v3

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 432
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist hashCode([[S)I
    .registers 5
    .param p0, "shorts"    # [[S

    .line 531
    const/4 v0, 0x0

    .line 533
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 535
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v3

    add-int v0, v2, v3

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 538
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist hashCode([[[S)I
    .registers 5
    .param p0, "shorts"    # [[[S

    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, "hc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p0

    if-eq v1, v2, :cond_12

    .line 523
    mul-int/lit16 v2, v0, 0x101

    aget-object v3, p0, v1

    invoke-static {v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([[S)I

    move-result v3

    add-int v0, v2, v3

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 526
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method public static blacklist isNullOrContainsNull([Ljava/lang/Object;)Z
    .registers 5
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1136
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 1138
    return v0

    .line 1140
    :cond_4
    array-length v1, p0

    .line 1141
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_10

    .line 1143
    aget-object v3, p0, v2

    if-nez v3, :cond_d

    .line 1145
    return v0

    .line 1141
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1148
    .end local v2    # "i":I
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isNullOrEmpty([B)Z
    .registers 3
    .param p0, "array"    # [B

    .line 1153
    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length v1, p0

    if-ge v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static blacklist isNullOrEmpty([I)Z
    .registers 3
    .param p0, "array"    # [I

    .line 1158
    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length v1, p0

    if-ge v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static blacklist isNullOrEmpty([Ljava/lang/Object;)Z
    .registers 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1163
    const/4 v0, 0x1

    if-eqz p0, :cond_8

    array-length v1, p0

    if-ge v1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static blacklist prepend([BB)[B
    .registers 6
    .param p0, "a"    # [B
    .param p1, "b"    # B

    .line 992
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 994
    new-array v1, v1, [B

    aput-byte p1, v1, v0

    return-object v1

    .line 997
    :cond_9
    array-length v2, p0

    .line 998
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    .line 999
    .local v3, "result":[B
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1000
    aput-byte p1, v3, v0

    .line 1001
    return-object v3
.end method

.method public static blacklist prepend([II)[I
    .registers 6
    .param p0, "a"    # [I
    .param p1, "b"    # I

    .line 1020
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1022
    new-array v1, v1, [I

    aput p1, v1, v0

    return-object v1

    .line 1025
    :cond_9
    array-length v2, p0

    .line 1026
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    .line 1027
    .local v3, "result":[I
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1028
    aput p1, v3, v0

    .line 1029
    return-object v3
.end method

.method public static blacklist prepend([SS)[S
    .registers 6
    .param p0, "a"    # [S
    .param p1, "b"    # S

    .line 1006
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_9

    .line 1008
    new-array v1, v1, [S

    aput-short p1, v1, v0

    return-object v1

    .line 1011
    :cond_9
    array-length v2, p0

    .line 1012
    .local v2, "length":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [S

    .line 1013
    .local v3, "result":[S
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1014
    aput-short p1, v3, v0

    .line 1015
    return-object v3
.end method

.method public static blacklist reverse([B)[B
    .registers 5
    .param p0, "a"    # [B

    .line 1034
    if-nez p0, :cond_4

    .line 1036
    const/4 v0, 0x0

    return-object v0

    .line 1039
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1040
    .local v1, "p2":I
    new-array v2, v1, [B

    .line 1042
    .local v2, "result":[B
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1044
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget-byte v0, p0, v0

    aput-byte v0, v2, v1

    move v0, v3

    goto :goto_8

    .line 1047
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_14
    return-object v2
.end method

.method public static blacklist reverse([I)[I
    .registers 5
    .param p0, "a"    # [I

    .line 1052
    if-nez p0, :cond_4

    .line 1054
    const/4 v0, 0x0

    return-object v0

    .line 1057
    :cond_4
    const/4 v0, 0x0

    .local v0, "p1":I
    array-length v1, p0

    .line 1058
    .local v1, "p2":I
    new-array v2, v1, [I

    .line 1060
    .local v2, "result":[I
    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_14

    .line 1062
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "p1":I
    .local v3, "p1":I
    aget v0, p0, v0

    aput v0, v2, v1

    move v0, v3

    goto :goto_8

    .line 1065
    .end local v3    # "p1":I
    .restart local v0    # "p1":I
    :cond_14
    return-object v2
.end method
