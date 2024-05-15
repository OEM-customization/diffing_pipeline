.class public Lcom/android/org/conscrypt/ct/CTVerifier;
.super Ljava/lang/Object;
.source "CTVerifier.java"


# instance fields
.field private final blacklist store:Lcom/android/org/conscrypt/ct/CTLogStore;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V
    .registers 2
    .param p1, "store"    # Lcom/android/org/conscrypt/ct/CTLogStore;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    .line 39
    return-void
.end method

.method private blacklist getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .registers 13
    .param p1, "data"    # [B
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 219
    if-eqz p1, :cond_3d

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    goto :goto_3d

    .line 223
    :cond_7
    const/4 v0, 0x0

    aget-object v1, p2, v0

    .line 224
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    aget-object v6, p2, v0

    const/4 v0, 0x1

    aget-object v1, p2, v0

    .line 225
    invoke-virtual {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v7

    aget-object v9, p2, v0

    .line 223
    const-string v3, "1.3.6.1.4.1.11129.2.4.5"

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->get_ocsp_single_extension([BLjava/lang/String;JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 226
    .local v0, "extData":[B
    if-nez v0, :cond_27

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 231
    :cond_27
    nop

    .line 233
    :try_start_28
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    .line 232
    invoke-static {v1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    sget-object v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->OCSP_RESPONSE:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 231
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v1
    :try_end_36
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_28 .. :try_end_36} :catch_37

    return-object v1

    .line 235
    :catch_37
    move-exception v1

    .line 236
    .local v1, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 220
    .end local v0    # "extData":[B
    .end local v1    # "e":Lcom/android/org/conscrypt/ct/SerializationException;
    :cond_3d
    :goto_3d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;
    .registers 8
    .param p0, "data"    # [B
    .param p1, "origin"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 172
    if-nez p0, :cond_7

    .line 173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 178
    :cond_7
    const/4 v0, 0x2

    :try_start_8
    invoke-static {p0, v0, v0}, Lcom/android/org/conscrypt/ct/Serialization;->readList([BII)[[B

    move-result-object v0
    :try_end_c
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_8 .. :try_end_c} :catch_26

    .line 182
    .local v0, "sctList":[[B
    nop

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 187
    .local v4, "encodedSCT":[B
    :try_start_18
    invoke-static {v4, p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->decode([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    move-result-object v5

    .line 188
    .local v5, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_18 .. :try_end_1f} :catch_21

    .line 191
    nop

    .end local v5    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    goto :goto_22

    .line 189
    :catch_21
    move-exception v5

    .line 185
    .end local v4    # "encodedSCT":[B
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 194
    :cond_25
    return-object v1

    .line 180
    .end local v0    # "sctList":[[B
    .end local v1    # "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    :catch_26
    move-exception v0

    .line 181
    .local v0, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getSCTsFromTLSExtension([B)Ljava/util/List;
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->TLS_EXTENSION:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;
    .registers 5
    .param p1, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;"
        }
    .end annotation

    .line 247
    const-string v0, "1.3.6.1.4.1.11129.2.4.2"

    invoke-virtual {p1, v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 248
    .local v0, "extData":[B
    if-nez v0, :cond_d

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 253
    :cond_d
    nop

    .line 255
    :try_start_e
    invoke-static {v0}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    .line 254
    invoke-static {v1}, Lcom/android/org/conscrypt/ct/Serialization;->readDEROctetString([B)[B

    move-result-object v1

    sget-object v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;->EMBEDDED:Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;

    .line 253
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromSCTList([BLcom/android/org/conscrypt/ct/SignedCertificateTimestamp$Origin;)Ljava/util/List;

    move-result-object v1
    :try_end_1c
    .catch Lcom/android/org/conscrypt/ct/SerializationException; {:try_start_e .. :try_end_1c} :catch_1d

    return-object v1

    .line 257
    :catch_1d
    move-exception v1

    .line 258
    .local v1, "e":Lcom/android/org/conscrypt/ct/SerializationException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private blacklist markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .registers 7
    .param p2, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .line 157
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 158
    .local v1, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    new-instance v2, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    sget-object v3, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    invoke-direct {v2, v1, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p2, v2}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    .line 159
    .end local v1    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    goto :goto_4

    .line 160
    :cond_1b
    return-void
.end method

.method private blacklist verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .registers 9
    .param p2, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;[",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .line 85
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    return-void

    .line 89
    :cond_7
    const/4 v0, 0x0

    .line 90
    .local v0, "precertEntry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_19

    .line 91
    const/4 v1, 0x0

    aget-object v1, p2, v1

    .line 92
    .local v1, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v2, 0x1

    aget-object v2, p2, v2

    .line 95
    .local v2, "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_start_12
    invoke-static {v1, v2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForPrecertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v3
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_12 .. :try_end_16} :catch_18

    move-object v0, v3

    .line 98
    goto :goto_19

    .line 96
    :catch_18
    move-exception v3

    .line 101
    .end local v1    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "issuer":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :cond_19
    :goto_19
    if-nez v0, :cond_1f

    .line 102
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 103
    return-void

    .line 106
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 107
    .local v2, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v2, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v3

    .line 108
    .local v3, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    new-instance v4, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v4}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    .line 109
    .end local v2    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v3    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    goto :goto_23

    .line 110
    :cond_3c
    return-void
.end method

.method private blacklist verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V
    .registers 9
    .param p2, "leaf"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p3, "result"    # Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;",
            ">;",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            "Lcom/android/org/conscrypt/ct/CTVerificationResult;",
            ")V"
        }
    .end annotation

    .line 121
    .local p1, "scts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    return-void

    .line 127
    :cond_7
    :try_start_7
    invoke-static {p2}, Lcom/android/org/conscrypt/ct/CertificateEntry;->createForX509Certificate(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/ct/CertificateEntry;

    move-result-object v0
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_b} :catch_2a

    .line 131
    .local v0, "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    nop

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;

    .line 134
    .local v2, "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    invoke-direct {p0, v2, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v3

    .line 135
    .local v3, "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    new-instance v4, Lcom/android/org/conscrypt/ct/VerifiedSCT;

    invoke-direct {v4, v2, v3}, Lcom/android/org/conscrypt/ct/VerifiedSCT;-><init>(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;)V

    invoke-virtual {p3, v4}, Lcom/android/org/conscrypt/ct/CTVerificationResult;->add(Lcom/android/org/conscrypt/ct/VerifiedSCT;)V

    .line 136
    .end local v2    # "sct":Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .end local v3    # "status":Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    goto :goto_10

    .line 137
    :cond_29
    return-void

    .line 128
    .end local v0    # "x509Entry":Lcom/android/org/conscrypt/ct/CertificateEntry;
    :catch_2a
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, p1, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->markSCTsAsInvalid(Ljava/util/List;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 130
    return-void
.end method

.method private blacklist verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;
    .registers 5
    .param p1, "sct"    # Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "certEntry"    # Lcom/android/org/conscrypt/ct/CertificateEntry;

    .line 144
    iget-object v0, p0, Lcom/android/org/conscrypt/ct/CTVerifier;->store:Lcom/android/org/conscrypt/ct/CTLogStore;

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/org/conscrypt/ct/CTLogStore;->getKnownLog([B)Lcom/android/org/conscrypt/ct/CTLogInfo;

    move-result-object v0

    .line 145
    .local v0, "log":Lcom/android/org/conscrypt/ct/CTLogInfo;
    if-nez v0, :cond_f

    .line 146
    sget-object v1, Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    return-object v1

    .line 149
    :cond_f
    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/ct/CTLogInfo;->verifySingleSCT(Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;Lcom/android/org/conscrypt/ct/CertificateEntry;)Lcom/android/org/conscrypt/ct/VerifiedSCT$Status;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .registers 10
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 43
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 44
    .local v0, "certs":[Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    const/4 v1, 0x0

    .line 45
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 46
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v0, v1

    .line 47
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    move v1, v4

    goto :goto_b

    .line 48
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_21
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    move-result-object v2

    return-object v2
.end method

.method public blacklist verifySignedCertificateTimestamps([Lcom/android/org/conscrypt/OpenSSLX509Certificate;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .registers 9
    .param p1, "chain"    # [Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .param p2, "tlsData"    # [B
    .param p3, "ocspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 59
    array-length v0, p1

    if-eqz v0, :cond_23

    .line 63
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 65
    .local v1, "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/ct/CTVerificationResult;

    invoke-direct {v2}, Lcom/android/org/conscrypt/ct/CTVerificationResult;-><init>()V

    .line 66
    .local v2, "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromTLSExtension([B)Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "tlsScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v3, v1, v2}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 69
    invoke-direct {p0, p3, p1}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromOCSPResponse([B[Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v4

    .line 70
    .local v4, "ocspScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v4, v1, v2}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyExternalSCTs(Ljava/util/List;Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 72
    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;->getSCTsFromX509Extension(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    invoke-direct {p0, v0, p1, v2}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifyEmbeddedSCTs(Ljava/util/List;[Lcom/android/org/conscrypt/OpenSSLX509Certificate;Lcom/android/org/conscrypt/ct/CTVerificationResult;)V

    .line 74
    return-object v2

    .line 60
    .end local v0    # "embeddedScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    .end local v1    # "leaf":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .end local v2    # "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    .end local v3    # "tlsScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    .end local v4    # "ocspScts":Ljava/util/List;, "Ljava/util/List<Lcom/android/org/conscrypt/ct/SignedCertificateTimestamp;>;"
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Chain of certificates mustn\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
