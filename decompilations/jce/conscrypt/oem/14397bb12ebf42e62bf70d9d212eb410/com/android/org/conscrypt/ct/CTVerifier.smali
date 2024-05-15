.class public Lcom/android/org/conscrypt/ct/CTVerifier;
.super Ljava/lang/Object;
.source "CTVerifier.java"


# instance fields
.field private final store:Lcom/android/org/conscrypt/ct/CTLogStore;


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V
    .registers 2
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/CTLogStore;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    .line 38
    return-void
.end method

.method private getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .registers 11
    .param p1, "data"    # [B
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    if-eqz p1, :cond_6

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    .line 218
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 221
    :cond_b
    const-string/jumbo v1, "1.3.6.1.4.1.11129.2.4.5"

    .line 222
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    move-object v0, p1

    .line 221
    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/InternalUtil;->getOcspSingleExtension([BLjava/lang/String;JJ)[B

    move-result-object v7

    .line 223
    .local v7, "extData":[B
    if-nez v7, :cond_28

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 230
    :cond_28
    :try_start_28
    invoke-static {v7}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v0

    .line 231
    sget-object v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 228
    invoke-direct {p0, v0, v1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    :try_end_35
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_28 .. :try_end_35} :catch_37

    move-result-object v0

    return-object v0

    .line 232
    :catch_37
    move-exception v6

    .line 233
    .local v6, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    .registers 10
    .param p1, "data"    # [B
    .param p2, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_7

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 176
    :cond_7
    const/4 v5, 0x2

    .line 177
    const/4 v6, 0x2

    .line 176
    :try_start_9
    invoke-static {p1, v5, v6}, Lcom/android/org/conscrypt/ct/Serialization;->readList([BII)[[B
    :try_end_c
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_9 .. :try_end_c} :catch_22

    move-result-object v3

    .line 182
    .local v3, "sctList":[[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    const/4 v5, 0x0

    array-length v6, v3

    :goto_14
    if-ge v5, v6, :cond_28

    aget-object v1, v3, v5

    .line 185
    .local v1, "encodedSCT":[B
    :try_start_18
    invoke-static {v1, p2}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v2

    .line 186
    .local v2, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_18 .. :try_end_1f} :catch_29

    .line 183
    .end local v2    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 178
    .end local v1    # "encodedSCT":[B
    .end local v3    # "sctList":[[B
    .end local v4    # "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    :catch_22
    move-exception v0

    .line 179
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 192
    .end local v0    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    .restart local v3    # "sctList":[[B
    .restart local v4    # "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    :cond_28
    return-object v4

    .line 187
    .restart local v1    # "encodedSCT":[B
    :catch_29
    move-exception v0

    .restart local v0    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    goto :goto_1f
.end method

.method private getSCTsFromTLSExtension([B)Ljava/util/List;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .registers 6
    .param p1, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    const-string/jumbo v2, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p1, v2}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 245
    .local v1, "extData":[B
    if-nez v1, :cond_e

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 252
    :cond_e
    :try_start_e
    invoke-static {v1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v2

    .line 251
    invoke-static {v2}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v2

    .line 253
    sget-object v3, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 250
    invoke-direct {p0, v2, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    :try_end_1b
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_e .. :try_end_1b} :catch_1d

    move-result-object v2

    return-object v2

    .line 254
    :catch_1d
    move-exception v0

    .line 255
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .registers 7
    .param p2, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sct$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 157
    .local v0, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    new-instance v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-direct {v2, v0, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p2, v2}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    goto :goto_4

    .line 159
    .end local v0    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    :cond_1b
    return-void
.end method

.method private verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .registers 13
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 85
    return-void

    .line 88
    :cond_7
    const/4 v3, 0x0

    .line 89
    .local v3, "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    array-length v7, p2

    const/4 v8, 0x2

    if-lt v7, v8, :cond_16

    .line 90
    const/4 v7, 0x0

    aget-object v2, p2, v7

    .line 91
    .local v2, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v7, 0x1

    aget-object v1, p2, v7

    .line 94
    .local v1, "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_start_12
    invoke-static {v2, v1}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_15} :catch_1c

    move-result-object v3

    .line 100
    .end local v1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v3    # "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :cond_16
    :goto_16
    if-nez v3, :cond_1e

    .line 101
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 102
    return-void

    .line 95
    .restart local v1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v2    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .restart local v3    # "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :catch_1c
    move-exception v0

    .local v0, "e":Ljava/security/cert/CertificateException;
    goto :goto_16

    .line 105
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v1    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v3    # "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :cond_1e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "sct$iterator":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 106
    .local v4, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v4, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v6

    .line 107
    .local v6, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    new-instance v7, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-direct {v7, v4, v6}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v7}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    goto :goto_22

    .line 109
    .end local v4    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v6    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    :cond_3b
    return-void
.end method

.method private verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .registers 10
    .param p2, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 121
    return-void

    .line 126
    :cond_7
    :try_start_7
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;
    :try_end_a
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_a} :catch_28

    move-result-object v4

    .line 132
    .local v4, "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sct$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 133
    .local v1, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v1, v4}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v3

    .line 134
    .local v3, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    new-instance v5, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-direct {v5, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v5}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    goto :goto_f

    .line 127
    .end local v1    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v2    # "sct$iterator":Ljava/util/Iterator;
    .end local v3    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .end local v4    # "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :catch_28
    move-exception v0

    .line 128
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 129
    return-void

    .line 136
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "sct$iterator":Ljava/util/Iterator;
    .restart local v4    # "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :cond_2d
    return-void
.end method

.method private verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 6
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    .line 144
    .local v0, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_f

    .line 145
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v1

    .line 148
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ct/CTLogInfo;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .registers 10
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 43
    .local v2, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v3, 0x0

    .line 44
    .local v3, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 45
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_b

    .line 47
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_21
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    move-result-object v5

    return-object v5
.end method

.method public verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .registers 11
    .param p1, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 58
    array-length v5, p1

    if-nez v5, :cond_d

    .line 59
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Chain of certificates mustn\'t be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 62
    :cond_d
    aget-object v1, p1, v6

    .line 64
    .local v1, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    new-instance v3, Lcom/android/org/conscrypt/ct/CTVerificationResult;

    invoke-direct {v3}, Lcom/android/org/conscrypt/ct/CTVerificationResult;-><init>()V

    .line 65
    .local v3, "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromTLSExtension([B)Ljava/util/List;

    move-result-object v4

    .line 66
    .local v4, "tlsScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v4, v1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 68
    invoke-direct {p0, p3, p1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "ocspScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v2, v1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 71
    aget-object v5, p1, v6

    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v0, p1, v3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 73
    return-object v3
.end method
