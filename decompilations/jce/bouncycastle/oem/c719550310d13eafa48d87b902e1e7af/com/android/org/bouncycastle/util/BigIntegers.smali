.class public final Lcom/android/org/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .registers 8
    .param p0, "length"    # I
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 46
    .local v0, "bytes":[B
    array-length v4, v0

    if-ne v4, p0, :cond_9

    .line 48
    return-object v0

    .line 51
    :cond_9
    aget-byte v4, v0, v5

    if-nez v4, :cond_1c

    const/4 v2, 0x1

    .line 52
    .local v2, "start":I
    :goto_e
    array-length v4, v0

    sub-int v1, v4, v2

    .line 54
    .local v1, "count":I
    if-le v1, p0, :cond_1e

    .line 56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "standard length exceeded for value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    .end local v1    # "count":I
    .end local v2    # "start":I
    :cond_1c
    const/4 v2, 0x0

    .restart local v2    # "start":I
    goto :goto_e

    .line 59
    .restart local v1    # "count":I
    :cond_1e
    new-array v3, p0, [B

    .line 60
    .local v3, "tmp":[B
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    return-object v3
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 25
    .local v0, "bytes":[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_14

    .line 27
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 29
    .local v1, "tmp":[B
    array-length v2, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 31
    return-object v1

    .line 34
    .end local v1    # "tmp":[B
    :cond_14
    return-object v0
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 8
    .param p0, "min"    # Ljava/math/BigInteger;
    .param p1, "max"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 78
    .local v0, "cmp":I
    if-ltz v0, :cond_12

    .line 80
    if-lez v0, :cond_11

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "\'min\' may not be greater than \'max\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_11
    return-object p0

    .line 88
    :cond_12
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2d

    .line 90
    sget-object v3, Lcom/android/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3

    .line 93
    :cond_2d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_4b

    .line 95
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 96
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_48

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_48

    .line 98
    return-object v2

    .line 93
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 103
    .end local v2    # "x":Ljava/math/BigInteger;
    :cond_4b
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public static fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .registers 3
    .param p0, "buf"    # [B

    .prologue
    .line 108
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    move-object v0, p0

    .line 114
    .local v0, "mag":[B
    if-nez p1, :cond_7

    array-length v1, p0

    if-eq p2, v1, :cond_c

    .line 116
    :cond_7
    new-array v0, p2, [B

    .line 117
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method
