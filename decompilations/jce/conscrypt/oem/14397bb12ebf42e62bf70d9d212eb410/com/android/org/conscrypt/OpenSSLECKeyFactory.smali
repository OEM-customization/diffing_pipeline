.class public final Lcom/android/org/conscrypt/OpenSSLECKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLECKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
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
    .line 61
    if-nez p1, :cond_b

    .line 62
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_b
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v0, :cond_17

    .line 66
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Ljava/security/spec/ECPrivateKeySpec;)V

    return-object v0

    .line 67
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_17
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_24

    .line 68
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 69
    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x198

    .line 68
    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 71
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_24
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must use ECPrivateKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
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
    .line 46
    if-nez p1, :cond_b

    .line 47
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_b
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v0, :cond_17

    .line 51
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Ljava/security/spec/ECPublicKeySpec;)V

    return-object v0

    .line 52
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_17
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_24

    .line 53
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/16 v0, 0x198

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 55
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_24
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must use ECPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 10
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
    .line 78
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_b

    .line 79
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "key == null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 82
    :cond_b
    if-nez p2, :cond_16

    .line 83
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "keySpec == null"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_16
    const-string/jumbo v4, "EC"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 87
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Key must be an EC key"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_2c
    instance-of v4, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v4, :cond_49

    const-class v4, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_49

    move-object v1, p1

    .line 91
    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 93
    .local v1, "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 94
    .local v3, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 95
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_49
    instance-of v4, p1, Ljava/security/PublicKey;

    if-eqz v4, :cond_8a

    const-class v4, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 96
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 97
    .local v2, "encoded":[B
    const-string/jumbo v4, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    if-nez v2, :cond_71

    .line 98
    :cond_68
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Not a valid X.509 encoding"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_71
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v4}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 102
    .restart local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 103
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 104
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v2    # "encoded":[B
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_8a
    instance-of v4, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v4, :cond_a7

    .line 105
    const-class v4, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    .line 104
    if-eqz v4, :cond_a7

    move-object v0, p1

    .line 106
    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 108
    .local v0, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 109
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 110
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_a7
    instance-of v4, p1, Ljava/security/PrivateKey;

    if-eqz v4, :cond_e8

    const-class v4, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 111
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 112
    .restart local v2    # "encoded":[B
    const-string/jumbo v4, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    if-nez v2, :cond_cf

    .line 113
    :cond_c6
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Not a valid PKCS#8 encoding"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_cf
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v4}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 118
    .restart local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    new-instance v3, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 119
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 120
    .end local v0    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v2    # "encoded":[B
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_e8
    instance-of v4, p1, Ljava/security/PrivateKey;

    if-eqz v4, :cond_134

    .line 121
    const-class v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    .line 120
    if-eqz v4, :cond_134

    .line 122
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 123
    .restart local v2    # "encoded":[B
    const-string/jumbo v4, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_123

    .line 124
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoding type must be PKCS#8; was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 125
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_123
    if-nez v2, :cond_12e

    .line 127
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Key is not encodable"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_12e
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 130
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 131
    .end local v2    # "encoded":[B
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_134
    instance-of v4, p1, Ljava/security/PublicKey;

    if-eqz v4, :cond_180

    const-class v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 132
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 133
    .restart local v2    # "encoded":[B
    const-string/jumbo v4, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16f

    .line 134
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Encoding type must be X.509; was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 135
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_16f
    if-nez v2, :cond_17a

    .line 137
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v5, "Key is not encodable"

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_17a
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 140
    .restart local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 142
    .end local v2    # "encoded":[B
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_180
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported key type and key spec combination; key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 143
    const-string/jumbo v6, ", keySpec="

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 143
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 12
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_b

    .line 150
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string/jumbo v8, "key == null"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 152
    :cond_b
    instance-of v7, p1, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    if-nez v7, :cond_13

    instance-of v7, p1, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v7, :cond_14

    .line 153
    :cond_13
    return-object p1

    .line 154
    :cond_14
    instance-of v7, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v7, :cond_34

    move-object v2, p1

    .line 155
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 157
    .local v2, "ecKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 159
    .local v6, "w":Ljava/security/spec/ECPoint;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 162
    .local v4, "params":Ljava/security/spec/ECParameterSpec;
    :try_start_23
    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v7, v6, v4}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_23 .. :try_end_2b} :catch_2d

    move-result-object v7

    return-object v7

    .line 163
    :catch_2d
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 166
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v2    # "ecKey":Ljava/security/interfaces/ECPublicKey;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v6    # "w":Ljava/security/spec/ECPoint;
    :cond_34
    instance-of v7, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v7, :cond_54

    move-object v1, p1

    .line 167
    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 169
    .local v1, "ecKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v5

    .line 171
    .local v5, "s":Ljava/math/BigInteger;
    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    .line 174
    .restart local v4    # "params":Ljava/security/spec/ECParameterSpec;
    :try_start_43
    new-instance v7, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v7, v5, v4}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_4b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_43 .. :try_end_4b} :catch_4d

    move-result-object v7

    return-object v7

    .line 175
    :catch_4d
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 178
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v1    # "ecKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v4    # "params":Ljava/security/spec/ECParameterSpec;
    .end local v5    # "s":Ljava/math/BigInteger;
    :cond_54
    instance-of v7, p1, Ljava/security/PrivateKey;

    if-eqz v7, :cond_85

    const-string/jumbo v7, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 179
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 180
    .local v3, "encoded":[B
    if-nez v3, :cond_74

    .line 181
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string/jumbo v8, "Key does not support encoding"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 184
    :cond_74
    :try_start_74
    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v7, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_7c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_74 .. :try_end_7c} :catch_7e

    move-result-object v7

    return-object v7

    .line 185
    :catch_7e
    move-exception v0

    .line 186
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 188
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "encoded":[B
    :cond_85
    instance-of v7, p1, Ljava/security/PublicKey;

    if-eqz v7, :cond_b6

    const-string/jumbo v7, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 189
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 190
    .restart local v3    # "encoded":[B
    if-nez v3, :cond_a5

    .line 191
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string/jumbo v8, "Key does not support encoding"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 194
    :cond_a5
    :try_start_a5
    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v7}, Lcom/android/org/conscrypt/OpenSSLECKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_ad
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_a5 .. :try_end_ad} :catch_af

    move-result-object v7

    return-object v7

    .line 195
    :catch_af
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v7, Ljava/security/InvalidKeyException;

    invoke-direct {v7, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 199
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "encoded":[B
    :cond_b6
    new-instance v7, Ljava/security/InvalidKeyException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Key must be EC public or private key; was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
