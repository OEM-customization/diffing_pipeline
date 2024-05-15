.class public Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source "ECDomainParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field private blacklist G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field private blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field private blacklist h:Ljava/math/BigInteger;

.field private blacklist hInv:Ljava/math/BigInteger;

.field private blacklist n:Ljava/math/BigInteger;

.field private blacklist seed:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .line 30
    sget-object v4, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 11
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .line 39
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 8
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "G"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    .line 49
    if-eqz p1, :cond_25

    .line 53
    if-eqz p3, :cond_1d

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 60
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->validate(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 61
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    .line 62
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    .line 63
    invoke-static {p5}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    .line 64
    return-void

    .line 55
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "n"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "curve"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist validate(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 132
    if-eqz p1, :cond_27

    .line 137
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 144
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 149
    return-object p1

    .line 146
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point not on curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point at infinity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point has null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 105
    return v0

    .line 108
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 110
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 112
    .local v1, "other":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v4, v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iget-object v4, v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    return v0

    .line 115
    .end local v1    # "other":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_37
    return v2
.end method

.method public blacklist getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public blacklist getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public blacklist getH()Ljava/math/BigInteger;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public declared-synchronized blacklist getHInv()Ljava/math/BigInteger;
    .registers 3

    monitor-enter p0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    if-nez v0, :cond_f

    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;

    .line 92
    .end local p0    # "this":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_f
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->hInv:Ljava/math/BigInteger;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 87
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getN()Ljava/math/BigInteger;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->seed:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    .line 121
    .local v0, "hc":I
    mul-int/lit8 v0, v0, 0x25

    .line 122
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->G:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x25

    .line 124
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->n:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x25

    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->h:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 127
    return v0
.end method
