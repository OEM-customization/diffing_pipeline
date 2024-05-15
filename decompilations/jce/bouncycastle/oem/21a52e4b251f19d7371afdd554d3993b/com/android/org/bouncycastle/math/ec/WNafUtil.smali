.class public abstract Lcom/android/org/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final blacklist DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final blacklist EMPTY_BYTES:[B

.field private static final blacklist EMPTY_INTS:[I

.field private static final blacklist EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field public static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    .line 15
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 16
    new-array v1, v0, [I

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 17
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-void

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

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 9
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method static synthetic blacklist access$100([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p0, "x0"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "x1"    # I

    .line 9
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist generateCompactNaf(Ljava/math/BigInteger;)[I
    .registers 13
    .param p0, "k"    # Ljava/math/BigInteger;

    .line 21
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5c

    .line 25
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_11

    .line 27
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    .line 30
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 32
    .local v1, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 33
    .local v2, "bits":I
    shr-int/lit8 v3, v2, 0x1

    new-array v3, v3, [I

    .line 35
    .local v3, "naf":[I
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 37
    .local v4, "diff":Ljava/math/BigInteger;
    add-int/lit8 v5, v2, -0x1

    .local v5, "highBit":I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 38
    .local v7, "zeroes":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_2b
    if-ge v8, v5, :cond_4d

    .line 40
    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-nez v9, :cond_36

    .line 42
    add-int/lit8 v7, v7, 0x1

    .line 43
    goto :goto_4b

    .line 46
    :cond_36
    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    const/4 v9, -0x1

    goto :goto_3f

    :cond_3e
    move v9, v0

    .line 47
    .local v9, "digit":I
    :goto_3f
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "length":I
    .local v10, "length":I
    shl-int/lit8 v11, v9, 0x10

    or-int/2addr v11, v7

    aput v11, v3, v6

    .line 48
    const/4 v6, 0x1

    .line 49
    .end local v7    # "zeroes":I
    .local v6, "zeroes":I
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    move v6, v10

    .line 38
    .end local v9    # "digit":I
    .end local v10    # "length":I
    .local v6, "length":I
    .restart local v7    # "zeroes":I
    :goto_4b
    add-int/2addr v8, v0

    goto :goto_2b

    .line 52
    .end local v8    # "i":I
    :cond_4d
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "length":I
    .local v0, "length":I
    const/high16 v8, 0x10000

    or-int/2addr v8, v7

    aput v8, v3, v6

    .line 54
    array-length v6, v3

    if-le v6, v0, :cond_5b

    .line 56
    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v3

    .line 59
    :cond_5b
    return-object v3

    .line 23
    .end local v0    # "length":I
    .end local v1    # "_3k":Ljava/math/BigInteger;
    .end local v2    # "bits":I
    .end local v3    # "naf":[I
    .end local v4    # "diff":Ljava/math/BigInteger;
    .end local v5    # "highBit":I
    .end local v7    # "zeroes":I
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .registers 14
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 64
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 66
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v0

    return-object v0

    .line 69
    :cond_8
    if-lt p0, v0, :cond_78

    const/16 v0, 0x10

    if-gt p0, v0, :cond_78

    .line 73
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v0, v1, 0x10

    if-nez v0, :cond_70

    .line 77
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_1f

    .line 79
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-object v0

    .line 82
    :cond_1f
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 85
    .local v0, "wnaf":[I
    shl-int v2, v1, p0

    .line 86
    .local v2, "pow2":I
    add-int/lit8 v3, v2, -0x1

    .line 87
    .local v3, "mask":I
    ushr-int/lit8 v4, v2, 0x1

    .line 89
    .local v4, "sign":I
    const/4 v5, 0x0

    .line 90
    .local v5, "carry":Z
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 92
    .local v7, "pos":I
    :goto_31
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_68

    .line 94
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_40

    .line 96
    add-int/lit8 v7, v7, 0x1

    .line 97
    goto :goto_31

    .line 100
    :cond_40
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    .line 103
    .local v8, "digit":I
    if-eqz v5, :cond_4d

    .line 105
    add-int/lit8 v8, v8, 0x1

    .line 108
    :cond_4d
    and-int v9, v8, v4

    if-eqz v9, :cond_53

    move v9, v1

    goto :goto_54

    :cond_53
    const/4 v9, 0x0

    :goto_54
    move v5, v9

    .line 109
    if-eqz v5, :cond_58

    .line 111
    sub-int/2addr v8, v2

    .line 114
    :cond_58
    if-lez v6, :cond_5d

    add-int/lit8 v9, v7, -0x1

    goto :goto_5e

    :cond_5d
    move v9, v7

    .line 115
    .local v9, "zeroes":I
    :goto_5e
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "length":I
    .local v10, "length":I
    shl-int/lit8 v11, v8, 0x10

    or-int/2addr v11, v9

    aput v11, v0, v6

    .line 116
    move v7, p0

    .line 117
    .end local v8    # "digit":I
    .end local v9    # "zeroes":I
    move v6, v10

    goto :goto_31

    .line 120
    .end local v10    # "length":I
    .restart local v6    # "length":I
    :cond_68
    array-length v1, v0

    if-le v1, v6, :cond_6f

    .line 122
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    .line 125
    :cond_6f
    return-object v0

    .line 75
    .end local v0    # "wnaf":[I
    .end local v2    # "pow2":I
    .end local v3    # "mask":I
    .end local v4    # "sign":I
    .end local v5    # "carry":Z
    .end local v6    # "length":I
    .end local v7    # "pos":I
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .registers 17
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;

    .line 130
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 131
    .local v0, "digits":I
    new-array v1, v0, [B

    .line 133
    .local v1, "jsf":[B
    move-object v2, p0

    .local v2, "k0":Ljava/math/BigInteger;
    move-object/from16 v3, p1

    .line 134
    .local v3, "k1":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "j":I
    const/4 v5, 0x0

    .local v5, "d0":I
    const/4 v6, 0x0

    .line 136
    .local v6, "d1":I
    const/4 v7, 0x0

    .line 137
    .local v7, "offset":I
    :goto_17
    or-int v8, v5, v6

    if-nez v8, :cond_30

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v8, v7, :cond_30

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-le v8, v7, :cond_28

    goto :goto_30

    .line 181
    :cond_28
    array-length v8, v1

    if-le v8, v4, :cond_2f

    .line 183
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v1

    .line 186
    :cond_2f
    return-object v1

    .line 139
    :cond_30
    :goto_30
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    ushr-int/2addr v8, v7

    add-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    .local v8, "n0":I
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    ushr-int/2addr v9, v7

    add-int/2addr v9, v6

    and-int/lit8 v9, v9, 0x7

    .line 141
    .local v9, "n1":I
    and-int/lit8 v10, v8, 0x1

    .line 142
    .local v10, "u0":I
    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eqz v10, :cond_52

    .line 144
    and-int/lit8 v13, v8, 0x2

    sub-int/2addr v10, v13

    .line 145
    add-int v13, v8, v10

    if-ne v13, v11, :cond_52

    and-int/lit8 v13, v9, 0x3

    if-ne v13, v12, :cond_52

    .line 147
    neg-int v10, v10

    .line 151
    :cond_52
    and-int/lit8 v13, v9, 0x1

    .line 152
    .local v13, "u1":I
    if-eqz v13, :cond_62

    .line 154
    and-int/lit8 v14, v9, 0x2

    sub-int/2addr v13, v14

    .line 155
    add-int v14, v9, v13

    if-ne v14, v11, :cond_62

    and-int/lit8 v11, v8, 0x3

    if-ne v11, v12, :cond_62

    .line 157
    neg-int v13, v13

    .line 161
    :cond_62
    shl-int/lit8 v11, v5, 0x1

    add-int/lit8 v12, v10, 0x1

    if-ne v11, v12, :cond_6a

    .line 163
    xor-int/lit8 v5, v5, 0x1

    .line 165
    :cond_6a
    shl-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v13, 0x1

    if-ne v11, v12, :cond_72

    .line 167
    xor-int/lit8 v6, v6, 0x1

    .line 170
    :cond_72
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0x1e

    if-ne v7, v11, :cond_81

    .line 172
    const/4 v7, 0x0

    .line 173
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 174
    invoke-virtual {v3, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 177
    :cond_81
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "j":I
    .local v11, "j":I
    shl-int/lit8 v12, v10, 0x4

    and-int/lit8 v14, v13, 0xf

    or-int/2addr v12, v14

    int-to-byte v12, v12

    aput-byte v12, v1, v4

    .line 178
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v10    # "u0":I
    .end local v13    # "u1":I
    move v4, v11

    goto :goto_17
.end method

.method public static blacklist generateNaf(Ljava/math/BigInteger;)[B
    .registers 9
    .param p0, "k"    # Ljava/math/BigInteger;

    .line 191
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_9

    .line 193
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    .line 196
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 198
    .local v1, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int/2addr v2, v0

    .line 199
    .local v2, "digits":I
    new-array v3, v2, [B

    .line 201
    .local v3, "naf":[B
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 203
    .local v4, "diff":Ljava/math/BigInteger;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1e
    if-ge v5, v2, :cond_38

    .line 205
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 207
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v7, -0x1

    goto :goto_31

    :cond_30
    move v7, v0

    :goto_31
    int-to-byte v7, v7

    aput-byte v7, v3, v6

    .line 208
    add-int/lit8 v5, v5, 0x1

    .line 203
    :cond_36
    add-int/2addr v5, v0

    goto :goto_1e

    .line 212
    .end local v5    # "i":I
    :cond_38
    add-int/lit8 v5, v2, -0x1

    aput-byte v0, v3, v5

    .line 214
    return-object v3
.end method

.method public static blacklist generateWindowNaf(ILjava/math/BigInteger;)[B
    .registers 13
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 231
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    .line 233
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0

    .line 236
    :cond_8
    if-lt p0, v0, :cond_66

    const/16 v0, 0x8

    if-gt p0, v0, :cond_66

    .line 240
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_17

    .line 242
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    return-object v0

    .line 245
    :cond_17
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 248
    .local v0, "wnaf":[B
    shl-int v2, v1, p0

    .line 249
    .local v2, "pow2":I
    add-int/lit8 v3, v2, -0x1

    .line 250
    .local v3, "mask":I
    ushr-int/lit8 v4, v2, 0x1

    .line 252
    .local v4, "sign":I
    const/4 v5, 0x0

    .line 253
    .local v5, "carry":Z
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v7, 0x0

    .line 255
    .local v7, "pos":I
    :goto_28
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-gt v7, v8, :cond_5e

    .line 257
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v8, v5, :cond_37

    .line 259
    add-int/lit8 v7, v7, 0x1

    .line 260
    goto :goto_28

    .line 263
    :cond_37
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    and-int/2addr v8, v3

    .line 266
    .local v8, "digit":I
    if-eqz v5, :cond_44

    .line 268
    add-int/lit8 v8, v8, 0x1

    .line 271
    :cond_44
    and-int v9, v8, v4

    if-eqz v9, :cond_4a

    move v9, v1

    goto :goto_4b

    :cond_4a
    const/4 v9, 0x0

    :goto_4b
    move v5, v9

    .line 272
    if-eqz v5, :cond_4f

    .line 274
    sub-int/2addr v8, v2

    .line 277
    :cond_4f
    if-lez v6, :cond_54

    add-int/lit8 v9, v7, -0x1

    goto :goto_55

    :cond_54
    move v9, v7

    :goto_55
    add-int/2addr v6, v9

    .line 278
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "length":I
    .local v9, "length":I
    int-to-byte v10, v8

    aput-byte v10, v0, v6

    .line 279
    move v7, p0

    .line 280
    .end local v8    # "digit":I
    move v6, v9

    goto :goto_28

    .line 283
    .end local v9    # "length":I
    .restart local v6    # "length":I
    :cond_5e
    array-length v1, v0

    if-le v1, v6, :cond_65

    .line 285
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    .line 288
    :cond_65
    return-object v0

    .line 238
    .end local v0    # "wnaf":[B
    .end local v2    # "pow2":I
    .end local v3    # "mask":I
    .end local v4    # "sign":I
    .end local v5    # "carry":Z
    .end local v6    # "length":I
    .end local v7    # "pos":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getNafWeight(Ljava/math/BigInteger;)I
    .registers 4
    .param p0, "k"    # Ljava/math/BigInteger;

    .line 293
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_8

    .line 295
    const/4 v0, 0x0

    return v0

    .line 298
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 299
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 301
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    return v2
.end method

.method public static blacklist getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 3
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 306
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 2
    .param p0, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 311
    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method public static blacklist getWindowSize(I)I
    .registers 2
    .param p0, "bits"    # I

    .line 322
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result v0

    return v0
.end method

.method public static blacklist getWindowSize(I[I)I
    .registers 4
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "w":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 337
    aget v1, p1, v0

    if-ge p0, v1, :cond_9

    .line 339
    goto :goto_c

    .line 335
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_c
    :goto_c
    add-int/lit8 v1, v0, 0x2

    return v1
.end method

.method public static blacklist mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z
    .param p3, "pointMap"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    .line 348
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 349
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v1

    .line 351
    .local v1, "wnafPreCompP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-interface {p3, p0}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 352
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;

    invoke-direct {v3, v1, p3, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;-><init>(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Z)V

    const-string v4, "bc_wnaf"

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 387
    return-object v2
.end method

.method public static blacklist precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .registers 6
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z

    .line 392
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 394
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;-><init>(IZLcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECCurve;)V

    const-string v2, "bc_wnaf"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v1
.end method

.method private static blacklist resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p0, "a"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    .line 571
    new-array v0, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 572
    .local v0, "result":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    return-object v0
.end method

.method private static blacklist trim([BI)[B
    .registers 5
    .param p0, "a"    # [B
    .param p1, "length"    # I

    .line 557
    new-array v0, p1, [B

    .line 558
    .local v0, "result":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    return-object v0
.end method

.method private static blacklist trim([II)[I
    .registers 5
    .param p0, "a"    # [I
    .param p1, "length"    # I

    .line 564
    new-array v0, p1, [I

    .line 565
    .local v0, "result":[I
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    return-object v0
.end method
