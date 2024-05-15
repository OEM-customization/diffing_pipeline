.class final Lcom/android/org/conscrypt/NativeSsl;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    }
.end annotation


# instance fields
.field private final blacklist aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

.field private final blacklist handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

.field private blacklist localCertificates:[Ljava/security/cert/X509Certificate;

.field private final blacklist lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private final blacklist pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

.field private volatile blacklist ssl:J


# direct methods
.method private constructor blacklist <init>(JLcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V
    .registers 8
    .param p1, "ssl"    # J
    .param p3, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p4, "handshakeCallbacks"    # Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p5, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p6, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 69
    iput-wide p1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 70
    iput-object p3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 71
    iput-object p4, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 72
    iput-object p5, p0, Lcom/android/org/conscrypt/NativeSsl;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 73
    iput-object p6, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .line 74
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/org/conscrypt/NativeSsl;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/org/conscrypt/NativeSsl;

    .line 57
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    return-wide v0
.end method

.method static synthetic blacklist access$200(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/NativeSsl;

    .line 57
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    return-object v0
.end method

.method private blacklist enablePSKKeyManagerIfRequested()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 456
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-eqz v0, :cond_41

    .line 457
    const/4 v1, 0x0

    .line 458
    .local v1, "pskEnabled":Z
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v2, v2, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 459
    .local v5, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v5, :cond_1f

    const-string v6, "PSK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 460
    const/4 v1, 0x1

    .line 461
    goto :goto_22

    .line 458
    .end local v5    # "enabledCipherSuite":Ljava/lang/String;
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 464
    :cond_22
    :goto_22
    if-eqz v1, :cond_41

    .line 465
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    .line 466
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V

    goto :goto_41

    .line 468
    :cond_31
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V

    .line 469
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "identityHint":Ljava/lang/String;
    iget-wide v3, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v3, v4, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLcom/android/org/conscrypt/NativeSsl;Ljava/lang/String;)V

    .line 474
    .end local v1    # "pskEnabled":Z
    .end local v2    # "identityHint":Ljava/lang/String;
    :cond_41
    :goto_41
    return-void
.end method

.method private blacklist getCipherKeyTypes()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 390
    .local v0, "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ciphers(JLcom/android/org/conscrypt/NativeSsl;)[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1d

    aget-wide v4, v1, v3

    .line 391
    .local v4, "sslCipherNativePointer":J
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/SSLUtils;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "keyType":Ljava/lang/String;
    if-eqz v6, :cond_1a

    .line 393
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v4    # "sslCipherNativePointer":J
    .end local v6    # "keyType":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 396
    :cond_1d
    return-object v0
.end method

.method private blacklist isClient()Z
    .registers 2

    .line 636
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method static blacklist newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/NativeSsl;
    .registers 15
    .param p0, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "handshakeCallbacks"    # Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p2, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p3, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    .line 80
    .local v0, "ctx":Lcom/android/org/conscrypt/AbstractSessionContext;
    iget-wide v1, v0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v1, v2, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(JLcom/android/org/conscrypt/AbstractSessionContext;)J

    move-result-wide v1

    .line 81
    .local v1, "ssl":J
    new-instance v10, Lcom/android/org/conscrypt/NativeSsl;

    move-object v3, v10

    move-wide v4, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/org/conscrypt/NativeSsl;-><init>(JLcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V

    return-object v10
.end method

.method private blacklist setCertificate(Ljava/lang/String;)V
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 234
    if-nez p1, :cond_3

    .line 235
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 238
    .local v0, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_c

    .line 239
    return-void

    .line 241
    :cond_c
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 242
    .local v1, "privateKey":Ljava/security/PrivateKey;
    if-nez v1, :cond_13

    .line 243
    return-void

    .line 245
    :cond_13
    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 246
    if-nez v2, :cond_1c

    .line 247
    return-void

    .line 249
    :cond_1c
    array-length v3, v2

    .line 250
    .local v3, "numLocalCerts":I
    if-lez v3, :cond_27

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    .line 253
    .local v2, "publicKey":Ljava/security/PublicKey;
    :goto_28
    new-array v4, v3, [[B

    .line 254
    .local v4, "encodedLocalCerts":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    if-ge v5, v3, :cond_3a

    .line 255
    iget-object v6, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    aput-object v6, v4, v5

    .line 254
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 261
    .end local v5    # "i":I
    :cond_3a
    :try_start_3a
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v5
    :try_end_3e
    .catch Ljava/security/InvalidKeyException; {:try_start_3a .. :try_end_3e} :catch_49

    .line 264
    .local v5, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    nop

    .line 267
    iget-wide v6, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v8

    invoke-static {v6, v7, p0, v4, v8}, Lcom/android/org/conscrypt/NativeCrypto;->setLocalCertsAndPrivateKey(JLcom/android/org/conscrypt/NativeSsl;[[BLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    .line 268
    return-void

    .line 262
    .end local v5    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_49
    move-exception v5

    .line 263
    .local v5, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Ljavax/net/ssl/SSLException;

    invoke-direct {v6, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private blacklist setCertificateValidation()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-nez v0, :cond_52

    .line 498
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 499
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v2, 0x3

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V

    .line 501
    const/4 v0, 0x1

    .local v0, "certRequested":Z
    goto :goto_2d

    .line 503
    .end local v0    # "certRequested":Z
    :cond_16
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 504
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V

    .line 505
    const/4 v0, 0x1

    .restart local v0    # "certRequested":Z
    goto :goto_2d

    .line 508
    .end local v0    # "certRequested":Z
    :cond_26
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JLcom/android/org/conscrypt/NativeSsl;I)V

    .line 509
    const/4 v0, 0x0

    .line 512
    .restart local v0    # "certRequested":Z
    :goto_2d
    if-eqz v0, :cond_52

    .line 513
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 514
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 515
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_52

    array-length v3, v2

    if-eqz v3, :cond_52

    .line 518
    :try_start_3e
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B

    move-result-object v3
    :try_end_42
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3e .. :try_end_42} :catch_49

    .line 521
    .local v3, "issuersBytes":[[B
    nop

    .line 522
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(JLcom/android/org/conscrypt/NativeSsl;[[B)V

    goto :goto_52

    .line 519
    .end local v3    # "issuersBytes":[[B
    :catch_49
    move-exception v3

    .line 520
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "Problem encoding principals"

    invoke-direct {v4, v5, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 526
    .end local v0    # "certRequested":Z
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_52
    :goto_52
    return-void
.end method

.method private blacklist setTlsChannelId(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-nez v0, :cond_7

    .line 478
    return-void

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 483
    if-eqz p1, :cond_1b

    .line 486
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    goto :goto_28

    .line 484
    :cond_1b
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_23
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 491
    :goto_28
    return-void
.end method

.method private blacklist verifyWithSniMatchers(Ljava/lang/String;)V
    .registers 5
    .param p1, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .line 379
    invoke-static {p1}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 380
    return-void

    .line 383
    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-static {v0, p1}, Lcom/android/org/conscrypt/Platform;->serverNamePermitted(Lcom/android/org/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 386
    return-void

    .line 384
    :cond_10
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNI match failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist chooseClientCertificate([B[I[[B)V
    .registers 10
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 214
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/SSLUtils;->getSupportedClientKeyTypes([B[I)Ljava/util/Set;

    move-result-object v0

    .line 215
    .local v0, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 218
    .local v1, "keyTypes":[Ljava/lang/String;
    if-nez p3, :cond_14

    .line 219
    const/4 v2, 0x0

    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    goto :goto_27

    .line 221
    .end local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_14
    array-length v2, p3

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    .line 222
    .restart local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    array-length v4, p3

    if-ge v3, v4, :cond_27

    .line 223
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, p3, v3

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v4, v2, v3

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 226
    .end local v3    # "i":I
    :cond_27
    :goto_27
    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 227
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_36

    .line 228
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v4, v3, v2, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    .line 229
    :cond_36
    const/4 v4, 0x0

    :goto_37
    nop

    .line 230
    .local v4, "alias":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/org/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method blacklist clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 12
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identityBytesOut"    # [B
    .param p3, "key"    # [B

    .line 150
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 151
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 152
    return v1

    .line 155
    :cond_a
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "identity":Ljava/lang/String;
    if-nez v2, :cond_17

    .line 159
    const-string v2, ""

    .line 160
    sget-object v3, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .local v3, "identityBytes":[B
    goto :goto_27

    .line 161
    .end local v3    # "identityBytes":[B
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 162
    sget-object v3, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .restart local v3    # "identityBytes":[B
    goto :goto_27

    .line 165
    .end local v3    # "identityBytes":[B
    :cond_20
    :try_start_20
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_26} :catch_50

    .line 168
    .restart local v3    # "identityBytes":[B
    nop

    .line 170
    :goto_27
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    if-le v4, v5, :cond_2e

    .line 172
    return v1

    .line 174
    :cond_2e
    array-length v4, v3

    if-lez v4, :cond_35

    .line 175
    array-length v4, v3

    invoke-static {v3, v1, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_35
    array-length v4, v3

    aput-byte v1, p2, v4

    .line 179
    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v4, v0, p1, v2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 180
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 181
    .local v5, "secretKeyBytes":[B
    if-nez v5, :cond_45

    .line 182
    return v1

    .line 183
    :cond_45
    array-length v6, v5

    array-length v7, p3

    if-le v6, v7, :cond_4a

    .line 185
    return v1

    .line 187
    :cond_4a
    array-length v6, v5

    invoke-static {v5, v1, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v5

    return v1

    .line 166
    .end local v3    # "identityBytes":[B
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "secretKeyBytes":[B
    :catch_50
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "UTF-8 encoding not supported"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method blacklist close()V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 613
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 614
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 615
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 616
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(JLcom/android/org/conscrypt/NativeSsl;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_23

    .line 619
    .end local v0    # "toFree":J
    :cond_18
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 620
    nop

    .line 621
    return-void

    .line 619
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 620
    throw v0
.end method

.method blacklist configureServerCertificate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/NativeSsl;->verifyWithSniMatchers(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 364
    return-void

    .line 366
    :cond_e
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 367
    .local v0, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v0, :cond_3c

    .line 368
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->getCipherKeyTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    .local v2, "keyType":Ljava/lang/String;
    :try_start_2a
    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v3, v0, v2}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2a .. :try_end_33} :catch_35

    .line 373
    nop

    .line 374
    .end local v2    # "keyType":Ljava/lang/String;
    goto :goto_1e

    .line 371
    .restart local v2    # "keyType":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 372
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 376
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v2    # "keyType":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method blacklist doHandshake()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 416
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_do_handshake(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b

    .line 418
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 416
    return v0

    .line 418
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 419
    throw v0
.end method

.method blacklist doHandshake(Ljava/io/FileDescriptor;I)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 404
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 407
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_34

    .line 409
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    nop

    .line 411
    return-void

    .line 405
    :cond_2c
    :try_start_2c
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "timeoutMillis":I
    throw v0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    .line 409
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "timeoutMillis":I
    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    throw v0
.end method

.method blacklist exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .registers 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 134
    if-eqz p1, :cond_17

    .line 137
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 138
    .local v0, "labelBytes":[B
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    move-object v3, p0

    move-object v4, v0

    move-object v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_export_keying_material(JLcom/android/org/conscrypt/NativeSsl;[B[BI)[B

    move-result-object v1

    return-object v1

    .line 135
    .end local v0    # "labelBytes":[B
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Label is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist core-platform-api test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 644
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 645
    nop

    .line 646
    return-void

    .line 644
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 645
    throw v0
.end method

.method blacklist forceRead()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 588
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_force_read(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 590
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 591
    nop

    .line 592
    return-void

    .line 590
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 591
    throw v0
.end method

.method blacklist getApplicationProtocol()[B
    .registers 3

    .line 632
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->getApplicationProtocol(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getCipherSuite()Ljava/lang/String;
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_current_cipher(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getError(I)I
    .registers 4
    .param p1, "result"    # I

    .line 628
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error(JLcom/android/org/conscrypt/NativeSsl;I)I

    move-result v0

    return v0
.end method

.method blacklist getLocalCertificates()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method blacklist getMaxSealOverhead()I
    .registers 3

    .line 607
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_max_seal_overhead(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0

    return v0
.end method

.method blacklist getPeerCertificateOcspData()[B
    .registers 3

    .line 126
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 117
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_peer_certificates(JLcom/android/org/conscrypt/NativeSsl;)[[B

    move-result-object v0

    .line 118
    .local v0, "encoded":[[B
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-static {v0}, Lcom/android/org/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    :goto_e
    return-object v1
.end method

.method blacklist getPeerTlsSctData()[B
    .registers 3

    .line 142
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getPendingReadableBytes()I
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 597
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 598
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_readable_bytes(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2a

    .line 602
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 598
    return v0

    .line 600
    :cond_1f
    const/4 v0, 0x0

    .line 602
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 600
    return v0

    .line 602
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 603
    throw v0
.end method

.method blacklist getRequestedServerName()Ljava/lang/String;
    .registers 3

    .line 275
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_servername(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist getSessionId()[B
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_session_id(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getTime()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_time(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getTimeout()J
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_timeout(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getTlsChannelId()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 279
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getTlsUnique()[B
    .registers 3

    .line 130
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_unique(JLcom/android/org/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getVersion()Ljava/lang/String;
    .registers 3

    .line 271
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_version(JLcom/android/org/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 11
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    .line 284
    .local v0, "enableSessionCreation":Z
    if-nez v0, :cond_e

    .line 285
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v3, 0x0

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JLcom/android/org/conscrypt/NativeSsl;Z)V

    .line 291
    :cond_e
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_accept_renegotiations(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 293
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 294
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 297
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 298
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 299
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(JLcom/android/org/conscrypt/NativeSsl;)V

    goto :goto_43

    .line 302
    :cond_31
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 305
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getOCSPResponse()[B

    move-result-object v1

    if-eqz v1, :cond_43

    .line 306
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 310
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_5b

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    if-nez v1, :cond_53

    goto :goto_5b

    .line 311
    :cond_53
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "No enabled protocols; SSLv3 is no longer supported and was filtered from the list"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :cond_5b
    :goto_5b
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 316
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(JLcom/android/org/conscrypt/NativeSsl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    array-length v1, v1

    if-lez v1, :cond_85

    .line 320
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v3

    iget-object v4, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->setApplicationProtocols(JLcom/android/org/conscrypt/NativeSsl;Z[B)V

    .line 322
    :cond_85
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;

    if-eqz v1, :cond_97

    .line 323
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->setHasApplicationProtocolSelector(JLcom/android/org/conscrypt/NativeSsl;Z)V

    .line 328
    :cond_97
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-nez v1, :cond_c3

    .line 329
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-wide/32 v3, 0x400000

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 331
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-eqz v1, :cond_b4

    .line 332
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_signed_cert_timestamp_list(JLcom/android/org/conscrypt/NativeSsl;[B)V

    .line 335
    :cond_b4
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-eqz v1, :cond_c3

    .line 336
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v3, v3, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_ocsp_response(JLcom/android/org/conscrypt/NativeSsl;[B)V

    .line 340
    :cond_c3
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->enablePSKKeyManagerIfRequested()V

    .line 342
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v1, v1, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    const-wide/16 v2, 0x4000

    if-eqz v1, :cond_d4

    .line 343
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JLcom/android/org/conscrypt/NativeSsl;J)J

    goto :goto_e1

    .line 345
    :cond_d4
    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-wide v6, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    .line 346
    invoke-static {v6, v7, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_options(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v6

    or-long v1, v6, v2

    .line 345
    invoke-static {v4, v5, p0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 349
    :goto_e1
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-static {p1}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 350
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v1, v2, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLcom/android/org/conscrypt/NativeSsl;Ljava/lang/String;)V

    .line 355
    :cond_f4
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v3, 0x100

    invoke-static {v1, v2, p0, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 357
    invoke-direct {p0}, Lcom/android/org/conscrypt/NativeSsl;->setCertificateValidation()V

    .line 358
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/NativeSsl;->setTlsChannelId(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 359
    return-void
.end method

.method blacklist interrupt()V
    .registers 3

    .line 529
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(JLcom/android/org/conscrypt/NativeSsl;)V

    .line 530
    return-void
.end method

.method blacklist isClosed()Z
    .registers 5

    .line 624
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist newBio()Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    .registers 3

    .line 86
    :try_start_0
    new-instance v0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;-><init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeSsl$1;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 87
    :catch_7
    move-exception v0

    .line 88
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist offerToResumeSession(J)V
    .registers 5
    .param p1, "sslSessionNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JLcom/android/org/conscrypt/NativeSsl;J)V

    .line 94
    return-void
.end method

.method blacklist read(Ljava/io/FileDescriptor;[BIII)I
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 430
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 431
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_37

    .line 433
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 430
    return v0

    .line 428
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    throw v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 433
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buf":[B
    .restart local p3    # "offset":I
    .restart local p4    # "len":I
    .restart local p5    # "timeoutMillis":I
    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    throw v0
.end method

.method blacklist readDirectByteBuffer(JI)I
    .registers 12
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 568
    :try_start_9
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v7, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JLcom/android/org/conscrypt/NativeSsl;JILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 571
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 568
    return v0

    .line 571
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 572
    throw v0
.end method

.method blacklist serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 10
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .line 196
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 197
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 198
    return v1

    .line 200
    :cond_a
    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v2, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 201
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 202
    .local v3, "secretKeyBytes":[B
    if-nez v3, :cond_17

    .line 203
    return v1

    .line 204
    :cond_17
    array-length v4, v3

    array-length v5, p3

    if-le v4, v5, :cond_1c

    .line 205
    return v1

    .line 207
    :cond_1c
    array-length v4, v3

    invoke-static {v3, v1, p3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    array-length v1, v3

    return v1
.end method

.method blacklist setTimeout(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 109
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_timeout(JLcom/android/org/conscrypt/NativeSsl;J)J

    .line 110
    return-void
.end method

.method blacklist shutdown()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 540
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_shutdown(JLcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 542
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 543
    nop

    .line 544
    return-void

    .line 542
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 543
    throw v0
.end method

.method blacklist shutdown(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, p1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    .line 535
    return-void
.end method

.method blacklist wasShutdownReceived()Z
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 549
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_20

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 551
    :goto_16
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 549
    return v0

    .line 551
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 552
    throw v0
.end method

.method blacklist wasShutdownSent()Z
    .registers 3

    .line 556
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 558
    :try_start_9
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(JLcom/android/org/conscrypt/NativeSsl;)I

    move-result v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_1f

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 560
    :goto_15
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 558
    return v1

    .line 560
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 561
    throw v0
.end method

.method blacklist write(Ljava/io/FileDescriptor;[BIII)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 442
    :try_start_9
    invoke-virtual {p0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 445
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 446
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write(JLcom/android/org/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_37

    .line 448
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 449
    nop

    .line 450
    return-void

    .line 443
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "buf":[B
    .end local p3    # "offset":I
    .end local p4    # "len":I
    .end local p5    # "timeoutMillis":I
    throw v0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    .line 448
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "buf":[B
    .restart local p3    # "offset":I
    .restart local p4    # "len":I
    .restart local p5    # "timeoutMillis":I
    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 449
    throw v0
.end method

.method blacklist writeDirectByteBuffer(JI)I
    .registers 12
    .param p1, "sourceAddress"    # J
    .param p3, "sourceLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 578
    :try_start_9
    iget-wide v1, p0, Lcom/android/org/conscrypt/NativeSsl;->ssl:J

    iget-object v7, p0, Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_direct(JLcom/android/org/conscrypt/NativeSsl;JILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 581
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 578
    return v0

    .line 581
    :catchall_1e
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 582
    throw v0
.end method
