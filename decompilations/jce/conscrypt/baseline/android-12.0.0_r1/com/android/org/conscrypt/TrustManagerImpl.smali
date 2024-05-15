.class public final Lcom/android/org/conscrypt/TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;,
        Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;
    }
.end annotation


# static fields
.field private static final greylist-max-o TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

.field private static blacklist defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final greylist-max-o acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blacklist blocklist:Lcom/android/org/conscrypt/CertBlocklist;

.field private greylist-max-o ctEnabledOverride:Z

.field private greylist-max-o ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

.field private greylist-max-o ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

.field private final greylist-max-o err:Ljava/lang/Exception;

.field private final greylist-max-o factory:Ljava/security/cert/CertificateFactory;

.field private blacklist hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

.field private final greylist-max-o intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private greylist-max-o pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final greylist-max-o rootKeyStore:Ljava/security/KeyStore;

.field private final greylist-max-o trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final blacklist trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

.field private final greylist-max-o validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 90
    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    .line 95
    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lcom/android/org/conscrypt/TrustManagerImpl$1;)V

    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    return-void
.end method

.method public constructor greylist test-api <init>(Ljava/security/KeyStore;)V
    .registers 3
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    .line 157
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .registers 4
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;

    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;)V

    .line 161
    return-void
.end method

.method public constructor blacklist test-api <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;)V
    .registers 5
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/ConscryptCertStore;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;Lcom/android/org/conscrypt/CertBlocklist;)V

    .line 167
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;Lcom/android/org/conscrypt/CertBlocklist;)V
    .registers 13
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lcom/android/org/conscrypt/CertBlocklist;

    .line 171
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;Lcom/android/org/conscrypt/CertBlocklist;Lcom/android/org/conscrypt/ct/CTLogStore;Lcom/android/org/conscrypt/ct/CTVerifier;Lcom/android/org/conscrypt/ct/CTPolicy;)V

    .line 172
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/ConscryptCertStore;Lcom/android/org/conscrypt/CertBlocklist;Lcom/android/org/conscrypt/ct/CTLogStore;Lcom/android/org/conscrypt/ct/CTVerifier;Lcom/android/org/conscrypt/ct/CTPolicy;)V
    .registers 21
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lcom/android/org/conscrypt/CertBlocklist;
    .param p5, "ctLogStore"    # Lcom/android/org/conscrypt/ct/CTLogStore;
    .param p6, "ctVerifier"    # Lcom/android/org/conscrypt/ct/CTVerifier;
    .param p7, "ctPolicy"    # Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 179
    move-object v1, p0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v3, 0x0

    .line 182
    .local v3, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v4, 0x0

    .line 183
    .local v4, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .line 184
    .local v5, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/ConscryptCertStore;
    const/4 v6, 0x0

    .line 185
    .local v6, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    const/4 v7, 0x0

    .line 186
    .local v7, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 188
    .local v8, "errLocal":Ljava/lang/Exception;
    :try_start_b
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    move-object v2, v0

    .line 189
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    move-object v3, v0

    .line 192
    const-string v0, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 193
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->supportsConscryptCertStore()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 194
    move-object v4, p1

    .line 196
    if-eqz p3, :cond_31

    move-object/from16 v0, p3

    goto :goto_35

    :cond_31
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->newDefaultCertStore()Lcom/android/org/conscrypt/ConscryptCertStore;

    move-result-object v0

    :goto_35
    move-object v5, v0

    .line 197
    const/4 v7, 0x0

    .line 198
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    move-object v6, v0

    .end local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v0, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    goto :goto_50

    .line 200
    .end local v0    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .restart local v6    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :cond_3e
    const/4 v4, 0x0

    .line 201
    move-object/from16 v5, p3

    .line 202
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v7, v0

    .line 203
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 204
    invoke-static {v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4f} :catch_51

    move-object v6, v0

    .line 209
    :goto_50
    goto :goto_53

    .line 207
    :catch_51
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    move-object v8, v0

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_53
    if-nez p4, :cond_5a

    .line 212
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->newDefaultBlocklist()Lcom/android/org/conscrypt/CertBlocklist;

    move-result-object v0

    .end local p4    # "blocklist":Lcom/android/org/conscrypt/CertBlocklist;
    .local v0, "blocklist":Lcom/android/org/conscrypt/CertBlocklist;
    goto :goto_5c

    .line 211
    .end local v0    # "blocklist":Lcom/android/org/conscrypt/CertBlocklist;
    .restart local p4    # "blocklist":Lcom/android/org/conscrypt/CertBlocklist;
    :cond_5a
    move-object/from16 v0, p4

    .line 214
    .end local p4    # "blocklist":Lcom/android/org/conscrypt/CertBlocklist;
    .restart local v0    # "blocklist":Lcom/android/org/conscrypt/CertBlocklist;
    :goto_5c
    if-nez p5, :cond_63

    .line 215
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->newDefaultLogStore()Lcom/android/org/conscrypt/ct/CTLogStore;

    move-result-object v9

    .end local p5    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    .local v9, "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    goto :goto_65

    .line 214
    .end local v9    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    .restart local p5    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    :cond_63
    move-object/from16 v9, p5

    .line 218
    .end local p5    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    .restart local v9    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    :goto_65
    if-nez p7, :cond_6c

    .line 219
    invoke-static {v9}, Lcom/android/org/conscrypt/Platform;->newDefaultPolicy(Lcom/android/org/conscrypt/ct/CTLogStore;)Lcom/android/org/conscrypt/ct/CTPolicy;

    move-result-object v10

    .end local p7    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    .local v10, "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    goto :goto_6e

    .line 218
    .end local v10    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    .restart local p7    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    :cond_6c
    move-object/from16 v10, p7

    .line 222
    .end local p7    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    .restart local v10    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    :goto_6e
    move-object v11, p2

    iput-object v11, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    .line 223
    iput-object v4, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 224
    iput-object v5, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    .line 225
    iput-object v2, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 226
    iput-object v3, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 227
    iput-object v6, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 228
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object v12, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 229
    iput-object v7, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 230
    iput-object v8, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 231
    iput-object v0, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->blocklist:Lcom/android/org/conscrypt/CertBlocklist;

    .line 232
    new-instance v12, Lcom/android/org/conscrypt/ct/CTVerifier;

    invoke-direct {v12, v9}, Lcom/android/org/conscrypt/ct/CTVerifier;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V

    iput-object v12, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    .line 233
    iput-object v10, v1, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 234
    return-void
.end method

.method private static greylist-max-o acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 5
    .param p0, "ks"    # Ljava/security/KeyStore;

    .line 248
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 250
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 252
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_20

    .line 253
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    :cond_20
    goto :goto_9

    .line 256
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_2d} :catch_2e

    return-object v1

    .line 257
    .end local v0    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_2e
    move-exception v0

    .line 258
    .local v0, "e":Ljava/security/KeyStoreException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private blacklist checkBlocklist(Ljava/security/cert/X509Certificate;)V
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blocklist:Lcom/android/org/conscrypt/CertBlocklist;

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/org/conscrypt/CertBlocklist;->isPublicKeyBlockListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_26

    .line 736
    :cond_f
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate blocklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_26
    :goto_26
    return-void
.end method

.method private greylist-max-o checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p3, "ocspData"    # [B
    .param p4, "tlsData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 742
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    .line 743
    invoke-virtual {v0, p2, p4, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    move-result-object v0

    .line 745
    .local v0, "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 746
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/X509Certificate;

    .line 745
    invoke-interface {v1, v0, p1, v2}, Lcom/android/org/conscrypt/ct/CTPolicy;->doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 750
    return-void

    .line 747
    :cond_1b
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Certificate chain does not conform to required transparency policy."

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .registers 16
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .param p4, "parameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "ocspData":[B
    const/4 v1, 0x0

    .line 409
    .local v1, "tlsSctData":[B
    const/4 v2, 0x0

    .line 410
    .local v2, "hostname":Ljava/lang/String;
    if-eqz p3, :cond_11

    .line 411
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 413
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v1

    .line 416
    :cond_11
    if-eqz p3, :cond_34

    if-eqz p4, :cond_34

    .line 417
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "identificationAlgorithm":Ljava/lang/String;
    const-string v4, "HTTPS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 419
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHttpsVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v4

    .line 420
    .local v4, "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    invoke-interface {v4, p1, v2, p3}, Lcom/android/org/conscrypt/ConscryptHostnameVerifier;->verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-eqz v5, :cond_2c

    goto :goto_34

    .line 421
    :cond_2c
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "No subjectAltNames on the certificate match"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 425
    .end local v3    # "identificationAlgorithm":Ljava/lang/String;
    .end local v4    # "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :cond_34
    :goto_34
    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, p2

    move-object v8, v2

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 23
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 484
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    if-eqz v10, :cond_5d

    array-length v0, v10

    if-eqz v0, :cond_5d

    if-eqz p4, :cond_5d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 487
    iget-object v0, v9, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-nez v0, :cond_55

    .line 490
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 491
    .local v11, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 492
    .local v12, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 496
    .local v13, "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x0

    aget-object v14, v10, v0

    .line 497
    .local v14, "leaf":Ljava/security/cert/X509Certificate;
    invoke-direct {v9, v14}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v15

    .line 498
    .local v15, "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v15, :cond_3b

    .line 499
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 502
    :cond_3b
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :goto_3e
    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v12

    move-object v7, v13

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 488
    .end local v11    # "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v12    # "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v13    # "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .end local v14    # "leaf":Ljava/security/cert/X509Certificate;
    .end local v15    # "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    :cond_55
    new-instance v0, Ljava/security/cert/CertificateException;

    iget-object v1, v9, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 485
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .registers 26
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 536
    .local p6, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .local p7, "trustAnchorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .local p8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    const/4 v0, 0x0

    .line 538
    .local v0, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 539
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    move-object v13, v1

    .local v1, "current":Ljava/security/cert/X509Certificate;
    goto :goto_30

    .line 541
    .end local v1    # "current":Ljava/security/cert/X509Certificate;
    :cond_1f
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    move-object v13, v1

    .line 545
    .local v13, "current":Ljava/security/cert/X509Certificate;
    :goto_30
    invoke-direct {v8, v13}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 548
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 549
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 558
    :cond_54
    invoke-direct {v8, v13}, Lcom/android/org/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v14

    .line 559
    .local v14, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v1, 0x0

    .line 560
    .local v1, "seenIssuer":Z
    invoke-static {v14}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "lastException":Ljava/security/cert/CertificateException;
    .end local v1    # "seenIssuer":Z
    .local v15, "lastException":Ljava/security/cert/CertificateException;
    .local v16, "seenIssuer":Z
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 561
    .local v1, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 563
    .local v3, "anchorCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 564
    goto :goto_64

    .line 566
    :cond_7c
    const/16 v16, 0x1

    .line 567
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :try_start_84
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_88
    .catch Ljava/security/cert/CertificateException; {:try_start_84 .. :try_end_88} :catch_89

    return-object v0

    .line 572
    :catch_89
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 573
    .local v0, "ex":Ljava/security/cert/CertificateException;
    move-object v15, v0

    .line 576
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 577
    invoke-interface {v12, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 578
    .end local v1    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v3    # "anchorCert":Ljava/security/cert/X509Certificate;
    goto :goto_64

    .line 583
    :cond_9a
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 584
    if-nez v16, :cond_b5

    .line 585
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 590
    :cond_b5
    throw v15

    .line 595
    :cond_b6
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_b8
    array-length v0, v9

    if-ge v1, v0, :cond_115

    .line 596
    aget-object v2, v9, v1

    .line 598
    .local v2, "candidateIssuer":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 599
    goto :goto_112

    .line 601
    :cond_c4
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 605
    :try_start_d2
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 606
    invoke-static {v2}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_d8
    .catch Ljava/security/cert/CertificateException; {:try_start_d2 .. :try_end_d8} :catch_f6

    .line 611
    nop

    .line 612
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :try_start_df
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_e3
    .catch Ljava/security/cert/CertificateException; {:try_start_df .. :try_end_e3} :catch_e4

    return-object v0

    .line 617
    :catch_e4
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 618
    .restart local v0    # "ex":Ljava/security/cert/CertificateException;
    nop

    .line 621
    .end local v15    # "lastException":Ljava/security/cert/CertificateException;
    .local v0, "lastException":Ljava/security/cert/CertificateException;
    invoke-interface {v12, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v15, v0

    goto :goto_112

    .line 607
    .end local v0    # "lastException":Ljava/security/cert/CertificateException;
    .restart local v15    # "lastException":Ljava/security/cert/CertificateException;
    :catch_f6
    move-exception v0

    .line 608
    .local v0, "ex":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unacceptable certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    .end local v15    # "lastException":Ljava/security/cert/CertificateException;
    .local v3, "lastException":Ljava/security/cert/CertificateException;
    move-object v15, v3

    .line 595
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    .end local v2    # "candidateIssuer":Ljava/security/cert/X509Certificate;
    .end local v3    # "lastException":Ljava/security/cert/CertificateException;
    .restart local v15    # "lastException":Ljava/security/cert/CertificateException;
    :cond_112
    :goto_112
    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 627
    .end local v1    # "i":I
    :cond_115
    iget-object v0, v8, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 628
    invoke-virtual {v0, v13}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    .line 629
    .local v1, "intermediateAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_123
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 630
    .local v3, "intermediate":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 632
    .local v4, "intermediateCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 633
    goto :goto_123

    .line 635
    :cond_13b
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    :try_start_141
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_145
    .catch Ljava/security/cert/CertificateException; {:try_start_141 .. :try_end_145} :catch_146

    return-object v0

    .line 640
    :catch_146
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 641
    .restart local v0    # "ex":Ljava/security/cert/CertificateException;
    move-object v15, v0

    .line 644
    .end local v0    # "ex":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 645
    invoke-interface {v12, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 646
    .end local v3    # "intermediate":Ljava/security/cert/TrustAnchor;
    .end local v4    # "intermediateCert":Ljava/security/cert/X509Certificate;
    goto :goto_123

    .line 649
    :cond_157
    if-eqz v15, :cond_15a

    .line 650
    throw v15

    .line 655
    :cond_15a
    iget-object v0, v8, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v10}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 656
    .local v0, "certPath":Ljava/security/cert/CertPath;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, "Trust anchor for certification path not found."

    invoke-direct {v3, v6, v4, v0, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 930
    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 931
    .local v0, "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    if-nez v1, :cond_11

    goto :goto_40

    .line 934
    :cond_11
    invoke-interface {v1, p1}, Lcom/android/org/conscrypt/ConscryptCertStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    .line 935
    .local v1, "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 936
    return-object v0

    .line 938
    :cond_1c
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 939
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 940
    .local v4, "storeCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, v4}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 941
    .end local v4    # "storeCert":Ljava/security/cert/X509Certificate;
    goto :goto_29

    .line 942
    :cond_3f
    return-object v2

    .line 932
    .end local v1    # "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_40
    :goto_40
    return-object v0
.end method

.method private greylist-max-o findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 951
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    .line 952
    .local v0, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v0, :cond_9

    .line 953
    return-object v0

    .line 955
    :cond_9
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/ConscryptCertStore;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    .line 957
    return-object v2

    .line 962
    :cond_f
    invoke-interface {v1, p1}, Lcom/android/org/conscrypt/ConscryptCertStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 963
    .local v1, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1b

    .line 970
    new-instance v3, Ljava/security/cert/TrustAnchor;

    invoke-direct {v3, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v3

    .line 972
    :cond_1b
    return-object v2
.end method

.method static declared-synchronized blacklist getDefaultHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 995
    :try_start_3
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 995
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static greylist-max-o getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .registers 4
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 289
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_7

    .line 292
    return-object v0

    .line 290
    :cond_7
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getHttpsVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    .line 1017
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    if-eqz v0, :cond_5

    .line 1018
    return-object v0

    .line 1020
    :cond_5
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->getDefaultHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 6
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    instance-of v1, p0, Lcom/android/org/conscrypt/ConscryptSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 432
    move-object v1, p0

    check-cast v1, Lcom/android/org/conscrypt/ConscryptSession;

    .line 433
    .local v1, "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    invoke-interface {v1}, Lcom/android/org/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 434
    .end local v1    # "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    goto :goto_3a

    .line 437
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getStatusResponses"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 438
    .local v1, "m_getResponses":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 439
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, "rawResponses":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2c

    .line 441
    move-object v4, v3

    check-cast v4, Ljava/util/List;
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_2b} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_2b} :catch_2d

    move-object v0, v4

    .line 448
    .end local v3    # "rawResponses":Ljava/lang/Object;
    :cond_2c
    goto :goto_3a

    .line 446
    .end local v1    # "m_getResponses":Ljava/lang/reflect/Method;
    :catch_2d
    move-exception v1

    .line 447
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 443
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v1

    .line 448
    nop

    .line 451
    :goto_3a
    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_4a

    .line 455
    :cond_43
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1

    .line 452
    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 7
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .line 459
    instance-of v0, p1, Lcom/android/org/conscrypt/ConscryptSession;

    if-eqz v0, :cond_c

    .line 460
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ConscryptSession;

    .line 461
    .local v0, "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    invoke-interface {v0}, Lcom/android/org/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v1

    return-object v1

    .line 464
    .end local v0    # "opensslSession":Lcom/android/org/conscrypt/ConscryptSession;
    :cond_c
    const/4 v0, 0x0

    .line 466
    .local v0, "data":[B
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPeerSignedCertificateTimestamp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 467
    .local v1, "m_getTlsSctData":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 468
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 469
    .local v2, "rawData":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_39

    .line 470
    move-object v3, v2

    check-cast v3, [B
    :try_end_2b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_2b} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2b} :catch_2d

    move-object v0, v3

    goto :goto_39

    .line 475
    .end local v1    # "m_getTlsSctData":Ljava/lang/reflect/Method;
    .end local v2    # "rawData":Ljava/lang/Object;
    :catch_2d
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 472
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v1

    .line 477
    :cond_39
    :goto_39
    nop

    .line 478
    return-object v0
.end method

.method static declared-synchronized blacklist setDefaultHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2
    .param p0, "verifier"    # Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    const-class v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    monitor-enter v0

    .line 986
    :try_start_3
    sput-object p0, Lcom/android/org/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 987
    monitor-exit v0

    return-void

    .line 985
    .end local p0    # "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private greylist-max-o setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .registers 9
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "ocspData"    # [B

    .line 756
    if-nez p3, :cond_3

    .line 757
    return-void

    .line 760
    :cond_3
    const/4 v0, 0x0

    .line 761
    .local v0, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v1, Ljava/util/ArrayList;

    .line 762
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 763
    .local v1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 764
    .local v3, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v4, v3, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_25

    .line 765
    move-object v0, v3

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    .line 766
    goto :goto_26

    .line 768
    .end local v3    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_25
    goto :goto_11

    .line 770
    :cond_26
    :goto_26
    if-nez v0, :cond_41

    .line 774
    :try_start_28
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_30
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_28 .. :try_end_30} :catch_3f

    move-object v0, v2

    .line 777
    nop

    .line 779
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    goto :goto_41

    .line 775
    :catch_3f
    move-exception v2

    .line 776
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    return-void

    .line 789
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_41
    :goto_41
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 790
    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 791
    return-void
.end method

.method private static greylist-max-o sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 799
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 800
    return-object p0

    .line 802
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 803
    .local v0, "sortedAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 804
    return-object v0
.end method

.method private static greylist-max-o trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 264
    .local v0, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 265
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 267
    :cond_18
    return-object v0
.end method

.method private greylist-max-o verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .registers 15
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .param p5, "ocspData"    # [B
    .param p6, "tlsSctData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 668
    .local p1, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const-string v0, "Chain validation failed"

    :try_start_2
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 671
    .local v1, "certPath":Ljava/security/cert/CertPath;
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_b8

    .line 676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v2, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 678
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;

    .line 679
    .local v5, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    nop

    .end local v5    # "anchor":Ljava/security/cert/TrustAnchor;
    goto :goto_1b

    .line 682
    :cond_30
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    if-eqz v4, :cond_37

    .line 683
    invoke-interface {v4, p3, v2}, Lcom/android/org/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    .line 686
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 687
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 688
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_3b

    .line 691
    :cond_4b
    if-nez p4, :cond_5c

    iget-boolean v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    if-nez v4, :cond_59

    if-eqz p3, :cond_5c

    .line 693
    invoke-static {p3}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 694
    :cond_59
    invoke-direct {p0, p3, v2, p5, p6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V

    .line 697
    :cond_5c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 699
    return-object v2

    .line 702
    :cond_63
    invoke-static {p1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V
    :try_end_66
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_66} :catch_c6

    .line 706
    :try_start_66
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 708
    .local v4, "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/TrustAnchor;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v6, Ljava/security/cert/PKIXParameters;

    invoke-direct {v6, v4}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 710
    .local v6, "params":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v6, v5}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 711
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 712
    .local v5, "endPointCert":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v6, v5, p5}, Lcom/android/org/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 713
    new-instance v7, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    invoke-direct {v7, p4, v5, v3}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$1;)V

    invoke-virtual {v6, v7}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 715
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v3, v1, v6}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_93
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_66 .. :try_end_93} :catch_b1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_66 .. :try_end_93} :catch_aa
    .catch Ljava/security/cert/CertificateException; {:try_start_66 .. :try_end_93} :catch_c6

    .line 720
    .end local v4    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v5    # "endPointCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "params":Ljava/security/cert/PKIXParameters;
    nop

    .line 724
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_95
    :try_start_95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_a9

    .line 725
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 727
    .end local v0    # "i":I
    :cond_a9
    return-object v2

    .line 718
    :catch_aa
    move-exception v3

    .line 719
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v4

    .line 716
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :catch_b1
    move-exception v3

    .line 717
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v4

    .line 672
    .end local v2    # "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :cond_b8
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Trust anchor for certification path not found."

    const/4 v5, -0x1

    invoke-direct {v2, v4, v3, v1, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v0, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .end local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local p3    # "host":Ljava/lang/String;
    .end local p4    # "clientAuth":Z
    .end local p5    # "ocspData":[B
    .end local p6    # "tlsSctData":[B
    throw v0
    :try_end_c6
    .catch Ljava/security/cert/CertificateException; {:try_start_95 .. :try_end_c6} :catch_c6

    .line 728
    .end local v1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p0    # "this":Lcom/android/org/conscrypt/TrustManagerImpl;
    .restart local p1    # "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local p2    # "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local p3    # "host":Ljava/lang/String;
    .restart local p4    # "clientAuth":Z
    .restart local p5    # "ocspData":[B
    .restart local p6    # "tlsSctData":[B
    :catch_c6
    move-exception v0

    .line 729
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rejected candidate cert chain due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 730
    throw v0
.end method


# virtual methods
.method public greylist-max-o checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 282
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 274
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 275
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 13
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    const/4 v1, 0x0

    .line 301
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v2, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_11

    .line 302
    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 303
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 304
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 306
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_11
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 307
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 313
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 314
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v6, :cond_13

    .line 317
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 318
    return-void

    .line 315
    :cond_13
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 334
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .registers 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 392
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 323
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 324
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    .line 376
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 381
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    .line 382
    return-void
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 977
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method blacklist getHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    return-object v0
.end method

.method public greylist-max-o test-api getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .registers 13
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    const/4 v1, 0x0

    .line 348
    .local v1, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v2, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_11

    .line 349
    move-object v2, p3

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 350
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 351
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    .line 353
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_11
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o test-api getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .registers 11
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 364
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 365
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v6, :cond_14

    .line 368
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 366
    :cond_14
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o test-api handleTrustStorageUpdate()V
    .registers 3

    .line 397
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_a

    .line 398
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    goto :goto_13

    .line 400
    :cond_a
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    .line 402
    :goto_13
    return-void
.end method

.method public greylist-max-o setCTEnabledOverride(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1024
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    .line 1025
    return-void
.end method

.method public greylist-max-o setCTPolicy(Lcom/android/org/conscrypt/ct/CTPolicy;)V
    .registers 2
    .param p1, "policy"    # Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 1034
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 1035
    return-void
.end method

.method public greylist-max-o setCTVerifier(Lcom/android/org/conscrypt/ct/CTVerifier;)V
    .registers 2
    .param p1, "verifier"    # Lcom/android/org/conscrypt/ct/CTVerifier;

    .line 1029
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    .line 1030
    return-void
.end method

.method blacklist setHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2
    .param p1, "verifier"    # Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    .line 1004
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->hostnameVerifier:Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    .line 1005
    return-void
.end method
