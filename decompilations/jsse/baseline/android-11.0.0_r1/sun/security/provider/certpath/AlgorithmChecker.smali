.class public final Lsun/security/provider/certpath/AlgorithmChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AlgorithmChecker.java"


# static fields
.field private static final blacklist KU_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

.field private static final blacklist debug:Lsun/security/util/Debug;

.field private static final blacklist publicCALimits:Z


# instance fields
.field private final blacklist constraints:Ljava/security/AlgorithmConstraints;

.field private blacklist prevPubKey:Ljava/security/PublicKey;

.field private blacklist trustedMatch:Z

.field private final blacklist trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 73
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    .line 79
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 80
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 82
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    sget-object v2, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    sget-object v3, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 83
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->KU_PRIMITIVE_SET:Ljava/util/Set;

    .line 90
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    const-string v1, "jdk.certpath.disabledAlgorithms"

    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 94
    nop

    .line 95
    const-string v1, "jdkCA"

    invoke-virtual {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lsun/security/provider/certpath/AlgorithmChecker;->publicCALimits:Z

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/AlgorithmConstraints;)V
    .registers 3
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    .line 123
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 125
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 126
    iput-object p1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/TrustAnchor;)V
    .registers 3
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .line 110
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V
    .registers 5
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;

    .line 140
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 142
    if-eqz p1, :cond_3b

    .line 147
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 148
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 150
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lsun/security/provider/certpath/AlgorithmChecker;->checkFingerprint(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 151
    if-eqz v0, :cond_34

    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_34

    .line 152
    const-string v1, "trustedMatch = true"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_34

    .line 155
    :cond_2e
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 158
    :cond_34
    :goto_34
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 159
    iput-object p2, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 160
    return-void

    .line 143
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The trust anchor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    .registers 5
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :try_start_1
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v1
    :try_end_5
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_5} :catch_f

    move-object v0, v1

    .line 399
    nop

    .line 401
    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl;->getSigAlgId()Lsun/security/x509/AlgorithmId;

    move-result-object v1

    .line 402
    .local v1, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-static {p0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    .line 403
    return-void

    .line 397
    .end local v1    # "algorithmId":Lsun/security/x509/AlgorithmId;
    :catch_f
    move-exception v1

    .line 398
    .local v1, "ce":Ljava/security/cert/CRLException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V
    .registers 11
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "algorithmId"    # Lsun/security/x509/AlgorithmId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "sigAlgName":Ljava/lang/String;
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 416
    .local v1, "sigAlgParams":Ljava/security/AlgorithmParameters;
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    sget-object v3, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    invoke-virtual {v2, v3, v0, p0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 423
    return-void

    .line 418
    :cond_13
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Algorithm constraints check failed on signature algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2
.end method

.method private static blacklist checkFingerprint(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 165
    sget-boolean v0, Lsun/security/provider/certpath/AlgorithmChecker;->publicCALimits:Z

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_6
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_22

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmChecker.contains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 172
    :cond_22
    invoke-static {p0}, Lsun/security/util/AnchorCertificates;->contains(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 27
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 207
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    instance-of v0, v2, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1ae

    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    if-nez v0, :cond_e

    goto/16 :goto_1ae

    .line 213
    :cond_e
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    .line 214
    .local v3, "keyUsage":[Z
    if-eqz v3, :cond_2b

    array-length v0, v3

    const/16 v4, 0x9

    if-lt v0, v4, :cond_1d

    goto :goto_2b

    .line 215
    :cond_1d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    sget-object v10, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const-string v6, "incorrect KeyUsage extension"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 221
    :cond_2b
    :goto_2b
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->KU_PRIMITIVE_SET:Ljava/util/Set;

    .line 223
    .local v0, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz v3, :cond_82

    .line 224
    const-class v4, Ljava/security/CryptoPrimitive;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 226
    const/4 v4, 0x0

    aget-boolean v4, v3, v4

    if-nez v4, :cond_49

    const/4 v4, 0x1

    aget-boolean v4, v3, v4

    if-nez v4, :cond_49

    const/4 v4, 0x5

    aget-boolean v4, v3, v4

    if-nez v4, :cond_49

    const/4 v4, 0x6

    aget-boolean v4, v3, v4

    if-eqz v4, :cond_4e

    .line 231
    :cond_49
    sget-object v4, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4e
    const/4 v4, 0x2

    aget-boolean v4, v3, v4

    if-eqz v4, :cond_58

    .line 235
    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_58
    const/4 v4, 0x3

    aget-boolean v4, v3, v4

    if-eqz v4, :cond_62

    .line 239
    sget-object v4, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_62
    const/4 v4, 0x4

    aget-boolean v4, v3, v4

    if-eqz v4, :cond_6c

    .line 243
    sget-object v4, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_6c
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_74

    move-object v4, v0

    goto :goto_83

    .line 250
    :cond_74
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    sget-object v10, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const-string v6, "incorrect KeyUsage extension bits"

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v4

    .line 223
    :cond_82
    move-object v4, v0

    .line 256
    .end local v0    # "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    .local v4, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    :goto_83
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    .line 258
    .local v5, "currPubKey":Ljava/security/PublicKey;
    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    instance-of v6, v0, Lsun/security/util/DisabledAlgorithmConstraints;

    if-eqz v6, :cond_a3

    .line 261
    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints;

    new-instance v6, Lsun/security/util/CertConstraintParameters;

    move-object v7, v2

    check-cast v7, Ljava/security/cert/X509Certificate;

    iget-boolean v8, v1, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    invoke-direct {v6, v7, v8}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;Z)V

    invoke-virtual {v0, v4, v6}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    .line 265
    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-nez v0, :cond_a3

    .line 266
    iput-object v5, v1, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 267
    return-void

    .line 274
    :cond_a3
    :try_start_a3
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    move-object v6, v0

    .line 275
    .local v6, "x509Cert":Lsun/security/x509/X509CertImpl;
    const-string v0, "x509.algorithm"

    invoke-virtual {v6, v0}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AlgorithmId;
    :try_end_b3
    .catch Ljava/security/cert/CertificateException; {:try_start_a3 .. :try_end_b3} :catch_1a7

    move-object v7, v0

    .line 278
    .local v7, "algorithmId":Lsun/security/x509/AlgorithmId;
    nop

    .line 280
    invoke-virtual {v7}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v8

    .line 281
    .local v8, "currSigAlgParams":Ljava/security/AlgorithmParameters;
    invoke-virtual {v6}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, "currSigAlg":Ljava/lang/String;
    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    instance-of v10, v0, Lsun/security/util/DisabledAlgorithmConstraints;

    const-string v11, "Algorithm constraints check failed on signature algorithm: "

    if-nez v10, :cond_117

    .line 287
    sget-object v10, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    invoke-interface {v0, v10, v9, v8}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 296
    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    invoke-interface {v0, v4, v5}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_d6

    goto :goto_117

    .line 297
    :cond_d6
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Algorithm constraints check failed on keysize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v5}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    sget-object v17, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 290
    :cond_f8
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    sget-object v23, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 305
    :cond_117
    :goto_117
    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1a4

    .line 306
    iget-object v10, v1, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    sget-object v12, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    invoke-interface {v10, v12, v9, v0, v8}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 316
    invoke-static {v5}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 318
    iget-object v0, v1, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    instance-of v10, v0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v10, :cond_181

    .line 323
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    .line 324
    .local v10, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v10, :cond_179

    .line 330
    :try_start_139
    move-object v0, v5

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 331
    .local v0, "y":Ljava/math/BigInteger;
    const-string v11, "DSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v11

    .line 332
    .local v11, "kf":Ljava/security/KeyFactory;
    new-instance v12, Ljava/security/spec/DSAPublicKeySpec;

    .line 333
    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v13

    .line 334
    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v14

    .line 335
    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v12, v0, v13, v14, v15}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 336
    .local v12, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v11, v12}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v13
    :try_end_15b
    .catch Ljava/security/GeneralSecurityException; {:try_start_139 .. :try_end_15b} :catch_15d

    move-object v5, v13

    .line 340
    .end local v0    # "y":Ljava/math/BigInteger;
    .end local v11    # "kf":Ljava/security/KeyFactory;
    .end local v12    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    goto :goto_1a4

    .line 337
    :catch_15d
    move-exception v0

    .line 338
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to generate key with inherited parameters: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 325
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_179
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Key parameters missing from public key."

    invoke-direct {v0, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    .end local v10    # "params":Ljava/security/interfaces/DSAParams;
    :cond_181
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Input key is not of a appropriate type for inheriting parameters"

    invoke-direct {v0, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_189
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    sget-object v16, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 345
    :cond_1a4
    :goto_1a4
    iput-object v5, v1, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 351
    return-void

    .line 276
    .end local v6    # "x509Cert":Lsun/security/x509/X509CertImpl;
    .end local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .end local v8    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    .end local v9    # "currSigAlg":Ljava/lang/String;
    :catch_1a7
    move-exception v0

    .line 277
    .local v0, "ce":Ljava/security/cert/CertificateException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v6, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 209
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .end local v3    # "keyUsage":[Z
    .end local v4    # "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    .end local v5    # "currPubKey":Ljava/security/PublicKey;
    :cond_1ae
    :goto_1ae
    return-void
.end method

.method public whitelist core-platform-api test-api getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 178
    if-nez p1, :cond_d

    .line 179
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_9

    .line 180
    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_c

    .line 182
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 188
    :goto_c
    return-void

    .line 185
    :cond_d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api isForwardCheckingSupported()Z
    .registers 2

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method blacklist trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V
    .registers 4
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .line 365
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-nez v0, :cond_3b

    .line 366
    if-eqz p1, :cond_33

    .line 372
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 373
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 375
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lsun/security/provider/certpath/AlgorithmChecker;->checkFingerprint(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 376
    if-eqz v0, :cond_3b

    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3b

    .line 377
    const-string v1, "trustedMatch = true"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_3b

    .line 380
    :cond_2c
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_3b

    .line 367
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The trust anchor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3b
    :goto_3b
    return-void
.end method
