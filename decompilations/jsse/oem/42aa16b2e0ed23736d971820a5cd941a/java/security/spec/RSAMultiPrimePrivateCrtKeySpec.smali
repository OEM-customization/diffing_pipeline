.class public Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;
.super Ljava/security/spec/RSAPrivateKeySpec;
.source "RSAMultiPrimePrivateCrtKeySpec.java"


# instance fields
.field private final greylist-max-o crtCoefficient:Ljava/math/BigInteger;

.field private final greylist-max-o otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

.field private final greylist-max-o primeExponentP:Ljava/math/BigInteger;

.field private final greylist-max-o primeExponentQ:Ljava/math/BigInteger;

.field private final greylist-max-o primeP:Ljava/math/BigInteger;

.field private final greylist-max-o primeQ:Ljava/math/BigInteger;

.field private final greylist-max-o publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/security/spec/RSAOtherPrimeInfo;)V
    .registers 12
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "primeP"    # Ljava/math/BigInteger;
    .param p5, "primeQ"    # Ljava/math/BigInteger;
    .param p6, "primeExponentP"    # Ljava/math/BigInteger;
    .param p7, "primeExponentQ"    # Ljava/math/BigInteger;
    .param p8, "crtCoefficient"    # Ljava/math/BigInteger;
    .param p9, "otherPrimeInfo"    # [Ljava/security/spec/RSAOtherPrimeInfo;

    .line 98
    invoke-direct {p0, p1, p3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 99
    if-eqz p1, :cond_71

    .line 103
    if-eqz p2, :cond_69

    .line 107
    if-eqz p3, :cond_61

    .line 111
    if-eqz p4, :cond_59

    .line 115
    if-eqz p5, :cond_51

    .line 119
    if-eqz p6, :cond_49

    .line 123
    if-eqz p7, :cond_41

    .line 127
    if-eqz p8, :cond_39

    .line 131
    iput-object p2, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 132
    iput-object p4, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    .line 133
    iput-object p5, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    .line 134
    iput-object p6, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    .line 135
    iput-object p7, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    .line 136
    iput-object p8, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    .line 137
    if-nez p9, :cond_25

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    goto :goto_30

    .line 139
    :cond_25
    array-length v0, p9

    if-eqz v0, :cond_31

    .line 143
    invoke-virtual {p9}, [Ljava/security/spec/RSAOtherPrimeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    iput-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    .line 145
    :goto_30
    return-void

    .line 140
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the otherPrimeInfo parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the crtCoefficient parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the primeExponentQ parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the primeExponentP parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the primeQ parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the primeP parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the privateExponent parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the publicExponent parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the modulus parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 198
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getOtherPrimeInfo()[Ljava/security/spec/RSAOtherPrimeInfo;
    .registers 2

    .line 209
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->otherPrimeInfo:[Ljava/security/spec/RSAOtherPrimeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_6
    invoke-virtual {v0}, [Ljava/security/spec/RSAOtherPrimeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/spec/RSAOtherPrimeInfo;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPrimeExponentP()Ljava/math/BigInteger;
    .registers 2

    .line 180
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPrimeExponentQ()Ljava/math/BigInteger;
    .registers 2

    .line 189
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPrimeP()Ljava/math/BigInteger;
    .registers 2

    .line 162
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPrimeQ()Ljava/math/BigInteger;
    .registers 2

    .line 171
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 153
    iget-object v0, p0, Ljava/security/spec/RSAMultiPrimePrivateCrtKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
