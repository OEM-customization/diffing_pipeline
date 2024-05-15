.class public Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
.super Ljava/security/cert/X509CRLSelector;
.source "X509CRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field private attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 31
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 33
    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 35
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 23
    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    .registers 5
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;

    .prologue
    .line 205
    if-nez p0, :cond_b

    .line 207
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 208
    const-string/jumbo v3, "cannot create from null selector"

    .line 207
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_b
    new-instance v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 211
    .local v0, "cs":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 212
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 215
    :try_start_1e
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuerNames(Ljava/util/Collection;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_3b

    .line 222
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setIssuers(Ljava/util/Collection;)V

    .line 223
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 224
    invoke-virtual {p0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 225
    return-object v0

    .line 218
    :catch_3b
    move-exception v1

    .line 220
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 230
    invoke-static {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->getInstance(Ljava/security/cert/X509CRLSelector;)Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;

    move-result-object v0

    .line 231
    .local v0, "sel":Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 232
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 233
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 234
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 235
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    iput-boolean v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 236
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 237
    return-object v0
.end method

.method public getAttrCertificateChecking()Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 94
    instance-of v5, p1, Ljava/security/cert/X509CRL;

    if-nez v5, :cond_6

    .line 96
    return v7

    :cond_6
    move-object v1, p1

    .line 98
    check-cast v1, Ljava/security/cert/X509CRL;

    .line 99
    .local v1, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 103
    .local v2, "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_a
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    .local v0, "bytes":[B
    if-eqz v0, :cond_1e

    .line 106
    invoke-static {v0}, Lcom/android/org/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_27

    move-result-object v2

    .line 114
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 116
    if-nez v2, :cond_29

    .line 118
    return v7

    .line 111
    .end local v0    # "bytes":[B
    .restart local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_27
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    return v7

    .line 121
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    :cond_29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 123
    if-eqz v2, :cond_32

    .line 125
    return v7

    .line 128
    :cond_32
    if-eqz v2, :cond_46

    .line 131
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v5, :cond_46

    .line 133
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 135
    return v7

    .line 139
    :cond_46
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v5, :cond_64

    .line 142
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 144
    .local v4, "idp":[B
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v5, :cond_5b

    .line 146
    if-eqz v4, :cond_64

    .line 148
    return v7

    .line 153
    :cond_5b
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_64

    .line 155
    return v7

    .line 160
    .end local v4    # "idp":[B
    :cond_64
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-super {p0, p1}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    return v5
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .registers 3
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAttrCertificateChecking(Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;)V
    .registers 2
    .param p1, "attrCert"    # Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->attrCertChecking:Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .line 79
    return-void
.end method

.method public setCompleteCRLEnabled(Z)V
    .registers 2
    .param p1, "completeCRLEnabled"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->completeCRLEnabled:Z

    .line 263
    return-void
.end method

.method public setDeltaCRLIndicatorEnabled(Z)V
    .registers 2
    .param p1, "deltaCRLIndicator"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->deltaCRLIndicator:Z

    .line 193
    return-void
.end method

.method public setIssuingDistributionPoint([B)V
    .registers 3
    .param p1, "issuingDistributionPoint"    # [B

    .prologue
    .line 328
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPoint:[B

    .line 329
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .registers 2
    .param p1, "issuingDistributionPointEnabled"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 63
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/org/bouncycastle/x509/X509CRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 289
    return-void
.end method
