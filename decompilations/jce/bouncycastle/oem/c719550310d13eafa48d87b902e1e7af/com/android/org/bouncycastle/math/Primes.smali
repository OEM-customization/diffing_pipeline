.class public abstract Lcom/android/org/bouncycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/Primes$MROutput;,
        Lcom/android/org/bouncycastle/math/Primes$STOutput;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 5
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 356
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2a

    .line 358
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' must be non-null and >= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_2a
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    .line 360
    return-void
.end method

.method public static enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/org/bouncycastle/math/Primes$MROutput;
    .registers 18
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    .prologue
    .line 152
    const-string/jumbo v13, "candidate"

    invoke-static {p0, v13}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 154
    if-nez p1, :cond_11

    .line 156
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "\'random\' cannot be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 158
    :cond_11
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_1f

    .line 160
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "\'iterations\' must be > 0"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 163
    :cond_1f
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2b

    .line 165
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap0()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v13

    return-object v13

    .line 167
    :cond_2b
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-nez v13, :cond_39

    .line 169
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v13}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v13

    return-object v13

    .line 172
    :cond_39
    move-object v8, p0

    .line 173
    .local v8, "w":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 174
    .local v9, "wSubOne":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 176
    .local v10, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    .line 177
    .local v1, "a":I
    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 179
    .local v6, "m":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    move/from16 v0, p2

    if-ge v4, v0, :cond_d5

    .line 181
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-static {v13, v10, v0}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 182
    .local v2, "b":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 184
    .local v3, "g":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-lez v13, :cond_6c

    .line 186
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v13

    return-object v13

    .line 189
    :cond_6c
    invoke-virtual {v2, v6, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 191
    .local v12, "z":Ljava/math/BigInteger;
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7e

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81

    .line 179
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 196
    :cond_81
    const/4 v7, 0x0

    .line 198
    .local v7, "primeToBase":Z
    move-object v11, v12

    .line 199
    .local v11, "x":Ljava/math/BigInteger;
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_84
    if-ge v5, v1, :cond_93

    .line 201
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v13, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 203
    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c4

    .line 205
    const/4 v7, 0x1

    .line 217
    :cond_93
    if-nez v7, :cond_7e

    .line 219
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ad

    .line 221
    move-object v11, v12

    .line 222
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v13, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 224
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ad

    .line 226
    move-object v11, v12

    .line 230
    :cond_ad
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 232
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-lez v13, :cond_d0

    .line 234
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap2(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v13

    return-object v13

    .line 209
    :cond_c4
    sget-object v13, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_93

    .line 214
    move-object v11, v12

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    .line 237
    :cond_d0
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap1()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v13

    return-object v13

    .line 241
    .end local v2    # "b":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v5    # "j":I
    .end local v7    # "primeToBase":Z
    .end local v11    # "x":Ljava/math/BigInteger;
    .end local v12    # "z":Ljava/math/BigInteger;
    :cond_d5
    invoke-static {}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->-wrap0()Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object v13

    return-object v13
.end method

.method private static extract32([B)I
    .registers 7
    .param p0, "bs"    # [B

    .prologue
    .line 585
    const/4 v3, 0x0

    .line 587
    .local v3, "result":I
    array-length v4, p0

    const/4 v5, 0x4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 588
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 590
    array-length v4, p0

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 591
    .local v0, "b":I
    mul-int/lit8 v4, v2, 0x8

    shl-int v4, v0, v4

    or-int/2addr v3, v4

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 594
    .end local v0    # "b":I
    :cond_1a
    return v3
.end method

.method public static generateSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;
    .registers 5
    .param p0, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "inputSeed"    # [B

    .prologue
    .line 118
    if-nez p0, :cond_b

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'hash\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_b
    const/4 v0, 0x2

    if-ge p1, v0, :cond_17

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'length\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_17
    if-eqz p2, :cond_1c

    array-length v0, p2

    if-nez v0, :cond_25

    .line 128
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_25
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;

    move-result-object v0

    return-object v0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 2
    .param p0, "candidate"    # Ljava/math/BigInteger;

    .prologue
    .line 255
    const-string/jumbo v0, "candidate"

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method private static hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V
    .registers 6
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outPos"    # I

    .prologue
    .line 599
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 600
    invoke-interface {p0, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 601
    return-void
.end method

.method private static hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .registers 9
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "seed"    # [B
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x1

    .line 605
    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 606
    .local v1, "dLen":I
    mul-int v3, p2, v1

    .line 607
    .local v3, "pos":I
    new-array v0, v3, [B

    .line 608
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, p2, :cond_16

    .line 610
    sub-int/2addr v3, v1

    .line 611
    invoke-static {p0, p1, v0, v3}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 612
    invoke-static {p1, v5}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 614
    :cond_16
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .registers 7
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 367
    const v0, 0xd4c2086

    .line 368
    .local v0, "m":I
    const-wide/32 v2, 0xd4c2086

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 369
    .local v1, "r":I
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1c

    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_1d

    .line 372
    :cond_1c
    return v5

    .line 369
    :cond_1d
    rem-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_1c

    rem-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_1c

    rem-int/lit8 v2, v1, 0xb

    if-eqz v2, :cond_1c

    rem-int/lit8 v2, v1, 0xd

    if-eqz v2, :cond_1c

    .line 370
    rem-int/lit8 v2, v1, 0x11

    if-eqz v2, :cond_1c

    rem-int/lit8 v2, v1, 0x13

    if-eqz v2, :cond_1c

    rem-int/lit8 v2, v1, 0x17

    if-eqz v2, :cond_1c

    .line 375
    const v0, 0x37ed0ed

    .line 376
    const-wide/32 v2, 0x37ed0ed

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 377
    rem-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_53

    rem-int/lit8 v2, v1, 0x1f

    if-nez v2, :cond_54

    .line 379
    :cond_53
    return v5

    .line 377
    :cond_54
    rem-int/lit8 v2, v1, 0x25

    if-eqz v2, :cond_53

    rem-int/lit8 v2, v1, 0x29

    if-eqz v2, :cond_53

    rem-int/lit8 v2, v1, 0x2b

    if-eqz v2, :cond_53

    .line 382
    const v0, 0x23cd611f

    .line 383
    const-wide/32 v2, 0x23cd611f

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 384
    rem-int/lit8 v2, v1, 0x2f

    if-eqz v2, :cond_7a

    rem-int/lit8 v2, v1, 0x35

    if-nez v2, :cond_7b

    .line 386
    :cond_7a
    return v5

    .line 384
    :cond_7b
    rem-int/lit8 v2, v1, 0x3b

    if-eqz v2, :cond_7a

    rem-int/lit8 v2, v1, 0x3d

    if-eqz v2, :cond_7a

    rem-int/lit8 v2, v1, 0x43

    if-eqz v2, :cond_7a

    .line 389
    const v0, 0x20691a3

    .line 390
    const-wide/32 v2, 0x20691a3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 391
    rem-int/lit8 v2, v1, 0x47

    if-eqz v2, :cond_a1

    rem-int/lit8 v2, v1, 0x49

    if-nez v2, :cond_a2

    .line 393
    :cond_a1
    return v5

    .line 391
    :cond_a2
    rem-int/lit8 v2, v1, 0x4f

    if-eqz v2, :cond_a1

    rem-int/lit8 v2, v1, 0x53

    if-eqz v2, :cond_a1

    .line 396
    const v0, 0x55a60cb

    .line 397
    const-wide/32 v2, 0x55a60cb

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 398
    rem-int/lit8 v2, v1, 0x59

    if-eqz v2, :cond_c4

    rem-int/lit8 v2, v1, 0x61

    if-nez v2, :cond_c5

    .line 400
    :cond_c4
    return v5

    .line 398
    :cond_c5
    rem-int/lit8 v2, v1, 0x65

    if-eqz v2, :cond_c4

    rem-int/lit8 v2, v1, 0x67

    if-eqz v2, :cond_c4

    .line 403
    const v0, 0x9f9f361

    .line 404
    const-wide/32 v2, 0x9f9f361

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 405
    rem-int/lit8 v2, v1, 0x6b

    if-eqz v2, :cond_e7

    rem-int/lit8 v2, v1, 0x6d

    if-nez v2, :cond_e8

    .line 407
    :cond_e7
    return v5

    .line 405
    :cond_e8
    rem-int/lit8 v2, v1, 0x71

    if-eqz v2, :cond_e7

    rem-int/lit8 v2, v1, 0x7f

    if-eqz v2, :cond_e7

    .line 410
    const v0, 0x1627b25d

    .line 411
    const-wide/32 v2, 0x1627b25d

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 412
    rem-int/lit16 v2, v1, 0x83

    if-eqz v2, :cond_10a

    rem-int/lit16 v2, v1, 0x89

    if-nez v2, :cond_10b

    .line 414
    :cond_10a
    return v5

    .line 412
    :cond_10b
    rem-int/lit16 v2, v1, 0x8b

    if-eqz v2, :cond_10a

    rem-int/lit16 v2, v1, 0x95

    if-eqz v2, :cond_10a

    .line 417
    const v0, 0x2676ed77

    .line 418
    const-wide/32 v2, 0x2676ed77

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 419
    rem-int/lit16 v2, v1, 0x97

    if-eqz v2, :cond_12d

    rem-int/lit16 v2, v1, 0x9d

    if-nez v2, :cond_12e

    .line 421
    :cond_12d
    return v5

    .line 419
    :cond_12e
    rem-int/lit16 v2, v1, 0xa3

    if-eqz v2, :cond_12d

    rem-int/lit16 v2, v1, 0xa7

    if-eqz v2, :cond_12d

    .line 424
    const v0, 0x3fcf739d

    .line 425
    const-wide/32 v2, 0x3fcf739d

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 426
    rem-int/lit16 v2, v1, 0xad

    if-eqz v2, :cond_150

    rem-int/lit16 v2, v1, 0xb3

    if-nez v2, :cond_151

    .line 428
    :cond_150
    return v5

    .line 426
    :cond_151
    rem-int/lit16 v2, v1, 0xb5

    if-eqz v2, :cond_150

    rem-int/lit16 v2, v1, 0xbf

    if-eqz v2, :cond_150

    .line 431
    const v0, 0x5f281a99

    .line 432
    const-wide/32 v2, 0x5f281a99

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 433
    rem-int/lit16 v2, v1, 0xc1

    if-eqz v2, :cond_173

    rem-int/lit16 v2, v1, 0xc5

    if-nez v2, :cond_174

    .line 435
    :cond_173
    return v5

    .line 433
    :cond_174
    rem-int/lit16 v2, v1, 0xc7

    if-eqz v2, :cond_173

    rem-int/lit16 v2, v1, 0xd3

    if-eqz v2, :cond_173

    .line 442
    return v4
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .registers 9
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "wSubOne"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;
    .param p3, "a"    # I
    .param p4, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 447
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 449
    .local v2, "z":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 451
    :cond_12
    const/4 v3, 0x1

    return v3

    .line 454
    :cond_14
    const/4 v1, 0x0

    .line 456
    .local v1, "result":Z
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_16
    if-ge v0, p3, :cond_25

    .line 458
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 460
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 462
    const/4 v1, 0x1

    .line 472
    :cond_25
    return v1

    .line 466
    :cond_26
    sget-object v3, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 468
    const/4 v3, 0x0

    return v3

    .line 456
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private static implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;
    .registers 33
    .param p0, "d"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "primeSeed"    # [B

    .prologue
    .line 477
    invoke-interface/range {p0 .. p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    .line 479
    .local v13, "dLen":I
    const/16 v25, 0x21

    move/from16 v0, p1

    move/from16 v1, v25

    if-ge v0, v1, :cond_8f

    .line 481
    const/16 v20, 0x0

    .line 483
    .local v20, "primeGenCounter":I
    new-array v10, v13, [B

    .line 484
    .local v10, "c0":[B
    new-array v12, v13, [B

    .line 488
    .local v12, "c1":[B
    :cond_12
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-static {v0, v1, v10, v2}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 489
    const/16 v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    .line 491
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-static {v0, v1, v12, v2}, Lcom/android/org/bouncycastle/math/Primes;->hash(Lcom/android/org/bouncycastle/crypto/Digest;[B[BI)V

    .line 492
    const/16 v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    .line 494
    invoke-static {v10}, Lcom/android/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v25

    invoke-static {v12}, Lcom/android/org/bouncycastle/math/Primes;->extract32([B)I

    move-result v26

    xor-int v7, v25, v26

    .line 495
    .local v7, "c":I
    rsub-int/lit8 v25, p1, 0x20

    const/16 v26, -0x1

    ushr-int v25, v26, v25

    and-int v7, v7, v25

    .line 496
    add-int/lit8 v25, p1, -0x1

    const/16 v26, 0x1

    shl-int v25, v26, v25

    or-int/lit8 v25, v25, 0x1

    or-int v7, v7, v25

    .line 498
    add-int/lit8 v20, v20, 0x1

    .line 500
    int-to-long v0, v7

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v14, v26, v28

    .line 501
    .local v14, "c64":J
    invoke-static {v14, v15}, Lcom/android/org/bouncycastle/math/Primes;->isPrime32(J)Z

    move-result v25

    if-eqz v25, :cond_7e

    .line 503
    new-instance v25, Lcom/android/org/bouncycastle/math/Primes$STOutput;

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes$STOutput;)V

    return-object v25

    .line 506
    :cond_7e
    mul-int/lit8 v25, p1, 0x4

    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_12

    .line 508
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string/jumbo v26, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 513
    .end local v7    # "c":I
    .end local v10    # "c0":[B
    .end local v12    # "c1":[B
    .end local v14    # "c64":J
    .end local v20    # "primeGenCounter":I
    :cond_8f
    add-int/lit8 v25, p1, 0x3

    div-int/lit8 v25, v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes;->implSTRandomPrime(Lcom/android/org/bouncycastle/crypto/Digest;I[B)Lcom/android/org/bouncycastle/math/Primes$STOutput;

    move-result-object v21

    .line 515
    .local v21, "rec":Lcom/android/org/bouncycastle/math/Primes$STOutput;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v9

    .line 516
    .local v9, "c0":Ljava/math/BigInteger;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object p2

    .line 517
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v20

    .line 519
    .restart local v20    # "primeGenCounter":I
    mul-int/lit8 v19, v13, 0x8

    .line 520
    .local v19, "outlen":I
    add-int/lit8 v25, p1, -0x1

    div-int v17, v25, v19

    .line 522
    .local v17, "iterations":I
    move/from16 v18, v20

    .line 524
    .local v18, "oldCounter":I
    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes;->hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v23

    .line 525
    .local v23, "x":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v26, p1, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    add-int/lit8 v26, p1, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v23

    .line 527
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 528
    .local v11, "c0x2":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v22

    .line 529
    .local v22, "tx2":Ljava/math/BigInteger;
    const/16 v16, 0x0

    .line 531
    .local v16, "dt":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 539
    .local v8, "c":Ljava/math/BigInteger;
    :goto_105
    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, p1

    if-le v0, v1, :cond_13b

    .line 541
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v26, p1, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v22

    .line 542
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 545
    :cond_13b
    add-int/lit8 v20, v20, 0x1

    .line 553
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v25

    if-nez v25, :cond_1ae

    .line 555
    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/Primes;->hashGen(Lcom/android/org/bouncycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v6

    .line 556
    .local v6, "a":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 558
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 559
    const/16 v16, 0x0

    .line 561
    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    .line 563
    .local v24, "z":Ljava/math/BigInteger;
    sget-object v25, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b7

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    sget-object v26, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b7

    .line 565
    new-instance v25, Lcom/android/org/bouncycastle/math/Primes$STOutput;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, v26

    invoke-direct {v0, v8, v1, v2, v3}, Lcom/android/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILcom/android/org/bouncycastle/math/Primes$STOutput;)V

    return-object v25

    .line 570
    .end local v6    # "a":Ljava/math/BigInteger;
    .end local v24    # "z":Ljava/math/BigInteger;
    :cond_1ae
    add-int/lit8 v25, v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->inc([BI)V

    .line 573
    :cond_1b7
    mul-int/lit8 v25, p1, 0x4

    add-int v25, v25, v18

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_1ca

    .line 575
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string/jumbo v26, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 578
    :cond_1ca
    add-int/lit8 v16, v16, 0x2

    .line 579
    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto/16 :goto_105
.end method

.method private static inc([BI)V
    .registers 4
    .param p0, "seed"    # [B
    .param p1, "c"    # I

    .prologue
    .line 619
    array-length v0, p0

    .line 620
    .local v0, "pos":I
    :goto_1
    if-lez p1, :cond_12

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    .line 622
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    .line 623
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 624
    ushr-int/lit8 p1, p1, 0x8

    goto :goto_1

    .line 626
    :cond_12
    return-void
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .registers 14
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 278
    const-string/jumbo v7, "candidate"

    invoke-static {p0, v7}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 280
    if-nez p1, :cond_13

    .line 282
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "\'random\' cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    :cond_13
    if-ge p2, v10, :cond_1e

    .line 286
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "\'iterations\' must be > 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 289
    :cond_1e
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_26

    .line 291
    return v10

    .line 293
    :cond_26
    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 295
    return v9

    .line 298
    :cond_2d
    move-object v4, p0

    .line 299
    .local v4, "w":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 300
    .local v5, "wSubOne":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 302
    .local v6, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    .line 303
    .local v0, "a":I
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 305
    .local v3, "m":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    if-ge v2, p2, :cond_55

    .line 307
    sget-object v7, Lcom/android/org/bouncycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v6, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 309
    .local v1, "b":Ljava/math/BigInteger;
    invoke-static {p0, v5, v3, v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 311
    return v9

    .line 305
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 315
    .end local v1    # "b":Ljava/math/BigInteger;
    :cond_55
    return v10
.end method

.method public static isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 8
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "base"    # Ljava/math/BigInteger;

    .prologue
    .line 332
    const-string/jumbo v4, "candidate"

    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v4, "base"

    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 335
    sget-object v4, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_21

    .line 337
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 340
    :cond_21
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 342
    const/4 v4, 0x1

    return v4

    .line 345
    :cond_2a
    move-object v2, p0

    .line 346
    .local v2, "w":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 348
    .local v3, "wSubOne":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    .line 349
    .local v0, "a":I
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 351
    .local v1, "m":Ljava/math/BigInteger;
    invoke-static {p0, v3, v1, v0, p1}, Lcom/android/org/bouncycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v4

    return v4
.end method

.method private static isPrime32(J)Z
    .registers 12
    .param p0, "x"    # J

    .prologue
    .line 630
    const/16 v6, 0x20

    ushr-long v6, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_13

    .line 632
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Size limit exceeded"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 639
    :cond_13
    const-wide/16 v6, 0x5

    cmp-long v6, p0, v6

    if-gtz v6, :cond_2f

    .line 641
    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-eqz v6, :cond_25

    const-wide/16 v6, 0x3

    cmp-long v6, p0, v6

    if-nez v6, :cond_27

    :cond_25
    const/4 v6, 0x1

    :goto_26
    return v6

    :cond_27
    const-wide/16 v6, 0x5

    cmp-long v6, p0, v6

    if-eqz v6, :cond_25

    const/4 v6, 0x0

    goto :goto_26

    .line 644
    :cond_2f
    const-wide/16 v6, 0x1

    and-long/2addr v6, p0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_42

    const-wide/16 v6, 0x3

    rem-long v6, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_44

    .line 646
    :cond_42
    const/4 v6, 0x0

    return v6

    .line 644
    :cond_44
    const-wide/16 v6, 0x5

    rem-long v6, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_42

    .line 649
    const/16 v6, 0x8

    new-array v4, v6, [J

    .local v4, "ds":[J
    fill-array-data v4, :array_82

    .line 650
    const-wide/16 v0, 0x0

    .line 651
    .local v0, "base":J
    const/4 v5, 0x1

    .line 656
    .local v5, "pos":I
    :goto_58
    array-length v6, v4

    if-ge v5, v6, :cond_74

    .line 658
    aget-wide v6, v4, v5

    add-long v2, v0, v6

    .line 659
    .local v2, "d":J
    rem-long v6, p0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_71

    .line 661
    const-wide/16 v6, 0x1e

    cmp-long v6, p0, v6

    if-gez v6, :cond_6f

    const/4 v6, 0x1

    :goto_6e
    return v6

    :cond_6f
    const/4 v6, 0x0

    goto :goto_6e

    .line 663
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 666
    .end local v2    # "d":J
    :cond_74
    const-wide/16 v6, 0x1e

    add-long/2addr v0, v6

    .line 668
    mul-long v6, v0, v0

    cmp-long v6, v6, p0

    if-ltz v6, :cond_7f

    .line 670
    const/4 v6, 0x1

    return v6

    .line 651
    :cond_7f
    const/4 v5, 0x0

    goto :goto_58

    .line 649
    nop

    :array_82
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
