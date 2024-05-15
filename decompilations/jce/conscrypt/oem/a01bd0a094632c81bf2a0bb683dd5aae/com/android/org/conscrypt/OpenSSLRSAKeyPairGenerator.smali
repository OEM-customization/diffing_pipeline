.class public final Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLRSAKeyPairGenerator.java"


# instance fields
.field private modulusBits:I

.field private publicExponent:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 47
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 36
    return-void

    .line 40
    :array_10
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 7

    .prologue
    .line 51
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLKey;

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 52
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 51
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->RSA_generate_key_ex(I[B)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 54
    .local v0, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lcom/android/org/conscrypt/OpenSSLKey;)Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    move-result-object v1

    .line 55
    .local v1, "privKey":Ljava/security/PrivateKey;
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v2, v0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 57
    .local v2, "pubKey":Ljava/security/PublicKey;
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 62
    iput p1, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 63
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 68
    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v2, :cond_d

    .line 69
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Only RSAKeyGenParameterSpec supported"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    move-object v1, p1

    .line 72
    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 74
    .local v1, "spec":Ljava/security/spec/RSAKeyGenParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 75
    .local v0, "publicExponent":Ljava/math/BigInteger;
    if-eqz v0, :cond_1c

    .line 76
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 79
    :cond_1c
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 80
    return-void
.end method
