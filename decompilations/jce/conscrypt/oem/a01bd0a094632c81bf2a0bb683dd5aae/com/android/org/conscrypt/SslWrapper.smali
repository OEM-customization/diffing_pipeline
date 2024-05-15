.class final Lcom/android/org/conscrypt/SslWrapper;
.super Ljava/lang/Object;
.source "SslWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/SslWrapper$BioWrapper;
    }
.end annotation


# instance fields
.field private final aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

.field private final handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

.field private final parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

.field private final pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

.field private ssl:J


# direct methods
.method static synthetic -get0(Lcom/android/org/conscrypt/SslWrapper;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/SslWrapper;

    .prologue
    iget-object v0, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/conscrypt/SslWrapper;)J
    .registers 3
    .param p0, "-this"    # Lcom/android/org/conscrypt/SslWrapper;

    .prologue
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    return-wide v0
.end method

.method private constructor <init>(JLcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V
    .registers 8
    .param p1, "ssl"    # J
    .param p3, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p4, "handshakeCallbacks"    # Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p5, "aliasChooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p6, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    .line 66
    iput-object p3, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    .line 67
    iput-object p4, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 68
    iput-object p5, p0, Lcom/android/org/conscrypt/SslWrapper;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    .line 69
    iput-object p6, p0, Lcom/android/org/conscrypt/SslWrapper;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    .line 70
    return-void
.end method

.method private enablePSKKeyManagerIfRequested()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 396
    iget-object v4, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v4}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v3

    .line 397
    .local v3, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-eqz v3, :cond_2d

    .line 398
    const/4 v2, 0x0

    .line 399
    .local v2, "pskEnabled":Z
    iget-object v4, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v5, v4, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_10
    if-ge v4, v6, :cond_20

    aget-object v0, v5, v4

    .line 400
    .local v0, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string/jumbo v7, "PSK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 401
    const/4 v2, 0x1

    .line 405
    .end local v0    # "enabledCipherSuite":Ljava/lang/String;
    :cond_20
    if-eqz v2, :cond_2d

    .line 406
    invoke-direct {p0}, Lcom/android/org/conscrypt/SslWrapper;->isClient()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 407
    iget-wide v4, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v4, v5, v8}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JZ)V

    .line 415
    .end local v2    # "pskEnabled":Z
    :cond_2d
    :goto_2d
    return-void

    .line 399
    .restart local v0    # "enabledCipherSuite":Ljava/lang/String;
    .restart local v2    # "pskEnabled":Z
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 409
    .end local v0    # "enabledCipherSuite":Ljava/lang/String;
    :cond_31
    iget-wide v4, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v4, v5, v8}, Lcom/android/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JZ)V

    .line 410
    iget-object v4, p0, Lcom/android/org/conscrypt/SslWrapper;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v4, v3}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/android/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "identityHint":Ljava/lang/String;
    iget-wide v4, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v4, v5, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLjava/lang/String;)V

    goto :goto_2d
.end method

.method private isClient()Z
    .registers 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method static newInstance(Lcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)Lcom/android/org/conscrypt/SslWrapper;
    .registers 14
    .param p0, "parameters"    # Lcom/android/org/conscrypt/SSLParametersImpl;
    .param p1, "handshakeCallbacks"    # Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p2, "chooser"    # Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;
    .param p3, "pskCallbacks"    # Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/android/org/conscrypt/AbstractSessionContext;

    move-result-object v0

    iget-wide v8, v0, Lcom/android/org/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    .line 58
    .local v8, "ctx":J
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v2

    .line 59
    .local v2, "ssl":J
    new-instance v1, Lcom/android/org/conscrypt/SslWrapper;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/SslWrapper;-><init>(JLcom/android/org/conscrypt/SSLParametersImpl;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;)V

    return-object v1
.end method

.method private setCertificateValidation(J)V
    .registers 10
    .param p1, "sslNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 436
    invoke-direct {p0}, Lcom/android/org/conscrypt/SslWrapper;->isClient()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 439
    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 440
    const/4 v5, 0x3

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 442
    const/4 v0, 0x1

    .line 453
    .local v0, "certRequested":Z
    :goto_14
    if-eqz v0, :cond_2c

    .line 454
    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 455
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 456
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_2c

    array-length v5, v2

    if-eqz v5, :cond_2c

    .line 459
    :try_start_25
    invoke-static {v2}, Lcom/android/org/conscrypt/SSLUtils;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_28
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_25 .. :try_end_28} :catch_40

    move-result-object v3

    .line 463
    .local v3, "issuersBytes":[[B
    invoke-static {p1, p2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(J[[B)V

    .line 467
    .end local v0    # "certRequested":Z
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "issuersBytes":[[B
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_2c
    return-void

    .line 444
    :cond_2d
    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lcom/android/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 445
    const/4 v5, 0x1

    invoke-static {p1, p2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 446
    const/4 v0, 0x1

    .restart local v0    # "certRequested":Z
    goto :goto_14

    .line 449
    .end local v0    # "certRequested":Z
    :cond_3b
    invoke-static {p1, p2, v6}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 450
    const/4 v0, 0x0

    .restart local v0    # "certRequested":Z
    goto :goto_14

    .line 460
    .restart local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_40
    move-exception v1

    .line 461
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string/jumbo v6, "Problem encoding principals"

    invoke-direct {v5, v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private setTlsChannelId(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v0, v0, Lcom/android/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-nez v0, :cond_7

    .line 419
    return-void

    .line 422
    :cond_7
    iget-object v0, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 424
    if-nez p1, :cond_1a

    .line 425
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1a
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V

    .line 432
    :goto_23
    return-void

    .line 430
    :cond_24
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(J)V

    goto :goto_23
.end method


# virtual methods
.method chooseClientCertificate([B[[B)V
    .registers 11
    .param p1, "keyTypeBytes"    # [B
    .param p2, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->getSupportedClientKeyTypes([B)Ljava/util/Set;

    move-result-object v5

    .line 193
    .local v5, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 196
    .local v4, "keyTypes":[Ljava/lang/String;
    if-nez p2, :cond_25

    .line 197
    const/4 v2, 0x0

    .line 204
    :cond_13
    iget-object v6, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 205
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_38

    .line 206
    iget-object v6, p0, Lcom/android/org/conscrypt/SslWrapper;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v6, v3, v2, v4}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_21
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/SslWrapper;->setCertificate(Ljava/lang/String;)V

    .line 209
    return-void

    .line 199
    .end local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_25
    array-length v6, p2

    new-array v2, v6, [Ljavax/security/auth/x500/X500Principal;

    .line 200
    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    array-length v6, p2

    if-ge v1, v6, :cond_13

    .line 201
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, p2, v1

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v6, v2, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 207
    .end local v1    # "i":I
    .end local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    .restart local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_38
    const/4 v0, 0x0

    .local v0, "alias":Ljava/lang/String;
    goto :goto_21
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .registers 13
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identityBytesOut"    # [B
    .param p3, "key"    # [B

    .prologue
    const/4 v8, 0x0

    .line 129
    iget-object v6, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v6}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v3

    .line 130
    .local v3, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v3, :cond_a

    .line 131
    return v8

    .line 134
    :cond_a
    iget-object v6, p0, Lcom/android/org/conscrypt/SslWrapper;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v6, v3, p1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "identity":Ljava/lang/String;
    if-nez v1, :cond_1e

    .line 138
    const-string/jumbo v1, ""

    .line 139
    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .line 149
    .local v2, "identityBytes":[B
    :goto_17
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    array-length v7, p2

    if-le v6, v7, :cond_39

    .line 151
    return v8

    .line 140
    .end local v2    # "identityBytes":[B
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 141
    sget-object v2, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .restart local v2    # "identityBytes":[B
    goto :goto_17

    .line 144
    .end local v2    # "identityBytes":[B
    :cond_27
    :try_start_27
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_2d} :catch_2f

    move-result-object v2

    .restart local v2    # "identityBytes":[B
    goto :goto_17

    .line 145
    .end local v2    # "identityBytes":[B
    :catch_2f
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "UTF-8 encoding not supported"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 153
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "identityBytes":[B
    :cond_39
    array-length v6, v2

    if-lez v6, :cond_40

    .line 154
    array-length v6, v2

    invoke-static {v2, v8, p2, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 156
    :cond_40
    array-length v6, v2

    aput-byte v8, p2, v6

    .line 158
    iget-object v6, p0, Lcom/android/org/conscrypt/SslWrapper;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v6, v3, p1, v1}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 159
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 160
    .local v5, "secretKeyBytes":[B
    if-nez v5, :cond_50

    .line 161
    return v8

    .line 162
    :cond_50
    array-length v6, v5

    array-length v7, p3

    if-le v6, v7, :cond_55

    .line 164
    return v8

    .line 166
    :cond_55
    array-length v6, v5

    invoke-static {v5, v8, p3, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 167
    array-length v6, v5

    return v6
.end method

.method close()V
    .registers 3

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_free(J)V

    .line 522
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    .line 523
    return-void
.end method

.method doHandshake()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_do_handshake(JLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method doHandshake(Ljava/io/FileDescriptor;I)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/net/SocketTimeoutException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 374
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p1, v2, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V

    .line 375
    return-void
.end method

.method getAlpnSelectedProtocol()[B
    .registers 3

    .prologue
    .line 534
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get0_alpn_selected(J)[B

    move-result-object v0

    return-object v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_current_cipher(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getError(I)I
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_error(JI)I

    move-result v0

    return v0
.end method

.method getLocalCertificates()[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_certificate(J)[J

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method getMaxSealOverhead()I
    .registers 3

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_max_seal_overhead(J)I

    move-result v0

    return v0
.end method

.method getPeerCertificateOcspData()[B
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ocsp_response(J)[B

    move-result-object v0

    return-object v0
.end method

.method getPeerCertificates()[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_peer_cert_chain(J)[J

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0
.end method

.method getPeerTlsSctData()[B
    .registers 3

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(J)[B

    move-result-object v0

    return-object v0
.end method

.method getPendingReadableBytes()I
    .registers 3

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_readable_bytes(J)I

    move-result v0

    return v0
.end method

.method getRequestedServerName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 274
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_servername(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSessionId()[B
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_session_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method getTime()J
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_time(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeout()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_timeout(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getTlsChannelId()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_version(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initialize(Ljava/lang/String;Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 19
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "channelIdPrivateKey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v3

    .line 283
    .local v3, "enableSessionCreation":Z
    if-nez v3, :cond_12

    .line 284
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    .line 290
    :cond_12
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_accept_renegotiations(J)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/SslWrapper;->isClient()Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 293
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_connect_state(J)V

    .line 296
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(J)V

    .line 297
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/org/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 298
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(J)V

    .line 309
    :cond_40
    :goto_40
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-nez v10, :cond_75

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v10, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    if-eqz v10, :cond_75

    .line 310
    new-instance v10, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v11, "No enabled protocols; SSLv3 is no longer supported and was filtered from the list"

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 301
    :cond_5c
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_accept_state(J)V

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->getOCSPResponse()[B

    move-result-object v10

    if-eqz v10, :cond_40

    .line 305
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(J)V

    goto :goto_40

    .line 314
    :cond_75
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/SslWrapper;->isClient()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v13, v13, Lcom/android/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    invoke-static {v10, v11, v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_configure_alpn(JZ[B)V

    .line 315
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v12, v12, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledProtocols(J[Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v12, v12, Lcom/android/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(J[Ljava/lang/String;)V

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/SslWrapper;->isClient()Z

    move-result v10

    if-nez v10, :cond_128

    .line 321
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 322
    .local v7, "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_ciphers(J)[J

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_b5
    if-ge v10, v12, :cond_c5

    aget-wide v8, v11, v10

    .line 323
    .local v8, "sslCipherNativePointer":J
    invoke-static {v8, v9}, Lcom/android/org/conscrypt/SSLUtils;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "keyType":Ljava/lang/String;
    if-eqz v5, :cond_c2

    .line 325
    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_c2
    add-int/lit8 v10, v10, 0x1

    goto :goto_b5

    .line 328
    .end local v5    # "keyType":Ljava/lang/String;
    .end local v8    # "sslCipherNativePointer":J
    :cond_c5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    .line 329
    .local v4, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v4, :cond_f4

    .line 330
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "keyType$iterator":Ljava/util/Iterator;
    :goto_d3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 332
    .restart local v5    # "keyType":Ljava/lang/String;
    :try_start_df
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->aliasChooser:Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v10, v4, v5}, Lcom/android/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/org/conscrypt/SslWrapper;->setCertificate(Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_df .. :try_end_ec} :catch_ed

    goto :goto_d3

    .line 333
    :catch_ed
    move-exception v2

    .line 334
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 339
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v5    # "keyType":Ljava/lang/String;
    .end local v6    # "keyType$iterator":Ljava/util/Iterator;
    :cond_f4
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    const-wide/32 v12, 0x400000

    invoke-static {v10, v11, v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    .line 341
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v10, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-eqz v10, :cond_113

    .line 342
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v12, v12, Lcom/android/org/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-static {v10, v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_signed_cert_timestamp_list(J[B)V

    .line 345
    :cond_113
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v10, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-eqz v10, :cond_128

    .line 346
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-object v12, v12, Lcom/android/org/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-static {v10, v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_ocsp_response(J[B)V

    .line 350
    .end local v4    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    .end local v7    # "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_128
    invoke-direct/range {p0 .. p0}, Lcom/android/org/conscrypt/SslWrapper;->enablePSKKeyManagerIfRequested()V

    .line 352
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    iget-boolean v10, v10, Lcom/android/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    if-eqz v10, :cond_16f

    .line 353
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    const-wide/16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    .line 359
    :goto_13c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v10

    if-eqz v10, :cond_155

    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_155

    .line 360
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p1

    invoke-static {v10, v11, v0}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLjava/lang/String;)V

    .line 365
    :cond_155
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    const-wide/16 v12, 0x100

    invoke-static {v10, v11, v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    .line 367
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/org/conscrypt/SslWrapper;->setCertificateValidation(J)V

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/SslWrapper;->setTlsChannelId(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 369
    return-void

    .line 356
    :cond_16f
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_options(J)J

    move-result-wide v12

    const-wide/16 v14, 0x4000

    or-long/2addr v12, v14

    .line 355
    invoke-static {v10, v11, v12, v13}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    goto :goto_13c
.end method

.method interrupt()V
    .registers 3

    .prologue
    .line 470
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_interrupt(J)V

    .line 471
    return-void
.end method

.method isClosed()Z
    .registers 5

    .prologue
    .line 526
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isReused()Z
    .registers 3

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_session_reused(J)Z

    move-result v0

    return v0
.end method

.method newBio()Lcom/android/org/conscrypt/SslWrapper$BioWrapper;
    .registers 4

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/org/conscrypt/SslWrapper$BioWrapper;-><init>(Lcom/android/org/conscrypt/SslWrapper;Lcom/android/org/conscrypt/SslWrapper$BioWrapper;)V
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v1

    .line 79
    :catch_7
    move-exception v0

    .line 80
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method offerToResumeSession(J)V
    .registers 6
    .param p1, "sslSessionNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_session(JJ)V

    .line 86
    return-void
.end method

.method read(Ljava/io/FileDescriptor;[BIII)I
    .registers 14
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

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_read(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I

    move-result v0

    return v0
.end method

.method readArray([BII)I
    .registers 10
    .param p1, "destJava"    # [B
    .param p2, "destOffset"    # I
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 498
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method readDirectByteBuffer(JI)I
    .registers 11
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-wide v2, p1

    move v4, p3

    .line 492
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .registers 10
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    const/4 v5, 0x0

    .line 175
    iget-object v3, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lcom/android/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/android/org/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 176
    .local v0, "pskKeyManager":Lcom/android/org/conscrypt/PSKKeyManager;
    if-nez v0, :cond_a

    .line 177
    return v5

    .line 179
    :cond_a
    iget-object v3, p0, Lcom/android/org/conscrypt/SslWrapper;->pskCallbacks:Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v3, v0, p1, p2}, Lcom/android/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/android/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 180
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 181
    .local v2, "secretKeyBytes":[B
    if-nez v2, :cond_17

    .line 182
    return v5

    .line 183
    :cond_17
    array-length v3, v2

    array-length v4, p3

    if-le v3, v4, :cond_1c

    .line 184
    return v5

    .line 186
    :cond_1c
    array-length v3, v2

    invoke-static {v2, v5, p3, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 187
    array-length v3, v2

    return v3
.end method

.method setCertificate(Ljava/lang/String;)V
    .registers 15
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 212
    if-nez p1, :cond_4

    .line 213
    return-void

    .line 215
    :cond_4
    iget-object v10, p0, Lcom/android/org/conscrypt/SslWrapper;->parameters:Lcom/android/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v10}, Lcom/android/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    .line 216
    .local v4, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-nez v4, :cond_d

    .line 217
    return-void

    .line 219
    :cond_d
    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v7

    .line 220
    .local v7, "privateKey":Ljava/security/PrivateKey;
    if-nez v7, :cond_14

    .line 221
    return-void

    .line 223
    :cond_14
    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 224
    .local v0, "certificates":[Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_1b

    .line 225
    return-void

    .line 227
    :cond_1b
    array-length v10, v0

    if-lez v10, :cond_3f

    aget-object v10, v0, v11

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 235
    :goto_24
    array-length v10, v0

    new-array v6, v10, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 236
    .local v6, "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    array-length v10, v0

    new-array v9, v10, [J

    .line 237
    .local v9, "x509refs":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    array-length v10, v0

    if-ge v2, v10, :cond_41

    .line 239
    aget-object v10, v0, v2

    invoke-static {v10}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    .line 240
    .local v5, "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    aput-object v5, v6, v2

    .line 241
    invoke-virtual {v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v10

    aput-wide v10, v9, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 227
    .end local v2    # "i":I
    .end local v5    # "openSslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v6    # "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v9    # "x509refs":[J
    :cond_3f
    const/4 v8, 0x0

    .local v8, "publicKey":Ljava/security/PublicKey;
    goto :goto_24

    .line 246
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .restart local v2    # "i":I
    .restart local v6    # "openSslCerts":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v9    # "x509refs":[J
    :cond_41
    iget-wide v10, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11, v9}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_certificate(J[J)V

    .line 250
    :try_start_46
    invoke-static {v7, v8}, Lcom/android/org/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v3

    .line 251
    .local v3, "key":Lcom/android/org/conscrypt/OpenSSLKey;
    iget-wide v10, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_use_PrivateKey(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_53
    .catch Ljava/security/InvalidKeyException; {:try_start_46 .. :try_end_53} :catch_5f

    .line 258
    invoke-virtual {v3}, Lcom/android/org/conscrypt/OpenSSLKey;->isWrapped()Z

    move-result v10

    if-nez v10, :cond_5e

    .line 261
    iget-wide v10, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v10, v11}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_check_private_key(J)V

    .line 263
    :cond_5e
    return-void

    .line 252
    .end local v3    # "key":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_5f
    move-exception v1

    .line 253
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v10, Ljavax/net/ssl/SSLException;

    invoke-direct {v10, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method setTimeout(J)V
    .registers 6
    .param p1, "millis"    # J

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_set_timeout(JJ)J

    .line 102
    return-void
.end method

.method shutdown()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_shutdown(JLcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    .line 480
    return-void
.end method

.method shutdown(Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v2, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_shutdown(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    .line 476
    return-void
.end method

.method ssl()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    return-wide v0
.end method

.method wasShutdownReceived()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 483
    iget-wide v2, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method wasShutdownSent()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 487
    iget-wide v2, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method write(Ljava/io/FileDescriptor;[BIII)V
    .registers 14
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

    .prologue
    .line 390
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v3, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_write(JLjava/io/FileDescriptor;Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V

    .line 391
    return-void
.end method

.method writeArray([BII)I
    .registers 10
    .param p1, "sourceJava"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "sourceLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 508
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_heap(J[BIILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method

.method writeDirectByteBuffer(JI)I
    .registers 11
    .param p1, "sourceAddress"    # J
    .param p3, "sourceLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/android/org/conscrypt/SslWrapper;->ssl:J

    iget-object v5, p0, Lcom/android/org/conscrypt/SslWrapper;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-wide v2, p1

    move v4, p3

    .line 503
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_direct(JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method
