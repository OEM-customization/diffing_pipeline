.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field currentSpec:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 6

    .prologue
    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 53
    .local v0, "dhP":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :try_start_17
    const-string/jumbo v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getEncoded(Ljava/lang/String;)[B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1f

    move-result-object v2

    return-object v2

    .line 56
    :catch_1f
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error encoding DHParameters"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 69
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p1, :cond_b

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "argument to getParameterSpec must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 88
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_d

    .line 90
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_d
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 94
    return-void
.end method

.method protected engineInit([B)V
    .registers 9
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v0

    .line 104
    .local v0, "dhP":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 106
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 121
    :goto_21
    return-void

    .line 110
    :cond_22
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_31} :catch_32
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_31} :catch_3c

    goto :goto_21

    .line 114
    .end local v0    # "dhP":Lcom/android/org/bouncycastle/asn1/pkcs/DHParameter;
    :catch_32
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Not a valid DH Parameter encoding."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_3c
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Not a valid DH Parameter encoding."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 6
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->engineInit([B)V

    .line 136
    return-void

    .line 134
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    const-string/jumbo v0, "Diffie-Hellman Parameters"

    return-object v0
.end method

.method protected isASN1FormatString(Ljava/lang/String;)Z
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 19
    if-eqz p1, :cond_a

    const-string/jumbo v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_b

    .line 78
    :cond_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/AlgorithmParametersSpi;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0

    .line 81
    :cond_b
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "unknown parameter spec passed to DH parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
