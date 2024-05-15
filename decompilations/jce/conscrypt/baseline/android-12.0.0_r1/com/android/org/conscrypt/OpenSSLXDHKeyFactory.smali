.class public final Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLXDHKeyFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method

.method private blacklist constructJavaPrivateKeySpec(Ljava/lang/Class;Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;)Ljava/security/spec/KeySpec;
    .registers 10
    .param p2, "privateKey"    # Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;",
            ")",
            "Ljava/security/spec/KeySpec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 181
    .local p1, "privateKeySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Could not find java.security.spec.XECPrivateKeySpec"

    if-eqz p1, :cond_4a

    .line 186
    const/4 v1, 0x2

    :try_start_5
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [B

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 188
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;

    const-string v6, "1.3.101.110"

    invoke-direct {v3, v6}, Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v4

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;->getU()[B

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/KeySpec;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_2c} :catch_43
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_2c} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_2c} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_2c} :catch_2e

    move-object v0, v1

    .line 189
    .local v0, "result":Ljava/security/spec/KeySpec;
    return-object v0

    .line 196
    .end local v0    # "result":Ljava/security/spec/KeySpec;
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2e
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 194
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_35
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 192
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3c
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_43
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 182
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_4a
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist constructJavaPublicKeySpec(Ljava/lang/Class;Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;)Ljava/security/spec/KeySpec;
    .registers 10
    .param p2, "publicKey"    # Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;",
            ")",
            "Ljava/security/spec/KeySpec;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 203
    .local p1, "publicKeySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Could not find java.security.spec.XECPublicKeySpec"

    const/4 v1, 0x2

    :try_start_3
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/math/BigInteger;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 205
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;

    const-string v6, "1.3.101.110"

    invoke-direct {v3, v6}, Lcom/android/org/conscrypt/OpenSSLXECParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v4

    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p2}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;->getU()[B

    move-result-object v4

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v3, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/KeySpec;
    :try_end_2f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_2f} :catch_46
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_2f} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_2f} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_2f} :catch_31

    move-object v0, v1

    .line 206
    .local v0, "result":Ljava/security/spec/KeySpec;
    return-object v0

    .line 213
    .end local v0    # "result":Ljava/security/spec/KeySpec;
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_31
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 211
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 209
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3f
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 207
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_46
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist getJavaPrivateKeySpec()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 166
    :try_start_0
    const-string v0, "java.security.spec.XECPrivateKeySpec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 167
    :catch_7
    move-exception v0

    .line 168
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getJavaPublicKeySpec()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 174
    :try_start_0
    const-string v0, "java.security.spec.XECPublicKeySpec"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected whitelist test-api engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 58
    if-eqz p1, :cond_2e

    .line 62
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_f

    .line 63
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    return-object v0

    .line 65
    :cond_f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use ECPrivateKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_2e
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 45
    if-eqz p1, :cond_2e

    .line 49
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_f

    .line 50
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    return-object v0

    .line 52
    :cond_f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use ECPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2e
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 9
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 72
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_147

    .line 76
    if-eqz p2, :cond_13f

    .line 80
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XDH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 84
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->getJavaPublicKeySpec()Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "publicKeySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->getJavaPrivateKeySpec()Ljava/lang/Class;

    move-result-object v1

    .line 87
    .local v1, "privateKeySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "X.509"

    if-eqz v0, :cond_4e

    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_4e

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 88
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 89
    .local v3, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    if-eqz v3, :cond_46

    .line 92
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    .line 94
    .local v2, "publicKey":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    invoke-direct {p0, v0, v2}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->constructJavaPublicKeySpec(Ljava/lang/Class;Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;)Ljava/security/spec/KeySpec;

    move-result-object v4

    .line 95
    .local v4, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    .line 90
    .end local v2    # "publicKey":Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_46
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Not a valid X.509 encoding"

    invoke-direct {v2, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v3    # "encoded":[B
    :cond_4e
    const-string v3, "PKCS#8"

    if-eqz v1, :cond_84

    instance-of v4, p1, Ljava/security/PrivateKey;

    if-eqz v4, :cond_84

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 97
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 98
    .local v2, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    if-eqz v2, :cond_7c

    .line 101
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    .line 103
    .local v3, "privateKey":Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    invoke-direct {p0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->constructJavaPrivateKeySpec(Ljava/lang/Class;Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;)Ljava/security/spec/KeySpec;

    move-result-object v4

    .line 104
    .restart local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v4

    .line 99
    .end local v3    # "privateKey":Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;
    .end local v4    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_7c
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Not a valid PKCS#8 encoding"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    .end local v2    # "encoded":[B
    :cond_84
    instance-of v4, p1, Ljava/security/PrivateKey;

    const-string v5, "Key is not encodable"

    if-eqz v4, :cond_c9

    const-class v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 106
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    .line 107
    .restart local v2    # "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 110
    if-eqz v2, :cond_a8

    .line 113
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 114
    .local v3, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v3

    .line 111
    .end local v3    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_a8
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 108
    :cond_ae
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding type must be PKCS#8; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v2    # "encoded":[B
    :cond_c9
    instance-of v3, p1, Ljava/security/PublicKey;

    if-eqz v3, :cond_10c

    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 116
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    .line 117
    .local v3, "encoded":[B
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 120
    if-eqz v3, :cond_eb

    .line 123
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 124
    .local v2, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v2

    .line 121
    .end local v2    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_eb
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_f1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encoding type must be X.509; was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v3    # "encoded":[B
    :cond_10c
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key type and key spec combination; key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", keySpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "publicKeySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "privateKeySpec":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_137
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key must be an XDH key"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_13f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_147
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 133
    if-eqz p1, :cond_88

    .line 136
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PublicKey;

    if-nez v0, :cond_87

    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX25519PrivateKey;

    if-eqz v0, :cond_c

    goto/16 :goto_87

    .line 138
    :cond_c
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v1, "Key does not support encoding"

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PKCS#8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 139
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 140
    .local v0, "encoded":[B
    if-eqz v0, :cond_35

    .line 144
    :try_start_24
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_2d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_24 .. :try_end_2d} :catch_2e

    return-object v1

    .line 145
    :catch_2e
    move-exception v1

    .line 146
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 141
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_35
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    .end local v0    # "encoded":[B
    :cond_3b
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_68

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X.509"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 149
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 150
    .restart local v0    # "encoded":[B
    if-eqz v0, :cond_62

    .line 154
    :try_start_51
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLXDHKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_5a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_51 .. :try_end_5a} :catch_5b

    return-object v1

    .line 155
    :catch_5b
    move-exception v1

    .line 156
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 151
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :cond_62
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v0    # "encoded":[B
    :cond_68
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key must be EC public or private key; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_87
    :goto_87
    return-object p1

    .line 134
    :cond_88
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
