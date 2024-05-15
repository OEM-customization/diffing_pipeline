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
.field private static final TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blacklist:Lcom/android/org/conscrypt/CertBlacklist;

.field private ctEnabledOverride:Z

.field private ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

.field private ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private final intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private pinManager:Lcom/android/org/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 96
    new-instance v0, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;)V

    .line 95
    sput-object v0, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 3
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;)V
    .registers 4
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;)V
    .registers 5
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;)V
    .registers 13
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p4, "blacklist"    # Lcom/android/org/conscrypt/CertBlacklist;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    .line 166
    invoke-direct/range {v0 .. v7}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;Lcom/android/org/conscrypt/ct/CTLogStore;Lcom/android/org/conscrypt/ct/CTVerifier;Lcom/android/org/conscrypt/ct/CTPolicy;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lcom/android/org/conscrypt/CertPinManager;Lcom/android/org/conscrypt/TrustedCertificateStore;Lcom/android/org/conscrypt/CertBlacklist;Lcom/android/org/conscrypt/ct/CTLogStore;Lcom/android/org/conscrypt/ct/CTVerifier;Lcom/android/org/conscrypt/ct/CTPolicy;)V
    .registers 22
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lcom/android/org/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p4, "blacklist"    # Lcom/android/org/conscrypt/CertBlacklist;
    .param p5, "ctLogStore"    # Lcom/android/org/conscrypt/ct/CTLogStore;
    .param p6, "ctVerifier"    # Lcom/android/org/conscrypt/ct/CTVerifier;
    .param p7, "ctPolicy"    # Lcom/android/org/conscrypt/ct/CTPolicy;

    .prologue
    .line 172
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 175
    const/4 v11, 0x0

    .line 176
    .local v11, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v5, 0x0

    .line 177
    .local v5, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v6, 0x0

    .line 178
    .local v6, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v9, 0x0

    .line 179
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    const/4 v7, 0x0

    .line 180
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    const/4 v2, 0x0

    .line 181
    .local v2, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 183
    .local v4, "errLocal":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v12, "PKIX"

    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v11

    .line 184
    .local v11, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const-string/jumbo v12, "X509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 187
    .local v5, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const-string/jumbo v12, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 188
    move-object v6, p1

    .line 190
    .local v6, "rootKeyStoreLocal":Ljava/security/KeyStore;
    if-eqz p3, :cond_75

    move-object/from16 v9, p3

    .line 191
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :goto_2a
    const/4 v2, 0x0

    .line 192
    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v8}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_8e

    .local v8, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v7, v8

    .line 205
    .end local v2    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .end local v4    # "errLocal":Ljava/lang/Exception;
    .end local v5    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .end local v6    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .end local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v8    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .end local v9    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v11    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    :goto_31
    if-nez p4, :cond_37

    .line 206
    invoke-static {}, Lcom/android/org/conscrypt/CertBlacklist;->getDefault()Lcom/android/org/conscrypt/CertBlacklist;

    move-result-object p4

    .line 208
    :cond_37
    if-nez p5, :cond_3e

    .line 209
    new-instance p5, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;

    .end local p5    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    invoke-direct/range {p5 .. p5}, Lcom/android/org/conscrypt/ct/CTLogStoreImpl;-><init>()V

    .line 212
    .restart local p5    # "ctLogStore":Lcom/android/org/conscrypt/ct/CTLogStore;
    :cond_3e
    if-nez p7, :cond_4a

    .line 213
    new-instance p7, Lcom/android/org/conscrypt/ct/CTPolicyImpl;

    .end local p7    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    const/4 v12, 0x2

    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v12}, Lcom/android/org/conscrypt/ct/CTPolicyImpl;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;I)V

    .line 216
    .restart local p7    # "ctPolicy":Lcom/android/org/conscrypt/ct/CTPolicy;
    :cond_4a
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    .line 217
    iput-object v6, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 218
    iput-object v9, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 219
    iput-object v11, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 220
    iput-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 221
    iput-object v7, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 222
    new-instance v12, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-direct {v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object v12, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    .line 223
    iput-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 224
    iput-object v4, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 225
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blacklist:Lcom/android/org/conscrypt/CertBlacklist;

    .line 226
    new-instance v12, Lcom/android/org/conscrypt/ct/CTVerifier;

    move-object/from16 v0, p5

    invoke-direct {v12, v0}, Lcom/android/org/conscrypt/ct/CTVerifier;-><init>(Lcom/android/org/conscrypt/ct/CTLogStore;)V

    iput-object v12, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    .line 227
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 228
    return-void

    .line 190
    .restart local v2    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "errLocal":Ljava/lang/Exception;
    .restart local v5    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .restart local v6    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .restart local v7    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .restart local v11    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    :cond_75
    :try_start_75
    new-instance v10, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v10}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .local v10, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    move-object v9, v10

    .end local v10    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    goto :goto_2a

    .line 194
    .local v6, "rootKeyStoreLocal":Ljava/security/KeyStore;
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_7c
    const/4 v6, 0x0

    .line 195
    move-object/from16 v9, p3

    .line 196
    .local v9, "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 198
    .local v2, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    new-instance v8, Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/org/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8c} :catch_8e

    .restart local v8    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    move-object v7, v8

    .line 197
    .end local v8    # "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    goto :goto_31

    .line 201
    .end local v2    # "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    .end local v5    # "factoryLocal":Ljava/security/cert/CertificateFactory;
    .end local v6    # "rootKeyStoreLocal":Ljava/security/KeyStore;
    .end local v9    # "trustedCertificateStoreLocal":Lcom/android/org/conscrypt/TrustedCertificateStore;
    .end local v11    # "validatorLocal":Ljava/security/cert/CertPathValidator;
    .local v7, "trustedCertificateIndexLocal":Lcom/android/org/conscrypt/TrustedCertificateIndex;
    :catch_8e
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    move-object v4, v3

    .local v4, "errLocal":Ljava/lang/Exception;
    goto :goto_31
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .registers 7
    .param p0, "ks"    # Ljava/security/KeyStore;

    .prologue
    .line 241
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v4, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 243
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 245
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_9

    .line 246
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_9

    .line 250
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_21
    move-exception v2

    .line 251
    .local v2, "e":Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    return-object v5

    .line 249
    .end local v2    # "e":Ljava/security/KeyStoreException;
    .restart local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_26
    :try_start_26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_32
    .catch Ljava/security/KeyStoreException; {:try_start_26 .. :try_end_32} :catch_21

    return-object v5
.end method

.method private checkBlacklist(Ljava/security/cert/X509Certificate;)V
    .registers 5
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->blacklist:Lcom/android/org/conscrypt/CertBlacklist;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/CertBlacklist;->isPublicKeyBlackListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 720
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Certificate blacklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_26
    return-void
.end method

.method private checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p3, "ocspData"    # [B
    .param p4, "tlsData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 727
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    invoke-virtual {v1, p2, p4, p3}, Lcom/android/org/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lcom/android/org/conscrypt/ct/CTVerificationResult;

    move-result-object v0

    .line 729
    .local v0, "result":Lcom/android/org/conscrypt/ct/CTVerificationResult;
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 730
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 729
    invoke-interface {v2, v0, p1, v1}, Lcom/android/org/conscrypt/ct/CTPolicy;->doesResultConformToPolicy(Lcom/android/org/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 731
    new-instance v1, Ljava/security/cert/CertificateException;

    .line 732
    const-string/jumbo v2, "Certificate chain does not conform to required transparency policy."

    .line 731
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_23
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .registers 15
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, "ocspData":[B
    const/4 v3, 0x0

    .line 401
    .local v3, "tlsSctData":[B
    const/4 v5, 0x0

    .line 402
    .local v5, "hostname":Ljava/lang/String;
    if-eqz p3, :cond_11

    .line 403
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "hostname":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v2

    .line 405
    .local v2, "ocspData":[B
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v3

    .line 408
    .end local v2    # "ocspData":[B
    .end local v3    # "tlsSctData":[B
    .end local v5    # "hostname":Ljava/lang/String;
    :cond_11
    if-eqz p3, :cond_3d

    if-eqz p4, :cond_3d

    .line 409
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 410
    .local v7, "identificationAlgorithm":Ljava/lang/String;
    if-eqz v7, :cond_3d

    .line 411
    const-string/jumbo v0, "HTTPS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 410
    if-eqz v0, :cond_3d

    .line 412
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v8

    .line 413
    .local v8, "verifier":Ljavax/net/ssl/HostnameVerifier;
    invoke-interface {v8, v5, p3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 414
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "No subjectAltNames on the certificate match"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "identificationAlgorithm":Ljava/lang/String;
    .end local v8    # "verifier":Ljavax/net/ssl/HostnameVerifier;
    :cond_3d
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p5

    .line 418
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 18
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 474
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_e

    .line 475
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_e
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v0, :cond_22

    .line 478
    new-instance v0, Ljava/security/cert/CertificateException;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 480
    :cond_22
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v6, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v7, "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x0

    aget-object v9, p1, v0

    .line 487
    .local v9, "leaf":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v10

    .line 488
    .local v10, "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v10, :cond_54

    .line 489
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    :goto_44
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 495
    invoke-direct/range {v0 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 492
    :cond_54
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44
.end method

.method private checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .registers 33
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 526
    .local p6, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .local p7, "trustAnchorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .local p8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/16 v22, 0x0

    .line 528
    .local v22, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 529
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 535
    .local v15, "current":Ljava/security/cert/X509Certificate;
    :goto_16
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    .line 538
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 539
    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 531
    .end local v15    # "current":Ljava/security/cert/X509Certificate;
    :cond_3c
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v15

    .restart local v15    # "current":Ljava/security/cert/X509Certificate;
    goto :goto_16

    .line 548
    :cond_4f
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/org/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v12

    .line 549
    .local v12, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/16 v23, 0x0

    .line 550
    .local v23, "seenIssuer":Z
    invoke-static {v12}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v22    # "lastException":Ljava/security/cert/CertificateException;
    .local v10, "anchor$iterator":Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/TrustAnchor;

    .line 551
    .local v9, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v11

    .line 553
    .local v11, "anchorCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 556
    const/16 v23, 0x1

    .line 557
    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :try_start_83
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_86
    .catch Ljava/security/cert/CertificateException; {:try_start_83 .. :try_end_86} :catch_88

    move-result-object v2

    return-object v2

    .line 562
    :catch_88
    move-exception v16

    .line 563
    .local v16, "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v22, v16

    .line 566
    .local v22, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    move-object/from16 v0, p8

    invoke-interface {v0, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 573
    .end local v9    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v11    # "anchorCert":Ljava/security/cert/X509Certificate;
    .end local v16    # "ex":Ljava/security/cert/CertificateException;
    .end local v22    # "lastException":Ljava/security/cert/CertificateException;
    :cond_9c
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 574
    if-nez v23, :cond_b7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 575
    invoke-direct/range {v2 .. v8}, Lcom/android/org/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 580
    :cond_b7
    throw v22

    .line 585
    :cond_b8
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_ba
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_128

    .line 586
    aget-object v13, p1, v17

    .line 588
    .local v13, "candidateIssuer":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 585
    :cond_cb
    :goto_cb
    add-int/lit8 v17, v17, 0x1

    goto :goto_ba

    .line 591
    :cond_ce
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 595
    :try_start_dc
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 596
    invoke-static {v13}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_e2
    .catch Ljava/security/cert/CertificateException; {:try_start_dc .. :try_end_e2} :catch_f1

    .line 602
    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :try_start_ec
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_ef
    .catch Ljava/security/cert/CertificateException; {:try_start_ec .. :try_end_ef} :catch_114

    move-result-object v2

    return-object v2

    .line 597
    :catch_f1
    move-exception v16

    .line 598
    .restart local v16    # "ex":Ljava/security/cert/CertificateException;
    new-instance v22, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unacceptable certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 599
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 598
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    .restart local v22    # "lastException":Ljava/security/cert/CertificateException;
    goto :goto_cb

    .line 607
    .end local v16    # "ex":Ljava/security/cert/CertificateException;
    .end local v22    # "lastException":Ljava/security/cert/CertificateException;
    :catch_114
    move-exception v16

    .line 608
    .restart local v16    # "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v22, v16

    .line 611
    .restart local v22    # "lastException":Ljava/security/cert/CertificateException;
    move-object/from16 v0, p8

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_cb

    .line 618
    .end local v13    # "candidateIssuer":Ljava/security/cert/X509Certificate;
    .end local v16    # "ex":Ljava/security/cert/CertificateException;
    .end local v22    # "lastException":Ljava/security/cert/CertificateException;
    :cond_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, v15}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v20

    .line 619
    .local v20, "intermediateAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-static/range {v20 .. v20}, Lcom/android/org/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "intermediate$iterator":Ljava/util/Iterator;
    :cond_138
    :goto_138
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/TrustAnchor;

    .line 620
    .local v18, "intermediate":Ljava/security/cert/TrustAnchor;
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v21

    .line 622
    .local v21, "intermediateCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_138

    .line 625
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 626
    move-object/from16 v0, p6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :try_start_160
    invoke-direct/range {p0 .. p8}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_163
    .catch Ljava/security/cert/CertificateException; {:try_start_160 .. :try_end_163} :catch_165

    move-result-object v2

    return-object v2

    .line 630
    :catch_165
    move-exception v16

    .line 631
    .restart local v16    # "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v22, v16

    .line 634
    .restart local v22    # "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_138

    .line 639
    .end local v16    # "ex":Ljava/security/cert/CertificateException;
    .end local v18    # "intermediate":Ljava/security/cert/TrustAnchor;
    .end local v21    # "intermediateCert":Ljava/security/cert/X509Certificate;
    .end local v22    # "lastException":Ljava/security/cert/CertificateException;
    :cond_17b
    if-eqz v22, :cond_17e

    .line 640
    throw v22

    .line 645
    :cond_17e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v14

    .line 646
    .local v14, "certPath":Ljava/security/cert/CertPath;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    .line 647
    const-string/jumbo v4, "Trust anchor for certification path not found."

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 646
    invoke-direct {v3, v4, v5, v14, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 914
    .local v0, "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v5, :cond_11

    .line 915
    :cond_10
    return-object v0

    .line 917
    :cond_11
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v5, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v2

    .line 918
    .local v2, "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 919
    return-object v0

    .line 921
    :cond_1e
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 922
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "storeCert$iterator":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 923
    .local v3, "storeCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, v3}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 925
    .end local v3    # "storeCert":Ljava/security/cert/X509Certificate;
    :cond_41
    return-object v1
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .registers 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 934
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    .line 935
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_a

    .line 936
    return-object v1

    .line 938
    :cond_a
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v2, :cond_f

    .line 940
    return-object v3

    .line 945
    :cond_f
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 946
    .local v0, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1d

    .line 953
    new-instance v2, Ljava/security/cert/TrustAnchor;

    invoke-direct {v2, v0, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v2

    .line 955
    :cond_1d
    return-object v3
.end method

.method private static getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .registers 4
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 281
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_f

    .line 282
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_f
    return-object v0
.end method

.method private getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 14
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 422
    const/4 v4, 0x0

    .line 423
    .local v4, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    instance-of v7, p1, Lcom/android/org/conscrypt/ActiveSession;

    if-eqz v7, :cond_17

    move-object v5, p1

    .line 424
    check-cast v5, Lcom/android/org/conscrypt/ActiveSession;

    .line 425
    .local v5, "opensslSession":Lcom/android/org/conscrypt/ActiveSession;
    invoke-virtual {v5}, Lcom/android/org/conscrypt/ActiveSession;->getStatusResponses()Ljava/util/List;

    move-result-object v4

    .line 442
    .end local v4    # "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "opensslSession":Lcom/android/org/conscrypt/ActiveSession;
    :cond_e
    :goto_e
    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 443
    :cond_16
    return-object v11

    .line 429
    .restart local v4    # "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "getStatusResponses"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 430
    .local v3, "m_getResponses":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 431
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 432
    .local v6, "rawResponses":Ljava/lang/Object;
    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_e

    .line 433
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    move-object v4, v0
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_38} :catch_4b
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_38} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_38} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_38} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_38} :catch_39

    .local v4, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto :goto_e

    .line 437
    .end local v3    # "m_getResponses":Ljava/lang/reflect/Method;
    .end local v6    # "rawResponses":Ljava/lang/Object;
    .local v4, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_39
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 446
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_44
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    return-object v7

    .line 436
    .restart local v4    # "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_4b
    move-exception v2

    .local v2, "ignored":Ljava/lang/Exception;
    goto :goto_e
.end method

.method private getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .registers 12
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 450
    instance-of v7, p1, Lcom/android/org/conscrypt/ActiveSession;

    if-eqz v7, :cond_c

    move-object v5, p1

    .line 451
    check-cast v5, Lcom/android/org/conscrypt/ActiveSession;

    .line 452
    .local v5, "opensslSession":Lcom/android/org/conscrypt/ActiveSession;
    invoke-virtual {v5}, Lcom/android/org/conscrypt/ActiveSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v7

    return-object v7

    .line 455
    .end local v5    # "opensslSession":Lcom/android/org/conscrypt/ActiveSession;
    :cond_c
    const/4 v1, 0x0

    .line 457
    .local v1, "data":[B
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "getPeerSignedCertificateTimestamp"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 458
    .local v4, "m_getTlsSctData":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 459
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 460
    .local v6, "rawData":Ljava/lang/Object;
    instance-of v7, v6, [B

    if-eqz v7, :cond_2e

    .line 461
    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0
    :try_end_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_2e} :catch_3a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2e} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2e} :catch_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_2e} :catch_3a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2e} :catch_2f

    .line 468
    .end local v1    # "data":[B
    .end local v4    # "m_getTlsSctData":Ljava/lang/reflect/Method;
    .end local v6    # "rawData":Ljava/lang/Object;
    :cond_2e
    :goto_2e
    return-object v1

    .line 465
    .restart local v1    # "data":[B
    :catch_2f
    move-exception v2

    .line 466
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 464
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3a
    move-exception v3

    .local v3, "ignored":Ljava/lang/Exception;
    goto :goto_2e
.end method

.method private setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .registers 10
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "ocspData"    # [B

    .prologue
    .line 740
    if-nez p3, :cond_3

    .line 741
    return-void

    .line 744
    :cond_3
    const/4 v4, 0x0

    .line 745
    .local v4, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 746
    .local v2, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "checker$iterator":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 747
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v5, v0, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v5, :cond_11

    move-object v4, v0

    .line 748
    check-cast v4, Ljava/security/cert/PKIXRevocationChecker;

    .line 753
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v4    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    :cond_24
    if-nez v4, :cond_3a

    .line 757
    :try_start_26
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v5}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_2e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_2e} :catch_45

    .line 762
    .local v4, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v5, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    .line 772
    .end local v4    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    :cond_3a
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 773
    invoke-virtual {p1, v2}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 774
    return-void

    .line 758
    :catch_45
    move-exception v3

    .line 759
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    return-void
.end method

.method private static sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    .line 783
    return-object p0

    .line 785
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 786
    .local v0, "sortedAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    sget-object v1, Lcom/android/org/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lcom/android/org/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 787
    return-object v0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 7
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 257
    .local v1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_8
    if-ge v2, v3, :cond_18

    aget-object v0, p0, v2

    .line 258
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 260
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_18
    return-object v1
.end method

.method private verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .registers 28
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .param p5, "ocspData"    # [B
    .param p6, "tlsSctData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v9

    .line 660
    .local v9, "certPath":Ljava/security/cert/CertPath;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2e

    .line 661
    new-instance v16, Ljava/security/cert/CertificateException;

    new-instance v17, Ljava/security/cert/CertPathValidatorException;

    .line 662
    const-string/jumbo v18, "Trust anchor for certification path not found."

    const/16 v19, 0x0

    const/16 v20, -0x1

    .line 661
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct/range {v16 .. v17}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 665
    :cond_2e
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v15, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 667
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "anchor$iterator":Ljava/util/Iterator;
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/TrustAnchor;

    .line 668
    .local v4, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 671
    .end local v4    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    move-object/from16 v16, v0

    if-eqz v16, :cond_65

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->pinManager:Lcom/android/org/conscrypt/CertPinManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v15}, Lcom/android/org/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    .line 675
    :cond_65
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "cert$iterator":Ljava/util/Iterator;
    :goto_69
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 676
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkBlacklist(Ljava/security/cert/X509Certificate;)V

    goto :goto_69

    .line 680
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    :cond_7b
    if-nez p4, :cond_98

    .line 681
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    move/from16 v16, v0

    if-nez v16, :cond_8d

    if-eqz p3, :cond_98

    invoke-static/range {p3 .. p3}, Lcom/android/org/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v16

    .line 680
    if-eqz v16, :cond_98

    .line 682
    :cond_8d
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V

    .line 685
    :cond_98
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9f

    .line 687
    return-object v15

    .line 690
    :cond_9f
    invoke-static/range {p1 .. p1}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V

    .line 694
    :try_start_a2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 696
    .local v6, "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v14, Ljava/security/cert/PKIXParameters;

    invoke-direct {v14, v6}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 698
    .local v14, "params":Ljava/security/cert/PKIXParameters;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 699
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 700
    .local v12, "endPointCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v14, v12, v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 702
    new-instance v16, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v12, v2}, Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lcom/android/org/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;)V

    .line 701
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v14}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_f4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a2 .. :try_end_f4} :catch_123
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a2 .. :try_end_f4} :catch_115

    .line 712
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_f5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v13, v0, :cond_131

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/conscrypt/TrustManagerImpl;->intermediateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 712
    add-int/lit8 v13, v13, 0x1

    goto :goto_f5

    .line 706
    .end local v6    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v12    # "endPointCert":Ljava/security/cert/X509Certificate;
    .end local v13    # "i":I
    .end local v14    # "params":Ljava/security/cert/PKIXParameters;
    :catch_115
    move-exception v11

    .line 707
    .local v11, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v16, Ljava/security/cert/CertificateException;

    const-string/jumbo v17, "Chain validation failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 704
    .end local v11    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_123
    move-exception v10

    .line 705
    .local v10, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v16, Ljava/security/cert/CertificateException;

    const-string/jumbo v17, "Chain validation failed"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 715
    .end local v10    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v6    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .restart local v12    # "endPointCert":Ljava/security/cert/X509Certificate;
    .restart local v13    # "i":I
    .restart local v14    # "params":Ljava/security/cert/PKIXParameters;
    :cond_131
    return-object v15
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    .line 274
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 266
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 267
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 11
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v3, 0x0

    .line 291
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const/4 v4, 0x0

    .line 292
    .local v4, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_11

    move-object v6, p3

    .line 293
    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 294
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 295
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    .line 297
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "parameters":Ljavax/net/ssl/SSLParameters;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_11
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 298
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 304
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-nez v3, :cond_f

    .line 305
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_f
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 308
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    .line 321
    invoke-direct/range {v0 .. v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 385
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

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 313
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 314
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    .line 361
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    .line 367
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_c
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .registers 11
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v3, 0x0

    .line 333
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const/4 v4, 0x0

    .line 334
    .local v4, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_11

    move-object v6, p3

    .line 335
    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 336
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 337
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    .line 339
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "parameters":Ljavax/net/ssl/SSLParameters;
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_11
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .registers 10
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
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 350
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-nez v3, :cond_f

    .line 351
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_f
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    .line 354
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 353
    invoke-direct/range {v0 .. v5}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .registers 3

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_a

    .line 390
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset()V

    .line 394
    :goto_9
    return-void

    .line 392
    :cond_a
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lcom/android/org/conscrypt/TrustedCertificateIndex;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lcom/android/org/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    goto :goto_9
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    if-nez v0, :cond_6

    .line 371
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_6
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method public setCTEnabledOverride(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    .line 965
    return-void
.end method

.method public setCTPolicy(Lcom/android/org/conscrypt/ct/CTPolicy;)V
    .registers 2
    .param p1, "policy"    # Lcom/android/org/conscrypt/ct/CTPolicy;

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctPolicy:Lcom/android/org/conscrypt/ct/CTPolicy;

    .line 975
    return-void
.end method

.method public setCTVerifier(Lcom/android/org/conscrypt/ct/CTVerifier;)V
    .registers 2
    .param p1, "verifier"    # Lcom/android/org/conscrypt/ct/CTVerifier;

    .prologue
    .line 969
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustManagerImpl;->ctVerifier:Lcom/android/org/conscrypt/ct/CTVerifier;

    .line 970
    return-void
.end method
