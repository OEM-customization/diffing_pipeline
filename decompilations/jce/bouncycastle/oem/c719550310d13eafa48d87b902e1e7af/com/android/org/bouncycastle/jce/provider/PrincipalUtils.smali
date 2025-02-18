.class Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;
.super Ljava/lang/Object;
.source "PrincipalUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 32
    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 3
    .param p0, "cert"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    .line 46
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0

    .line 50
    .restart local p0    # "cert":Ljava/lang/Object;
    :cond_b
    check-cast p0, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;

    .end local p0    # "cert":Ljava/lang/Object;
    invoke-interface {p0}, Lcom/android/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method
