.class public Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 24
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 25
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 2
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 45
    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .prologue
    .line 208
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 209
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 213
    .local v3, "pSub2":Ljava/math/BigInteger;
    :cond_10
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v4, v3, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 214
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 215
    .local v1, "g":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_10

    .line 217
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .prologue
    .line 352
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .registers 15
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "seed"    # [B
    .param p4, "index"    # I

    .prologue
    const/4 v9, 0x0

    .line 359
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 360
    .local v3, "e":Ljava/math/BigInteger;
    const-string/jumbo v7, "6767656E"

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 363
    .local v5, "ggen":[B
    array-length v7, p3

    array-length v8, v5

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 364
    .local v0, "U":[B
    array-length v7, p3

    invoke-static {p3, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 365
    array-length v7, p3

    array-length v8, v5

    invoke-static {v5, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 366
    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    int-to-byte v8, p4

    aput-byte v8, v0, v7

    .line 368
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v6, v7, [B

    .line 369
    .local v6, "w":[B
    const/4 v2, 0x1

    .local v2, "count":I
    :goto_31
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_51

    .line 371
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 372
    invoke-static {p0, v0, v6, v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 373
    new-instance v1, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 374
    .local v1, "W":Ljava/math/BigInteger;
    invoke-virtual {v1, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 375
    .local v4, "g":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_4e

    .line 377
    return-object v4

    .line 369
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 381
    .end local v1    # "W":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    :cond_51
    const/4 v7, 0x0

    return-object v7
.end method

.method private generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 23

    .prologue
    .line 127
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v15, v0, [B

    .line 128
    .local v15, "seed":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v11, v0, [B

    .line 129
    .local v11, "part1":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 130
    .local v12, "part2":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 131
    .local v16, "u":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    div-int/lit16 v8, v0, 0xa0

    .line 132
    .local v8, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 135
    .local v17, "w":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "SHA-1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7d

    .line 138
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 155
    .local v6, "i":I
    :cond_50
    const/16 v19, 0x0

    aget-byte v20, v16, v19

    or-int/lit8 v20, v20, -0x80

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 156
    const/16 v19, 0x13

    aget-byte v20, v16, v19

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 158
    new-instance v13, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 160
    .local v13, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v19

    if-nez v19, :cond_d3

    .line 143
    .end local v6    # "i":I
    .end local v13    # "q":Ljava/math/BigInteger;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v15, v11, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 146
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v15, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    invoke-static {v12}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v12, v12, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 150
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_ba
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_50

    .line 152
    aget-byte v19, v11, v6

    aget-byte v20, v12, v6

    xor-int v19, v19, v20

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v6

    .line 150
    add-int/lit8 v6, v6, 0x1

    goto :goto_ba

    .line 165
    .restart local v13    # "q":Ljava/math/BigInteger;
    :cond_d3
    invoke-static {v15}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    .line 166
    .local v9, "offset":[B
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 168
    const/4 v4, 0x0

    .local v4, "counter":I
    :goto_db
    const/16 v19, 0x1000

    move/from16 v0, v19

    if-ge v4, v0, :cond_7d

    .line 171
    const/4 v7, 0x1

    .local v7, "k":I
    :goto_e2
    if-gt v7, v8, :cond_105

    .line 173
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    array-length v0, v11

    move/from16 v21, v0

    mul-int v21, v21, v7

    sub-int v20, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v0, v9, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 171
    add-int/lit8 v7, v7, 0x1

    goto :goto_e2

    .line 177
    :cond_105
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v11

    move/from16 v20, v0

    mul-int v20, v20, v8

    sub-int v14, v19, v20

    .line 178
    .local v14, "remaining":I
    invoke-static {v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v9, v11, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 180
    array-length v0, v11

    move/from16 v19, v0

    sub-int v19, v19, v14

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    const/16 v19, 0x0

    aget-byte v20, v17, v19

    or-int/lit8 v20, v20, -0x80

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v17, v19

    .line 185
    new-instance v18, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 187
    .local v18, "x":Ljava/math/BigInteger;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 189
    .local v3, "c":Ljava/math/BigInteger;
    sget-object v19, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 191
    .local v10, "p":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_179

    .line 168
    :cond_175
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_db

    .line 196
    :cond_179
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v19

    if-eqz v19, :cond_175

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v10, v13, v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    .line 200
    .local v5, "g":Ljava/math/BigInteger;
    new-instance v19, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v20, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v4}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v13, v5, v1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v19
.end method

.method private generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 28

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 231
    .local v11, "d":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    mul-int/lit8 v16, v24, 0x8

    .line 239
    .local v16, "outlen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v22, v0

    .line 240
    .local v22, "seedlen":I
    div-int/lit8 v24, v22, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 243
    .local v21, "seed":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    div-int v14, v24, v16

    .line 246
    .local v14, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    rem-int v7, v24, v16

    .line 248
    .local v7, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 249
    .local v23, "w":[B
    invoke-interface {v11}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 253
    .local v17, "output":[B
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 256
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 258
    new-instance v24, Ljava/math/BigInteger;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v25, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 261
    .local v5, "U":Ljava/math/BigInteger;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v19

    .line 264
    .local v19, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v24

    if-eqz v24, :cond_44

    .line 272
    invoke-static/range {v21 .. v21}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v15

    .line 275
    .local v15, "offset":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    mul-int/lit8 v10, v24, 0x4

    .line 276
    .local v10, "counterLimit":I
    const/4 v9, 0x0

    .local v9, "counter":I
    :goto_a6
    if-ge v9, v10, :cond_44

    .line 282
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_a9
    if-gt v13, v14, :cond_c6

    .line 284
    invoke-static {v15}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 285
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    mul-int v25, v25, v13

    sub-int v24, v24, v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v11, v15, v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 282
    add-int/lit8 v13, v13, 0x1

    goto :goto_a9

    .line 288
    :cond_c6
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    mul-int v25, v25, v14

    sub-int v20, v24, v25

    .line 289
    .local v20, "remaining":I
    invoke-static {v15}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 290
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v11, v15, v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 291
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v20

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 294
    const/16 v24, 0x0

    aget-byte v25, v23, v24

    or-int/lit8 v25, v25, -0x80

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 297
    new-instance v6, Ljava/math/BigInteger;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 300
    .local v6, "X":Ljava/math/BigInteger;
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 303
    .local v8, "c":Ljava/math/BigInteger;
    sget-object v24, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 306
    .local v18, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_140

    .line 276
    :cond_13c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a6

    .line 312
    :cond_140
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v24

    if-eqz v24, :cond_13c

    .line 316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v24, v0

    if-ltz v24, :cond_185

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v24

    invoke-static {v11, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lcom/android/org/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v12

    .line 319
    .local v12, "g":Ljava/math/BigInteger;
    if-eqz v12, :cond_185

    .line 321
    new-instance v24, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move/from16 v2, v26

    invoke-direct {v0, v1, v9, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v24

    .line 325
    .end local v12    # "g":Ljava/math/BigInteger;
    :cond_185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v12

    .line 327
    .restart local v12    # "g":Ljava/math/BigInteger;
    new-instance v24, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v25, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v12, v3}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v24
.end method

.method private static getDefaultN(I)I
    .registers 2
    .param p0, "L"    # I

    .prologue
    .line 392
    const/16 v0, 0x400

    if-le p0, v0, :cond_7

    const/16 v0, 0x100

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa0

    goto :goto_6
.end method

.method private static getMinimumIterations(I)I
    .registers 2
    .param p0, "L"    # I

    .prologue
    .line 398
    const/16 v0, 0x400

    if-gt p0, v0, :cond_7

    const/16 v0, 0x28

    :goto_6
    return v0

    :cond_7
    add-int/lit8 v0, p0, -0x1

    div-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x30

    goto :goto_6
.end method

.method private static hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outputPos"    # I

    .prologue
    .line 386
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 387
    invoke-interface {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 388
    return-void
.end method

.method private static inc([B)V
    .registers 4
    .param p0, "buf"    # [B

    .prologue
    .line 403
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_10

    .line 405
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 406
    .local v0, "b":B
    aput-byte v0, p0, v1

    .line 408
    if-eqz v0, :cond_11

    .line 413
    .end local v0    # "b":B
    :cond_10
    return-void

    .line 403
    .restart local v0    # "b":B
    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 346
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_9

    .line 121
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 120
    :goto_8
    return-object v0

    .line 122
    :cond_9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_8
.end method

.method public init(IILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 59
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 60
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 61
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 62
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 63
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 66
    return-void
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V
    .registers 8
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .prologue
    const/16 v5, 0xc00

    const/16 v4, 0x400

    const/16 v3, 0x100

    .line 79
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    .local v0, "L":I
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    .line 81
    .local v1, "N":I
    if-lt v0, v4, :cond_12

    if-le v0, v5, :cond_1b

    .line 83
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1b
    rem-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_12

    .line 85
    if-ne v0, v4, :cond_2e

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_2e

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "N must be 160 for L = 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_2e
    const/16 v2, 0x800

    if-ne v0, v2, :cond_41

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_41

    if-eq v1, v3, :cond_41

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "N must be 224 or 256 for L = 2048"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_41
    if-ne v0, v5, :cond_4e

    if-eq v1, v3, :cond_4e

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "N must be 256 for L = 3072"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_4e
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-ge v2, v1, :cond_61

    .line 100
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Digest output size too small for value of N"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_61
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 104
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 105
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v2

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 106
    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v2

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 107
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 109
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v2

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 110
    return-void
.end method
