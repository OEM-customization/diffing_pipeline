.class Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 14
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 12
    .param p1, "dhParams"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    .line 25
    .local v0, "limit":I
    if-eqz v0, :cond_1a

    .line 27
    ushr-int/lit8 v4, v0, 0x2

    .line 30
    .local v4, "minWeight":I
    :cond_8
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 31
    .local v6, "x":Ljava/math/BigInteger;
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v7

    if-lt v7, v4, :cond_8

    .line 33
    return-object v6

    .line 38
    .end local v4    # "minWeight":I
    .end local v6    # "x":Ljava/math/BigInteger;
    :cond_1a
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    .line 39
    .local v3, "min":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v1

    .line 40
    .local v1, "m":I
    if-eqz v1, :cond_2a

    .line 42
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 45
    :cond_2a
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 46
    .local v5, "q":Ljava/math/BigInteger;
    if-nez v5, :cond_34

    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    .line 50
    :cond_34
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 52
    .local v2, "max":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    ushr-int/lit8 v4, v7, 0x2

    .line 55
    .restart local v4    # "minWeight":I
    :cond_40
    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 56
    .restart local v6    # "x":Ljava/math/BigInteger;
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v7

    if-lt v7, v4, :cond_40

    .line 58
    return-object v6
.end method

.method calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "dhParams"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .param p2, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
