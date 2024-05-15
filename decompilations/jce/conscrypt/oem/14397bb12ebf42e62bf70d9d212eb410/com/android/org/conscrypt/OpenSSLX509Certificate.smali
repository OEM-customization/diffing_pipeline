.class public final Lcom/android/org/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# static fields
.field private static final serialVersionUID:J = 0x1ba5daf1d5fc5de0L


# instance fields
.field private final transient mContext:J

.field private transient mHashCode:Ljava/lang/Integer;


# direct methods
.method constructor <init>(J)V
    .registers 4
    .param p1, "ctx"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 68
    return-void
.end method

.method private static alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p0, "altNameArray"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 493
    if-nez p0, :cond_4

    .line 494
    return-object v2

    .line 497
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 499
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 502
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method static createCertChain([J)[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 7
    .param p0, "certificateRefs"    # [J

    .prologue
    const/4 v2, 0x0

    .line 576
    if-nez p0, :cond_4

    .line 577
    return-object v2

    .line 579
    :cond_4
    array-length v2, p0

    new-array v0, v2, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 580
    .local v0, "certificates":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 581
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, p0, v1

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v2, v0, v1

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 583
    :cond_17
    return-object v0
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 172
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_7

    .line 173
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .end local p0    # "cert":Ljava/security/cert/Certificate;
    return-object p0

    .line 174
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_7
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_14

    .line 175
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    return-object v0

    .line 177
    :cond_14
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Only X.509 certificates are supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 11
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 100
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 104
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_19
    .catchall {:try_start_6 .. :try_end_e} :catchall_20

    move-result-object v1

    .line 108
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 111
    if-nez v1, :cond_25

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 105
    .end local v1    # "certRefs":[J
    :catch_19
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1a
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 107
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_20
    move-exception v5

    .line 108
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 107
    throw v5

    .line 115
    .restart local v1    # "certRefs":[J
    :cond_25
    new-instance v2, Ljava/util/ArrayList;

    .line 116
    array-length v5, v1

    .line 115
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2c
    array-length v5, v1

    if-ge v4, v5, :cond_45

    .line 118
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3a

    .line 117
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 121
    :cond_3a
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 123
    :cond_45
    return-object v2
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 11
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 147
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0, v5}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 151
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    .line 152
    const/4 v5, 0x1

    .line 151
    invoke-static {v6, v7, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_27
    .catchall {:try_start_6 .. :try_end_e} :catchall_2e

    move-result-object v1

    .line 156
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    .line 160
    array-length v5, v1

    .line 159
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    array-length v5, v1

    if-ge v4, v5, :cond_3e

    .line 162
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_33

    .line 161
    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 153
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .end local v4    # "i":I
    :catch_27
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    :try_start_28
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v5

    .line 156
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 155
    throw v5

    .line 165
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .restart local v4    # "i":I
    :cond_33
    new-instance v5, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 167
    :cond_3e
    return-object v2
.end method

.method public static fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 5
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-static {p0}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_9
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 92
    :catch_a
    move-exception v0

    .line 93
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 76
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_bio(J)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_22
    .catchall {:try_start_6 .. :try_end_d} :catchall_29

    move-result-wide v2

    .line 77
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_19

    .line 78
    const/4 v4, 0x0

    .line 84
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 78
    return-object v4

    .line 80
    :cond_19
    :try_start_19
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_22
    .catchall {:try_start_19 .. :try_end_1e} :catchall_29

    .line 84
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 80
    return-object v4

    .line 81
    .end local v2    # "certCtx":J
    :catch_22
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_29

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_29
    move-exception v4

    .line 84
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 83
    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 132
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_22
    .catchall {:try_start_6 .. :try_end_d} :catchall_29

    move-result-wide v2

    .line 133
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_19

    .line 134
    const/4 v4, 0x0

    .line 140
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 134
    return-object v4

    .line 136
    :cond_19
    :try_start_19
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_22
    .catchall {:try_start_19 .. :try_end_1e} :catchall_29

    .line 140
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 136
    return-object v4

    .line 137
    .end local v2    # "certCtx":J
    :catch_22
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    :try_start_23
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_29

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_29
    move-exception v4

    .line 140
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 139
    throw v4
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p2, :cond_27

    .line 377
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 382
    .local v0, "sig":Ljava/security/Signature;
    :goto_a
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 384
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_30

    .line 385
    new-instance v1, Ljava/security/SignatureException;

    const-string/jumbo v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_27
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_a

    .line 387
    :cond_30
    return-void
.end method

.method private verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 7
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 364
    :try_start_0
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->X509_verify(JLcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_11
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_a

    .line 370
    return-void

    .line 367
    :catch_a
    move-exception v1

    .line 368
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2}, Ljava/security/SignatureException;-><init>()V

    throw v2

    .line 365
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_11
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 233
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_42

    .line 239
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate not valid until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    const-string/jumbo v2, " (compared to "

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 240
    const-string/jumbo v2, ")"

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_42
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_84

    .line 244
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string/jumbo v2, " (compared to "

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string/jumbo v2, ")"

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_84
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 519
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v2, :cond_14

    move-object v0, p1

    .line 520
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 522
    .local v0, "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v4, v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_cmp(JJ)I

    move-result v2

    if-nez v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 525
    .end local v0    # "o":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_14
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 563
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 564
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_free(J)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_11

    .line 567
    :cond_d
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->finalize()V

    .line 569
    return-void

    .line 566
    :catchall_11
    move-exception v0

    .line 567
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->finalize()V

    .line 566
    throw v0
.end method

.method public getBasicConstraints()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 343
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_c

    .line 344
    return v4

    .line 347
    :cond_c
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_pathlen(J)I

    move-result v0

    .line 348
    .local v0, "pathLen":I
    if-ne v0, v4, :cond_18

    .line 349
    const v1, 0x7fffffff

    return v1

    .line 352
    :cond_18
    return v0
.end method

.method public getContext()J
    .registers 3

    .prologue
    .line 544
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    .line 192
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 194
    const/4 v1, 0x0

    return-object v1

    .line 197
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 484
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_xkusage(J)[Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "extUsage":[Ljava/lang/String;
    if-nez v0, :cond_a

    .line 486
    return-object v1

    .line 489
    :cond_a
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 513
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 514
    const/4 v2, 0x2

    .line 513
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 3

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_issuerUID(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 5

    .prologue
    .line 472
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_issuer_name(J)[B

    move-result-object v0

    .line 473
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getKeyUsage()[Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 327
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_kusage(J)[Z

    move-result-object v0

    .line 328
    .local v0, "kusage":[Z
    if-nez v0, :cond_d

    .line 329
    return-object v6

    .line 332
    :cond_d
    array-length v2, v0

    if-lt v2, v5, :cond_11

    .line 333
    return-object v0

    .line 336
    :cond_11
    new-array v1, v5, [Z

    .line 337
    .local v1, "resized":[Z
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 338
    return-object v1
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    .line 216
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 217
    const/4 v1, 0x1

    .line 216
    invoke-static {v2, v3, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 218
    const/4 v1, 0x0

    return-object v1

    .line 221
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 5

    .prologue
    .line 279
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 280
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 281
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notAfter(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 282
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 5

    .prologue
    .line 271
    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 272
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_notBefore(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 274
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 9

    .prologue
    .line 449
    :try_start_0
    new-instance v4, Lcom/android/org/conscrypt/OpenSSLKey;

    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_pubkey(J)J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/android/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 450
    .local v4, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-virtual {v4}, Lcom/android/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v5

    return-object v5

    .line 451
    .end local v4    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :catch_10
    move-exception v1

    .line 455
    .local v1, "ignored":Ljava/security/GeneralSecurityException;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_pubkey_oid(J)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "oid":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(J)[B

    move-result-object v0

    .line 458
    .local v0, "encoded":[B
    :try_start_1d
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 459
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_29} :catch_2b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1d .. :try_end_29} :catch_2b

    move-result-object v5

    return-object v5

    .line 460
    .end local v2    # "kf":Ljava/security/KeyFactory;
    :catch_2b
    move-exception v1

    .line 467
    new-instance v5, Lcom/android/org/conscrypt/X509PublicKey;

    invoke-direct {v5, v3, v0}, Lcom/android/org/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    return-object v5
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 256
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "oid":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 300
    return-object v0

    .line 302
    :cond_b
    return-object v1
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 307
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 3

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 3

    .prologue
    .line 292
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_signature(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 507
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 508
    const/4 v2, 0x1

    .line 507
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 3

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_subjectUID(J)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 5

    .prologue
    .line 478
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_subject_name(J)[B

    move-result-object v0

    .line 479
    .local v0, "subject":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 287
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_cert_info_enc(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 3

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_get_version(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_ex_flags(J)I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 531
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 533
    :cond_b
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    .line 534
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 435
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 436
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v8}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 438
    .local v0, "bioCtx":J
    :try_start_9
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_print_ex(JJJJ)V

    .line 439
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1a

    move-result-object v2

    .line 441
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 439
    return-object v2

    .line 440
    :catchall_1a
    move-exception v2

    .line 441
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 440
    throw v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 392
    instance-of v1, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v1, :cond_e

    .line 393
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 394
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 395
    return-void

    .line 398
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_e
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 413
    instance-of v2, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_12

    instance-of v2, p2, Lcom/android/org/conscrypt/OpenSSLProvider;

    if-eqz v2, :cond_12

    .line 414
    check-cast p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 415
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 416
    return-void

    .line 420
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_12
    if-nez p2, :cond_39

    .line 421
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 426
    .local v1, "sig":Ljava/security/Signature;
    :goto_1c
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 428
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_42

    .line 429
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 423
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_39
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1    # "sig":Ljava/security/Signature;
    goto :goto_1c

    .line 431
    :cond_42
    return-void
.end method

.method public withDeletedExtension(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 6
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 555
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->X509_dup(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    .line 556
    .local v0, "copy":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_delete_ext(JLjava/lang/String;)V

    .line 557
    return-object v0
.end method
