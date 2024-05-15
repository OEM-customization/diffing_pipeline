.class public Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;,
        Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/org/bouncycastle/util/Selector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private final completeCRLEnabled:Z

.field private final deltaCRLIndicator:Z

.field private final issuingDistributionPoint:[B

.field private final issuingDistributionPointEnabled:Z

.field private final maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V
    .registers 3
    .param p1, "baseBuilder"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 153
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 156
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    .line 157
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    .line 158
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get5(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 159
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get3(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    .line 160
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-get4(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .registers 3
    .param p1, "baseBuilder"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .param p2, "-this1"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    .prologue
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V

    return-void
.end method

.method public static getCRLs(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .registers 3
    .param p0, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 265
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    return-object p0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 307
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_f

    .line 309
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 312
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIssuingDistributionPoint()[B
    .registers 2

    .prologue
    .line 302
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 286
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .registers 2

    .prologue
    .line 276
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 260
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .registers 2

    .prologue
    .line 175
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 180
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .registers 10
    .param p1, "obj"    # Ljava/security/cert/CRL;

    .prologue
    .local p0, "this":Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;, "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    const/4 v7, 0x0

    .line 182
    instance-of v5, p1, Ljava/security/cert/X509CRL;

    if-nez v5, :cond_c

    .line 184
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v5, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    return v5

    :cond_c
    move-object v1, p1

    .line 187
    check-cast v1, Ljava/security/cert/X509CRL;

    .line 188
    .local v1, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 192
    .local v2, "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_start_10
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, "bytes":[B
    if-eqz v0, :cond_28

    .line 195
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_27} :catch_31

    move-result-object v2

    .line 202
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :cond_28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 204
    if-nez v2, :cond_33

    .line 206
    return v7

    .line 199
    .end local v0    # "bytes":[B
    .restart local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    :catch_31
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    return v7

    .line 209
    .end local v2    # "dci":Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    :cond_33
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 211
    if-eqz v2, :cond_3c

    .line 213
    return v7

    .line 216
    :cond_3c
    if-eqz v2, :cond_50

    .line 219
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v5, :cond_50

    .line 221
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_50

    .line 223
    return v7

    .line 227
    :cond_50
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v5, :cond_6e

    .line 230
    sget-object v5, Lcom/android/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {v1, v5}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 232
    .local v4, "idp":[B
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v5, :cond_65

    .line 234
    if-eqz v4, :cond_6e

    .line 236
    return v7

    .line 241
    :cond_65
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 243
    return v7

    .line 248
    .end local v4    # "idp":[B
    :cond_6e
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v5, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    return v5
.end method
