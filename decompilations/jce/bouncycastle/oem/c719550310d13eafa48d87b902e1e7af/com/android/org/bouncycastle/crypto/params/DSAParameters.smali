.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
.super Ljava/lang/Object;
.source "DSAParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V
    .registers 5
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 33
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 34
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 60
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    if-nez v2, :cond_6

    .line 62
    return v1

    :cond_6
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 67
    .local v0, "pm":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2b
    return v1
.end method

.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
