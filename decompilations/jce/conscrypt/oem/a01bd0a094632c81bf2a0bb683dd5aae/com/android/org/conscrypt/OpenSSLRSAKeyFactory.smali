.class public final Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLRSAKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 62
    if-nez p1, :cond_b

    .line 63
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_b
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v0, :cond_17

    .line 67
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;

    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    return-object v0

    .line 68
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_17
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v0, :cond_23

    .line 69
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    return-object v0

    .line 70
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_23
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_2f

    .line 71
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 72
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/4 v0, 0x6

    .line 71
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 74
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_b

    .line 48
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_b
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v0, :cond_17

    .line 52
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    return-object v0

    .line 53
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_17
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_23

    .line 54
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 56
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_23
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 18
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_b

    .line 82
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_b
    if-nez p2, :cond_16

    .line 86
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "keySpec == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_16
    const-string/jumbo v2, "RSA"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 90
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Key must be a RSA key"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_2c
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_4e

    const-class v2, Ljava/security/spec/RSAPublicKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object/from16 v14, p1

    .line 94
    check-cast v14, Ljava/security/interfaces/RSAPublicKey;

    .line 96
    .local v14, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 97
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 98
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_4e
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/PublicKey;

    if-eqz v2, :cond_93

    const-class v2, Ljava/security/spec/RSAPublicKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 99
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 100
    .local v10, "encoded":[B
    const-string/jumbo v2, "X.509"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    if-nez v10, :cond_7a

    .line 101
    :cond_71
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Not a valid X.509 encoding"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_7a
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v14

    check-cast v14, Ljava/security/interfaces/RSAPublicKey;

    .line 106
    .restart local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 107
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 108
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v10    # "encoded":[B
    .end local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_93
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_cd

    .line 109
    const-class v2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 108
    if-eqz v2, :cond_cd

    move-object/from16 v12, p1

    .line 110
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 112
    .local v12, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 113
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 114
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 115
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    .line 112
    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 116
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 117
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_cd
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_ef

    .line 118
    const-class v2, Ljava/security/spec/RSAPrivateKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 117
    if-eqz v2, :cond_ef

    move-object/from16 v12, p1

    .line 119
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 121
    .restart local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 122
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 123
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_ef
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_111

    .line 124
    const-class v2, Ljava/security/spec/RSAPrivateKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 123
    if-eqz v2, :cond_111

    move-object/from16 v13, p1

    .line 125
    check-cast v13, Ljava/security/interfaces/RSAPrivateKey;

    .line 127
    .local v13, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 128
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 129
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_111
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/PrivateKey;

    if-eqz v2, :cond_17e

    .line 130
    const-class v2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 129
    if-eqz v2, :cond_17e

    .line 131
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 132
    .restart local v10    # "encoded":[B
    const-string/jumbo v2, "PKCS#8"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    if-nez v10, :cond_13d

    .line 133
    :cond_134
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Not a valid PKCS#8 encoding"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_13d
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v11

    check-cast v11, Ljava/security/interfaces/RSAPrivateKey;

    .line 137
    .local v11, "privKey":Ljava/security/interfaces/RSAPrivateKey;
    instance-of v2, v11, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_175

    move-object v12, v11

    .line 138
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 140
    .restart local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 141
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 142
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 143
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    .line 140
    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 144
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 146
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_175
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Encoded key is not an RSAPrivateCrtKey"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v10    # "encoded":[B
    .end local v11    # "privKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_17e
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/PrivateKey;

    if-eqz v2, :cond_1c3

    const-class v2, Ljava/security/spec/RSAPrivateKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    .line 149
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 150
    .restart local v10    # "encoded":[B
    const-string/jumbo v2, "PKCS#8"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    if-nez v10, :cond_1aa

    .line 151
    :cond_1a1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Not a valid PKCS#8 encoding"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_1aa
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v13

    check-cast v13, Ljava/security/interfaces/RSAPrivateKey;

    .line 156
    .restart local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 157
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 158
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v10    # "encoded":[B
    .end local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_1c3
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/PrivateKey;

    if-eqz v2, :cond_213

    .line 159
    const-class v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 158
    if-eqz v2, :cond_213

    .line 160
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 161
    .restart local v10    # "encoded":[B
    const-string/jumbo v2, "PKCS#8"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_202

    .line 162
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Encoding type must be PKCS#8; was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 163
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_202
    if-nez v10, :cond_20d

    .line 165
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Key is not encodable"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_20d
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 168
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 169
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v10    # "encoded":[B
    :cond_213
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/PublicKey;

    if-eqz v2, :cond_263

    const-class v2, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_263

    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 171
    .restart local v10    # "encoded":[B
    const-string/jumbo v2, "X.509"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_252

    .line 172
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Encoding type must be X.509; was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_252
    if-nez v10, :cond_25d

    .line 175
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v3, "Key is not encodable"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_25d
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 178
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 180
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v10    # "encoded":[B
    :cond_263
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported key type and key spec combination; key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    const-string/jumbo v4, ", keySpec="

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 19
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_b

    .line 188
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v15, "key == null"

    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_b
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    if-nez v1, :cond_17

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v1, :cond_18

    .line 192
    :cond_17
    return-object p1

    .line 193
    :cond_18
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_3f

    move-object/from16 v14, p1

    .line 194
    check-cast v14, Ljava/security/interfaces/RSAPublicKey;

    .line 197
    .local v14, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_22
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v15

    .line 198
    invoke-interface {v14}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v16

    .line 197
    move-object/from16 v0, v16

    invoke-direct {v1, v15, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_36
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_22 .. :try_end_36} :catch_38

    move-result-object v1

    return-object v1

    .line 199
    :catch_38
    move-exception v10

    .line 200
    .local v10, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 202
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v14    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_3f
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_7c

    move-object/from16 v12, p1

    .line 203
    check-cast v12, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 204
    .local v12, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 205
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 206
    .local v3, "publicExponent":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 207
    .local v4, "privateExponent":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 208
    .local v5, "primeP":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 209
    .local v6, "primeQ":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    .line 210
    .local v7, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 211
    .local v8, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    .line 214
    .local v9, "crtCoefficient":Ljava/math/BigInteger;
    :try_start_69
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_73
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_69 .. :try_end_73} :catch_75

    move-result-object v1

    return-object v1

    .line 217
    :catch_75
    move-exception v10

    .line 218
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 220
    .end local v2    # "modulus":Ljava/math/BigInteger;
    .end local v3    # "publicExponent":Ljava/math/BigInteger;
    .end local v4    # "privateExponent":Ljava/math/BigInteger;
    .end local v5    # "primeP":Ljava/math/BigInteger;
    .end local v6    # "primeQ":Ljava/math/BigInteger;
    .end local v7    # "primeExponentP":Ljava/math/BigInteger;
    .end local v8    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v9    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v12    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_7c
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_a1

    move-object/from16 v13, p1

    .line 221
    check-cast v13, Ljava/security/interfaces/RSAPrivateKey;

    .line 222
    .local v13, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 223
    .restart local v2    # "modulus":Ljava/math/BigInteger;
    invoke-interface {v13}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 226
    .restart local v4    # "privateExponent":Ljava/math/BigInteger;
    :try_start_8e
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v1, v2, v4}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_98
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_8e .. :try_end_98} :catch_9a

    move-result-object v1

    return-object v1

    .line 227
    :catch_9a
    move-exception v10

    .line 228
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 230
    .end local v2    # "modulus":Ljava/math/BigInteger;
    .end local v4    # "privateExponent":Ljava/math/BigInteger;
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v13    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_a1
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/PrivateKey;

    if-eqz v1, :cond_d6

    const-string/jumbo v1, "PKCS#8"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 231
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    .line 232
    .local v11, "encoded":[B
    if-nez v11, :cond_c3

    .line 233
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v15, "Key does not support encoding"

    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_c3
    :try_start_c3
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v11}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_cd
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c3 .. :try_end_cd} :catch_cf

    move-result-object v1

    return-object v1

    .line 237
    :catch_cf
    move-exception v10

    .line 238
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 240
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "encoded":[B
    :cond_d6
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/PublicKey;

    if-eqz v1, :cond_10b

    const-string/jumbo v1, "X.509"

    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 241
    invoke-interface/range {p1 .. p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    .line 242
    .restart local v11    # "encoded":[B
    if-nez v11, :cond_f8

    .line 243
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v15, "Key does not support encoding"

    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_f8
    :try_start_f8
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v11}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_102
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_f8 .. :try_end_102} :catch_104

    move-result-object v1

    return-object v1

    .line 247
    :catch_104
    move-exception v10

    .line 248
    .restart local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 251
    .end local v10    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "encoded":[B
    :cond_10b
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Key must be an RSA public or private key; was "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 252
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    .line 251
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
