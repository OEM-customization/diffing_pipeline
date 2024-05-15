.class public abstract Lcom/android/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    .line 11
    new-array v0, v1, [B

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 12
    new-array v0, v1, [I

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 13
    new-array v0, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 5
    return-void

    .line 9
    :array_16
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .registers 13
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_11

    .line 19
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 21
    :cond_11
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_1a

    .line 23
    sget-object v10, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v10

    .line 26
    :cond_1a
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 29
    .local v1, "bits":I
    shr-int/lit8 v10, v1, 0x1

    new-array v8, v10, [I

    .line 31
    .local v8, "naf":[I
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 33
    .local v2, "diff":Ljava/math/BigInteger;
    add-int/lit8 v4, v1, -0x1

    .local v4, "highBit":I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v9, 0x0

    .line 34
    .local v9, "zeroes":I
    const/4 v5, 0x1

    .local v5, "i":I
    move v7, v6

    .end local v6    # "length":I
    .local v7, "length":I
    :goto_35
    if-ge v5, v4, :cond_58

    .line 36
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-nez v10, :cond_44

    .line 38
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .line 34
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :goto_40
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_35

    .line 42
    :cond_44
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_56

    const/4 v3, -0x1

    .line 43
    .local v3, "digit":I
    :goto_4b
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    shl-int/lit8 v10, v3, 0x10

    or-int/2addr v10, v9

    aput v10, v8, v7

    .line 44
    const/4 v9, 0x1

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 42
    .end local v3    # "digit":I
    .end local v6    # "length":I
    .restart local v7    # "length":I
    :cond_56
    const/4 v3, 0x1

    .restart local v3    # "digit":I
    goto :goto_4b

    .line 48
    .end local v3    # "digit":I
    :cond_58
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    const/high16 v10, 0x10000

    or-int/2addr v10, v9

    aput v10, v8, v7

    .line 50
    array-length v10, v8

    if-le v10, v6, :cond_66

    .line 52
    invoke-static {v8, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    .line 55
    :cond_66
    return-object v8
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .registers 14
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x2

    .line 60
    if-ne p0, v10, :cond_8

    .line 62
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v10

    return-object v10

    .line 65
    :cond_8
    if-lt p0, v10, :cond_e

    const/16 v10, 0x10

    if-le p0, v10, :cond_17

    .line 67
    :cond_e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "\'width\' must be in the range [2, 16]"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 69
    :cond_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_28

    .line 71
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 73
    :cond_28
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_31

    .line 75
    sget-object v10, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v10

    .line 78
    :cond_31
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    div-int/2addr v10, p0

    add-int/lit8 v10, v10, 0x1

    new-array v8, v10, [I

    .line 81
    .local v8, "wnaf":[I
    const/4 v10, 0x1

    shl-int v6, v10, p0

    .line 82
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 83
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 85
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 86
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 88
    .local v5, "pos":I
    :goto_44
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v5, v10, :cond_7b

    .line 90
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v0, :cond_53

    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_44

    .line 96
    :cond_53
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int v1, v10, v4

    .line 99
    .local v1, "digit":I
    if-eqz v0, :cond_61

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 104
    :cond_61
    and-int v10, v1, v7

    if-eqz v10, :cond_77

    const/4 v0, 0x1

    .line 105
    :goto_66
    if-eqz v0, :cond_69

    .line 107
    sub-int/2addr v1, v6

    .line 110
    :cond_69
    if-lez v2, :cond_79

    add-int/lit8 v9, v5, -0x1

    .line 111
    .local v9, "zeroes":I
    :goto_6d
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    shl-int/lit8 v10, v1, 0x10

    or-int/2addr v10, v9

    aput v10, v8, v2

    .line 112
    move v5, p0

    move v2, v3

    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_44

    .line 104
    .end local v9    # "zeroes":I
    :cond_77
    const/4 v0, 0x0

    goto :goto_66

    .line 110
    :cond_79
    move v9, v5

    .restart local v9    # "zeroes":I
    goto :goto_6d

    .line 116
    .end local v1    # "digit":I
    .end local v9    # "zeroes":I
    :cond_7b
    array-length v10, v8

    if-le v10, v2, :cond_82

    .line 118
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    .line 121
    :cond_82
    return-object v8
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 17
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    .line 127
    .local v2, "digits":I
    new-array v5, v2, [B

    .line 129
    .local v5, "jsf":[B
    move-object v6, p0

    .local v6, "k0":Ljava/math/BigInteger;
    move-object/from16 v7, p1

    .line 130
    .local v7, "k1":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v0, 0x0

    .local v0, "d0":I
    const/4 v1, 0x0

    .line 132
    .local v1, "d1":I
    const/4 v10, 0x0

    .local v10, "offset":I
    move v4, v3

    .line 133
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_18
    or-int v13, v0, v1

    if-nez v13, :cond_22

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-le v13, v10, :cond_85

    .line 135
    :cond_22
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    ushr-int/2addr v13, v10

    add-int/2addr v13, v0

    and-int/lit8 v8, v13, 0x7

    .local v8, "n0":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    ushr-int/2addr v13, v10

    add-int/2addr v13, v1

    and-int/lit8 v9, v13, 0x7

    .line 137
    .local v9, "n1":I
    and-int/lit8 v11, v8, 0x1

    .line 138
    .local v11, "u0":I
    if-eqz v11, :cond_44

    .line 140
    and-int/lit8 v13, v8, 0x2

    sub-int/2addr v11, v13

    .line 141
    add-int v13, v8, v11

    const/4 v14, 0x4

    if-ne v13, v14, :cond_44

    and-int/lit8 v13, v9, 0x3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_44

    .line 143
    neg-int v11, v11

    .line 147
    :cond_44
    and-int/lit8 v12, v9, 0x1

    .line 148
    .local v12, "u1":I
    if-eqz v12, :cond_56

    .line 150
    and-int/lit8 v13, v9, 0x2

    sub-int/2addr v12, v13

    .line 151
    add-int v13, v9, v12

    const/4 v14, 0x4

    if-ne v13, v14, :cond_56

    and-int/lit8 v13, v8, 0x3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_56

    .line 153
    neg-int v12, v12

    .line 157
    :cond_56
    shl-int/lit8 v13, v0, 0x1

    add-int/lit8 v14, v11, 0x1

    if-ne v13, v14, :cond_5e

    .line 159
    xor-int/lit8 v0, v0, 0x1

    .line 161
    :cond_5e
    shl-int/lit8 v13, v1, 0x1

    add-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_66

    .line 163
    xor-int/lit8 v1, v1, 0x1

    .line 166
    :cond_66
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x1e

    if-ne v10, v13, :cond_79

    .line 168
    const/4 v10, 0x0

    .line 169
    const/16 v13, 0x1e

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 170
    const/16 v13, 0x1e

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 173
    :cond_79
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    shl-int/lit8 v13, v11, 0x4

    and-int/lit8 v14, v12, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v4

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_18

    .line 133
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v11    # "u0":I
    .end local v12    # "u1":I
    :cond_85
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-gt v13, v10, :cond_22

    .line 177
    array-length v13, v5

    if-le v13, v4, :cond_92

    .line 179
    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v5

    .line 182
    :cond_92
    return-object v5
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .registers 9
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x1

    .line 187
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-nez v5, :cond_a

    .line 189
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v5

    .line 192
    :cond_a
    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 195
    .local v2, "digits":I
    new-array v4, v2, [B

    .line 197
    .local v4, "naf":[B
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 199
    .local v1, "diff":Ljava/math/BigInteger;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_3a

    .line 201
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 203
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, -0x1

    :goto_30
    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 199
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_38
    move v5, v6

    .line 203
    goto :goto_30

    .line 208
    :cond_3a
    add-int/lit8 v5, v2, -0x1

    aput-byte v6, v4, v5

    .line 210
    return-object v4
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .registers 13
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x2

    .line 227
    if-ne p0, v9, :cond_8

    .line 229
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v9

    return-object v9

    .line 232
    :cond_8
    if-lt p0, v9, :cond_e

    const/16 v9, 0x8

    if-le p0, v9, :cond_17

    .line 234
    :cond_e
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "\'width\' must be in the range [2, 8]"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-nez v9, :cond_20

    .line 238
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v9

    .line 241
    :cond_20
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v8, v9, [B

    .line 244
    .local v8, "wnaf":[B
    const/4 v9, 0x1

    shl-int v6, v9, p0

    .line 245
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 246
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 248
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 249
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 251
    .local v5, "pos":I
    :goto_32
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-gt v5, v9, :cond_66

    .line 253
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-ne v9, v0, :cond_41

    .line 255
    add-int/lit8 v5, v5, 0x1

    .line 256
    goto :goto_32

    .line 259
    :cond_41
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    and-int v1, v9, v4

    .line 262
    .local v1, "digit":I
    if-eqz v0, :cond_4f

    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 267
    :cond_4f
    and-int v9, v1, v7

    if-eqz v9, :cond_64

    const/4 v0, 0x1

    .line 268
    :goto_54
    if-eqz v0, :cond_57

    .line 270
    sub-int/2addr v1, v6

    .line 273
    :cond_57
    if-lez v2, :cond_5b

    add-int/lit8 v5, v5, -0x1

    .end local v5    # "pos":I
    :cond_5b
    add-int/2addr v2, v5

    .line 274
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    int-to-byte v9, v1

    aput-byte v9, v8, v2

    .line 275
    move v5, p0

    .restart local v5    # "pos":I
    move v2, v3

    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_32

    .line 267
    :cond_64
    const/4 v0, 0x0

    goto :goto_54

    .line 279
    .end local v1    # "digit":I
    :cond_66
    array-length v9, v8

    if-le v9, v2, :cond_6d

    .line 281
    invoke-static {v8, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v8

    .line 284
    :cond_6d
    return-object v8
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .registers 5
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_8

    .line 291
    return v3

    .line 294
    :cond_8
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 295
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 297
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    return v2
.end method

.method public static getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 3
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string/jumbo v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 2
    .param p0, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 307
    if-eqz p0, :cond_9

    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_9

    .line 309
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .end local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    return-object p0

    .line 312
    .restart local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_9
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    return-object v0
.end method

.method public static getWindowSize(I)I
    .registers 2
    .param p0, "bits"    # I

    .prologue
    .line 323
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .registers 4
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "w":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_8

    .line 338
    aget v1, p1, v0

    if-ge p0, v1, :cond_b

    .line 343
    :cond_8
    add-int/lit8 v1, v0, 0x2

    return v1

    .line 336
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z
    .param p3, "pointMap"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 350
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 352
    .local v8, "wnafPreCompP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-interface {p3, p0}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 353
    .local v5, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const-string/jumbo v10, "bc_wnaf"

    invoke-virtual {v0, v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 355
    .local v9, "wnafPreCompQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 356
    .local v6, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_24

    .line 358
    invoke-interface {p3, v6}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 359
    .local v7, "twiceQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v9, v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 362
    .end local v7    # "twiceQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_24
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 363
    .local v3, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v10, v3

    new-array v4, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 364
    .local v4, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    array-length v10, v3

    if-ge v1, v10, :cond_3a

    .line 366
    aget-object v10, v3, v1

    invoke-interface {p3, v10}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v4, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 368
    :cond_3a
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 370
    if-eqz p2, :cond_54

    .line 372
    array-length v10, v4

    new-array v2, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 373
    .local v2, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    :goto_43
    array-length v10, v2

    if-ge v1, v10, :cond_51

    .line 375
    aget-object v10, v4, v1

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v2, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 377
    :cond_51
    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 380
    .end local v2    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_54
    const-string/jumbo v10, "bc_wnaf"

    invoke-virtual {v0, v5, v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 382
    return-object v5
.end method

.method public static precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 20
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 388
    .local v1, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const-string/jumbo v15, "bc_wnaf"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v15

    invoke-static {v15}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    .line 390
    .local v14, "wnafPreCompInfo":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    const/4 v4, 0x0

    .local v4, "iniPreCompLen":I
    add-int/lit8 v15, p1, -0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    const/16 v16, 0x1

    shl-int v12, v16, v15

    .line 392
    .local v12, "reqPreCompLen":I
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 393
    .local v10, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v10, :cond_54

    .line 395
    sget-object v10, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 402
    :goto_28
    if-ge v4, v12, :cond_39

    .line 404
    invoke-static {v10, v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 406
    const/4 v15, 0x1

    if-ne v12, v15, :cond_56

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v10, v16

    .line 485
    :cond_39
    :goto_39
    invoke-virtual {v14, v10}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 487
    if-eqz p2, :cond_ec

    .line 489
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 492
    .local v11, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v11, :cond_e0

    .line 494
    const/4 v9, 0x0

    .line 495
    .local v9, "pos":I
    new-array v11, v12, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 506
    :cond_47
    :goto_47
    if-ge v9, v12, :cond_e9

    .line 508
    aget-object v15, v10, v9

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    aput-object v15, v11, v9

    .line 509
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 399
    .end local v9    # "pos":I
    .end local v11    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_54
    array-length v4, v10

    goto :goto_28

    .line 412
    :cond_56
    move v2, v4

    .line 413
    .local v2, "curPreCompLen":I
    if-nez v4, :cond_5d

    .line 415
    const/4 v15, 0x0

    aput-object p0, v10, v15

    .line 416
    const/4 v2, 0x1

    .line 419
    :cond_5d
    const/4 v5, 0x0

    .line 421
    .local v5, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_6f

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v10, v16

    .line 481
    .end local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_69
    sub-int v15, v12, v4

    invoke-virtual {v1, v10, v4, v15, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_39

    .line 427
    .restart local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6f
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .local v13, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v15, v2, -0x1

    aget-object v8, v10, v15

    .line 428
    .local v8, "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v13, :cond_a0

    .line 430
    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 431
    invoke-virtual {v14, v13}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 443
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v15

    if-nez v15, :cond_ac

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v15

    if-eqz v15, :cond_ac

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v15

    const/16 v16, 0x40

    move/from16 v0, v16

    if-lt v15, v0, :cond_ac

    .line 445
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v15

    packed-switch v15, :pswitch_data_f8

    .end local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a0
    :goto_a0
    move v3, v2

    .line 468
    .end local v2    # "curPreCompLen":I
    .local v3, "curPreCompLen":I
    :goto_a1
    if-ge v3, v12, :cond_f5

    .line 474
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    invoke-virtual {v8, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, v10, v3

    goto :goto_a0

    .restart local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ac
    move v3, v2

    .line 444
    .end local v2    # "curPreCompLen":I
    .restart local v3    # "curPreCompLen":I
    goto :goto_a1

    .line 451
    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    :pswitch_ae
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 452
    .local v5, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 455
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 456
    .local v7, "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 458
    if-nez v4, :cond_de

    .line 460
    const/4 v15, 0x0

    aput-object v8, v10, v15

    :cond_de
    move v3, v2

    .line 462
    .end local v2    # "curPreCompLen":I
    .restart local v3    # "curPreCompLen":I
    goto :goto_a1

    .line 499
    .end local v3    # "curPreCompLen":I
    .end local v5    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v13    # "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v11    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_e0
    array-length v9, v11

    .line 500
    .restart local v9    # "pos":I
    if-ge v9, v12, :cond_47

    .line 502
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    goto/16 :goto_47

    .line 512
    :cond_e9
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 515
    .end local v9    # "pos":I
    .end local v11    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_ec
    const-string/jumbo v15, "bc_wnaf"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v15, v14}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 517
    return-object v14

    .restart local v3    # "curPreCompLen":I
    .restart local v8    # "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v13    # "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_f5
    move v2, v3

    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    goto/16 :goto_69

    .line 445
    :pswitch_data_f8
    .packed-switch 0x2
        :pswitch_ae
        :pswitch_ae
        :pswitch_ae
    .end packed-switch
.end method

.method private static resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p0, "a"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 536
    new-array v0, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 537
    .local v0, "result":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    return-object v0
.end method

.method private static trim([BI)[B
    .registers 5
    .param p0, "a"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    new-array v0, p1, [B

    .line 523
    .local v0, "result":[B
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 524
    return-object v0
.end method

.method private static trim([II)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 529
    new-array v0, p1, [I

    .line 530
    .local v0, "result":[I
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 531
    return-object v0
.end method
