.class Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLInternal.java"


# instance fields
.field private final blacklist encoding:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[B)V
    .registers 7
    .param p1, "bcHelper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/org/bouncycastle/asn1/x509/CertificateList;
    .param p3, "sigAlgName"    # Ljava/lang/String;
    .param p4, "sigAlgParams"    # [B
    .param p5, "isIndirect"    # Z
    .param p6, "encoding"    # [B

    .line 16
    invoke-direct/range {p0 .. p5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 18
    iput-object p6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    if-eqz v0, :cond_5

    .line 28
    return-object v0

    .line 25
    :cond_5
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-direct {v0}, Ljava/security/cert/CRLException;-><init>()V

    throw v0
.end method
