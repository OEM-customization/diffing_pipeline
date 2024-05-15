.class final Lcom/android/org/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final greylist-max-o ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

.field private final blacklist hardwareBacked:Z

.field private final greylist-max-o wrapped:Z


# direct methods
.method constructor greylist <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZ)V

    .line 51
    return-void
.end method

.method constructor greylist-max-o <init>(JZ)V
    .registers 5
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(JZZ)V

    .line 55
    return-void
.end method

.method constructor blacklist <init>(JZZ)V
    .registers 6
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z
    .param p4, "hardwareBacked"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-direct {v0, p1, p2}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    .line 61
    iput-boolean p3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    .line 62
    iput-boolean p4, p0, Lcom/android/org/conscrypt/OpenSSLKey;->hardwareBacked:Z

    .line 63
    return-void
.end method

.method static greylist-max-o fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "ecParams"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 164
    .local v0, "result":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_7

    .line 165
    return-object v0

    .line 168
    :cond_7
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_e

    .line 170
    return-object v0

    .line 173
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 5
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 201
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS#8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 202
    return-object v1

    .line 204
    :cond_e
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 205
    .local v0, "encoded":[B
    if-nez v0, :cond_15

    .line 206
    return-object v1

    .line 209
    :cond_15
    :try_start_15
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1e
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_15 .. :try_end_1e} :catch_1f

    return-object v1

    .line 210
    :catch_1f
    move-exception v1

    .line 211
    .local v1, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static greylist fromPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 84
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_c

    .line 85
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 88
    :cond_c
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "keyFormat":Ljava/lang/String;
    if-nez v0, :cond_17

    .line 90
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 91
    :cond_17
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 95
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 96
    .local v1, "encoded":[B
    if-eqz v1, :cond_3e

    .line 101
    :try_start_29
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_36
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_29 .. :try_end_36} :catch_37

    return-object v2

    .line 102
    :catch_37
    move-exception v2

    .line 103
    .local v2, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 97
    .end local v2    # "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    :cond_3e
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Key encoding is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v1    # "encoded":[B
    :cond_46
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown key format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 139
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 140
    .local v0, "result":Lcom/android/org/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_7

    .line 141
    return-object v0

    .line 144
    :cond_7
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_e

    .line 146
    return-object v0

    .line 149
    :cond_e
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o fromPrivateKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 116
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PrivateKey(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    .line 117
    .local v1, "keyCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 118
    const/4 v3, 0x0

    .line 125
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 118
    return-object v3

    .line 121
    :cond_19
    :try_start_19
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 125
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 121
    return-object v3

    .line 125
    .end local v1    # "keyCtx":J
    :catchall_22
    move-exception v1

    goto :goto_2b

    .line 122
    :catch_24
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 126
    throw v1
.end method

.method static greylist-max-o fromPublicKey(Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 243
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_c

    .line 244
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 247
    :cond_c
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 251
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 252
    .local v0, "encoded":[B
    if-eqz v0, :cond_33

    .line 257
    :try_start_1e
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2b} :catch_2c

    return-object v1

    .line 258
    :catch_2c
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_33
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Key encoding is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    .end local v0    # "encoded":[B
    :cond_3b
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 272
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PUBKEY(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    .line 273
    .local v1, "keyCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 274
    const/4 v3, 0x0

    .line 281
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 274
    return-object v3

    .line 277
    :cond_19
    :try_start_19
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 281
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 277
    return-object v3

    .line 281
    .end local v1    # "keyCtx":J
    :catchall_22
    move-exception v1

    goto :goto_2b

    .line 278
    :catch_24
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 282
    throw v1
.end method

.method private static greylist-max-o getOpenSSLKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 3
    .param p0, "key"    # Ljava/security/PrivateKey;

    .line 183
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_c

    .line 184
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 187
    :cond_c
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 188
    invoke-static {p0}, Lcom/android/org/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 191
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .registers 6
    .param p0, "keySpec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 332
    move-object v0, p0

    .line 336
    .local v0, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2d

    .line 339
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    nop

    .line 341
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 346
    :try_start_19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object v2

    .line 347
    :catch_1e
    move-exception v2

    .line 348
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 342
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_25
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Unexpected key type"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    .end local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_2d
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static greylist-max-o getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .registers 6
    .param p0, "keySpec"    # Ljava/security/spec/X509EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 299
    move-object v0, p0

    .line 303
    .local v0, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_1
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_2d

    .line 306
    .local v1, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    nop

    .line 308
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 313
    :try_start_19
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_1d} :catch_1e

    return-object v2

    .line 314
    :catch_1e
    move-exception v2

    .line 315
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 309
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_25
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Unexpected key type"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    .end local v1    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_2d
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static greylist-max-o wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 6
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 222
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 224
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 225
    :cond_11
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 226
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v1

    return-object v1

    .line 228
    :cond_1e
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;
    .registers 4
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 233
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_c

    .line 234
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 235
    :cond_c
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_18

    .line 236
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 238
    :cond_18
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 354
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 355
    return v0

    .line 358
    :cond_4
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 359
    return v2

    .line 362
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/org/conscrypt/OpenSSLKey;

    .line 363
    .local v1, "other":Lcom/android/org/conscrypt/OpenSSLKey;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 364
    return v0

    .line 367
    :cond_1a
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_cmp(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v3

    if-ne v3, v0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0
.end method

.method greylist getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    return-object v0
.end method

.method greylist-max-o getPrivateKey()Ljava/security/PrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 326
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :sswitch_11
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    .line 322
    :sswitch_17
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x6 -> :sswitch_17
        0x198 -> :sswitch_11
    .end sparse-switch
.end method

.method greylist getPublicKey()Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_type(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 293
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :sswitch_11
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLECPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    .line 289
    :sswitch_17
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/android/org/conscrypt/OpenSSLKey;)V

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x6 -> :sswitch_17
        0x198 -> :sswitch_11
    .end sparse-switch
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->ctx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;->hashCode()I

    move-result v0

    return v0
.end method

.method blacklist isHardwareBacked()Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->hardwareBacked:Z

    return v0
.end method

.method greylist-max-o isWrapped()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLKey;->wrapped:Z

    return v0
.end method
