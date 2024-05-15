.class public abstract Ljava/security/cert/X509CRL;
.super Ljava/security/cert/CRL;
.source "X509CRL.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private transient issuerPrincipal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 120
    const-string/jumbo v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CRL;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 136
    if-ne p0, p1, :cond_5

    .line 137
    const/4 v3, 0x1

    return v3

    .line 139
    :cond_5
    instance-of v3, p1, Ljava/security/cert/X509CRL;

    if-nez v3, :cond_a

    .line 140
    return v4

    .line 143
    :cond_a
    :try_start_a
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v2

    .line 144
    .local v2, "thisCRL":[B
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v1

    .line 146
    .local v1, "otherCRL":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_17
    .catch Ljava/security/cert/CRLException; {:try_start_a .. :try_end_17} :catch_19

    move-result v3

    return v3

    .line 147
    .end local v1    # "otherCRL":[B
    .end local v2    # "thisCRL":[B
    :catch_19
    move-exception v0

    .line 148
    .local v0, "e":Ljava/security/cert/CRLException;
    return v4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_a

    .line 325
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 327
    :cond_a
    iget-object v0, p0, Ljava/security/cert/X509CRL;->issuerPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public abstract getNextUpdate()Ljava/util/Date;
.end method

.method public abstract getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 5
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 383
    .local v0, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 384
    .local v1, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 385
    const/4 v2, 0x0

    return-object v2

    .line 387
    :cond_10
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v2

    return-object v2
.end method

.method public abstract getRevokedCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSignature()[B
.end method

.method public abstract getTBSCertList()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getThisUpdate()Ljava/util/Date;
.end method

.method public abstract getVersion()I
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 159
    const/4 v3, 0x0

    .line 161
    .local v3, "retval":I
    :try_start_1
    invoke-static {p0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal(Ljava/security/cert/X509CRL;)[B

    move-result-object v0

    .line 162
    .local v0, "crlData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_6
    array-length v4, v0

    if-ge v2, v4, :cond_10

    .line 163
    aget-byte v4, v0, v2
    :try_end_b
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_b} :catch_11

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 165
    :cond_10
    return v3

    .line 166
    .end local v0    # "crlData":[B
    .end local v2    # "i":I
    :catch_11
    move-exception v1

    .line 167
    .local v1, "e":Ljava/security/cert/CRLException;
    return v3
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 252
    const-string/jumbo v1, "X509CRL instance doesn\'t not support X509CRL#verify(PublicKey, Provider)"

    .line 251
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
