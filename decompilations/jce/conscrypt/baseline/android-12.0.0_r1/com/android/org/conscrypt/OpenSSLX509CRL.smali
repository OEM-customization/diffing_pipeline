.class final Lcom/android/org/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "OpenSSLX509CRL.java"


# instance fields
.field private final greylist-max-o mContext:J

.field private final greylist-max-o nextUpdate:Ljava/util/Date;

.field private final greylist-max-o thisUpdate:Ljava/util/Date;


# direct methods
.method private constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 61
    invoke-static {p1, p2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->thisUpdate:Ljava/util/Date;

    .line 62
    invoke-static {p1, p2, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->nextUpdate:Ljava/util/Date;

    .line 63
    return-void
.end method

.method static greylist-max-o fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 95
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_34
    .catchall {:try_start_6 .. :try_end_f} :catchall_32

    .line 99
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 100
    nop

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_31

    aget-wide v5, v1, v4

    .line 104
    .local v5, "certRef":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_26

    .line 105
    goto :goto_2e

    .line 107
    :cond_26
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v7, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v5    # "certRef":J
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 109
    :cond_31
    return-object v2

    .line 99
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    :catchall_32
    move-exception v1

    goto :goto_3b

    .line 96
    :catch_34
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_3b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 100
    throw v1
.end method

.method static greylist-max-o fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .registers 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 134
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_34
    .catchall {:try_start_6 .. :try_end_f} :catchall_32

    .line 139
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 140
    nop

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v3, :cond_31

    aget-wide v5, v1, v4

    .line 144
    .local v5, "certRef":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_26

    .line 145
    goto :goto_2e

    .line 147
    :cond_26
    new-instance v7, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v7, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v5    # "certRef":J
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 149
    :cond_31
    return-object v2

    .line 139
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/OpenSSLX509CRL;>;"
    :catchall_32
    move-exception v1

    goto :goto_3b

    .line 136
    :catch_34
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_35
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_3b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 140
    throw v1
.end method

.method static greylist-max-o fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 77
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    .line 78
    .local v1, "crlCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 79
    const/4 v3, 0x0

    .line 85
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 79
    return-object v3

    .line 81
    :cond_19
    :try_start_19
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 85
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 81
    return-object v3

    .line 85
    .end local v1    # "crlCtx":J
    :catchall_22
    move-exception v1

    goto :goto_2b

    .line 82
    :catch_24
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 86
    throw v1
.end method

.method static greylist-max-o fromX509PemInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509CRL;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 116
    .local v0, "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    :try_start_6
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J

    move-result-wide v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_24
    .catchall {:try_start_6 .. :try_end_e} :catchall_22

    .line 117
    .local v1, "crlCtx":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_19

    .line 118
    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 118
    return-object v3

    .line 120
    :cond_19
    :try_start_19
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v3, v1, v2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_24
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    .line 124
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 120
    return-object v3

    .line 124
    .end local v1    # "crlCtx":J
    :catchall_22
    move-exception v1

    goto :goto_2b

    .line 121
    :catch_24
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v2, v1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bis":Lcom/android/org/conscrypt/OpenSSLBIOInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :goto_2b
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 125
    throw v1
.end method

.method static greylist-max-o toDate(J)Ljava/util/Date;
    .registers 5
    .param p0, "asn1time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .line 67
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 69
    invoke-static {p0, p1, v0}, Lcom/android/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "sigAlg":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 229
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_a
    if-nez p2, :cond_11

    .line 234
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .local v1, "sig":Ljava/security/Signature;
    goto :goto_15

    .line 236
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_11
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 239
    .restart local v1    # "sig":Ljava/security/Signature;
    :goto_15
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 241
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 244
    return-void

    .line 242
    :cond_2a
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V
    .registers 5
    .param p1, "pkey"    # Lcom/android/org/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 218
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/android/org/conscrypt/OpenSSLKey;->getNativeRef()Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_verify(JLcom/android/org/conscrypt/OpenSSLX509CRL;Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_b

    .line 221
    nop

    .line 222
    return-void

    .line 219
    :catch_b
    move-exception v0

    .line 220
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 419
    :try_start_0
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 420
    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_free(JLcom/android/org/conscrypt/OpenSSLX509CRL;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_10

    .line 423
    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 424
    nop

    .line 425
    return-void

    .line 423
    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 424
    throw v0
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 155
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v3, 0x0

    .line 163
    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 165
    const/4 v1, 0x0

    return-object v1

    .line 168
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist test-api getEncoded()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 212
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->i2d_X509_CRL(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .registers 4
    .param p1, "oid"    # Ljava/lang/String;

    .line 173
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLcom/android/org/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .registers 2

    .line 272
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 3

    .line 277
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    .line 278
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public whitelist test-api getNextUpdate()Ljava/util/Date;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 179
    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_16

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v3, 0x1

    .line 188
    invoke-static {v1, v2, p0, v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_16

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 193
    :cond_16
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 8
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 293
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 294
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 293
    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(JLcom/android/org/conscrypt/OpenSSLX509CRL;[B)J

    move-result-wide v0

    .line 295
    .local v0, "revokedRef":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 296
    return-object v3

    .line 299
    :cond_12
    :try_start_12
    new-instance v2, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V
    :try_end_1b
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_12 .. :try_end_1b} :catch_1c

    return-object v2

    .line 300
    :catch_1c
    move-exception v2

    .line 301
    .local v2, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    return-object v3
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 9
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .line 307
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_27

    .line 308
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 309
    .local v0, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 310
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    .line 309
    move-object v3, p0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JLcom/android/org/conscrypt/OpenSSLX509CRL;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v1

    .line 312
    .local v1, "x509RevokedRef":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1b

    .line 313
    return-object v4

    .line 317
    :cond_1b
    :try_start_1b
    new-instance v3, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V
    :try_end_24
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_1b .. :try_end_24} :catch_25

    return-object v3

    .line 318
    :catch_25
    move-exception v3

    .line 319
    .local v3, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    return-object v4

    .line 323
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v1    # "x509RevokedRef":J
    .end local v3    # "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    :cond_27
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation

    .line 328
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[J

    move-result-object v0

    .line 329
    .local v0, "entryRefs":[J
    if-eqz v0, :cond_25

    array-length v1, v0

    if-nez v1, :cond_c

    goto :goto_25

    .line 333
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 334
    .local v1, "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_24

    aget-wide v4, v0, v3

    .line 336
    .local v4, "entryRef":J
    :try_start_17
    new-instance v6, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-direct {v6, v4, v5}, Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 339
    goto :goto_21

    .line 337
    :catch_20
    move-exception v6

    .line 334
    .end local v4    # "entryRef":J
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 342
    :cond_24
    return-object v1

    .line 330
    .end local v1    # "crlSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/org/conscrypt/OpenSSLX509CRLEntry;>;"
    :cond_25
    :goto_25
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .registers 3

    .line 357
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "oid":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/org/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 360
    return-object v1

    .line 362
    :cond_b
    invoke-static {v0}, Lcom/android/org/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_12

    .line 364
    return-object v1

    .line 366
    :cond_12
    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .registers 3

    .line 371
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(JLcom/android/org/conscrypt/OpenSSLX509CRL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .registers 3

    .line 376
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .registers 3

    .line 352
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_signature(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTBSCertList()[B
    .registers 3

    .line 347
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(JLcom/android/org/conscrypt/OpenSSLX509CRL;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getThisUpdate()Ljava/util/Date;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .registers 3

    .line 267
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_version(JLcom/android/org/conscrypt/OpenSSLX509CRL;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .registers 10

    .line 198
    iget-wide v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 199
    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/android/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JLcom/android/org/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_1e

    aget-object v5, v0, v4

    .line 201
    .local v5, "oid":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v6, v7, p0, v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLcom/android/org/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)J

    move-result-wide v6

    .line 202
    .local v6, "extensionRef":J
    invoke-static {v6, v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v2, :cond_1b

    .line 203
    return v2

    .line 200
    .end local v5    # "oid":Ljava/lang/String;
    .end local v6    # "extensionRef":J
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 207
    :cond_1e
    return v3
.end method

.method public whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 10
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 381
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 382
    return v1

    .line 386
    :cond_6
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_e

    .line 387
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .local v0, "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    goto :goto_1c

    .line 390
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 391
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 390
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_30

    .line 394
    .restart local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    nop

    .line 397
    :goto_1c
    iget-wide v2, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 398
    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v5

    .line 397
    move-object v4, p0

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JLcom/android/org/conscrypt/OpenSSLX509CRL;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v2

    .line 400
    .local v2, "x509RevokedRef":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1

    .line 392
    .end local v0    # "osslCert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "x509RevokedRef":J
    :catch_30
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot convert certificate"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 405
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 406
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v1

    .line 408
    .local v1, "bioCtx":J
    :try_start_9
    iget-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v1, v2, v3, v4, p0}, Lcom/android/org/conscrypt/NativeCrypto;->X509_CRL_print(JJLcom/android/org/conscrypt/OpenSSLX509CRL;)V

    .line 409
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 411
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 409
    return-object v3

    .line 411
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 412
    throw v3
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 249
    instance-of v0, p1, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_f

    .line 250
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {v0}, Lcom/android/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/android/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 251
    .local v0, "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lcom/android/org/conscrypt/OpenSSLKey;)V

    .line 252
    return-void

    .line 255
    .end local v0    # "pkey":Lcom/android/org/conscrypt/OpenSSLKey;
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 263
    return-void
.end method
