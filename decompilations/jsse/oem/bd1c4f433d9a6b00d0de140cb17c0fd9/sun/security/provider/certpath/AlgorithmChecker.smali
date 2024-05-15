.class public final Lsun/security/provider/certpath/AlgorithmChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "AlgorithmChecker.java"


# static fields
.field private static final KU_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;"
        }
    .end annotation
.end field

.field private static final certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

.field private static final debug:Lsun/security/util/Debug;

.field private static final publicCALimits:Z


# instance fields
.field private final constraints:Ljava/security/AlgorithmConstraints;

.field private prevPubKey:Ljava/security/PublicKey;

.field private trustedMatch:Z

.field private final trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 73
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    .line 80
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 79
    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 84
    sget-object v0, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    .line 85
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    .line 86
    sget-object v2, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    .line 87
    sget-object v3, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    .line 83
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 82
    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->KU_PRIMITIVE_SET:Ljava/util/Set;

    .line 90
    new-instance v0, Lsun/security/util/DisabledAlgorithmConstraints;

    .line 91
    const-string/jumbo v1, "jdk.certpath.disabledAlgorithms"

    .line 90
    invoke-direct {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 95
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    const-string/jumbo v1, "jdkCA"

    invoke-virtual {v0, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkProperty(Ljava/lang/String;)Z

    move-result v0

    .line 94
    sput-boolean v0, Lsun/security/provider/certpath/AlgorithmChecker;->publicCALimits:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmConstraints;)V
    .registers 4
    .param p1, "constraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 124
    iput-object v1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 125
    iput-object v1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 126
    iput-object p1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .registers 3
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 110
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;Ljava/security/AlgorithmConstraints;)V
    .registers 5
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "constraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 142
    if-nez p1, :cond_11

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 144
    const-string/jumbo v1, "The trust anchor cannot be null"

    .line 143
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_11
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_42

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
    iget-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3b

    .line 152
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "trustedMatch = true"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 158
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 159
    iput-object p2, p0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 160
    return-void

    .line 155
    :cond_42
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    goto :goto_3b
.end method

.method static check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    .registers 6
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 396
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :try_start_1
    invoke-static {p1}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    :try_end_4
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_4} :catch_d

    move-result-object v2

    .line 401
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v2}, Lsun/security/x509/X509CRLImpl;->getSigAlgId()Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 402
    .local v0, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-static {p0, v0}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V

    .line 403
    return-void

    .line 397
    .end local v0    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .local v2, "x509CRLImpl":Lsun/security/x509/X509CRLImpl;
    :catch_d
    move-exception v1

    .line 398
    .local v1, "ce":Ljava/security/cert/CRLException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static check(Ljava/security/PublicKey;Lsun/security/x509/AlgorithmId;)V
    .registers 10
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "algorithmId"    # Lsun/security/x509/AlgorithmId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 413
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, "sigAlgName":Ljava/lang/String;
    invoke-virtual {p1}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v7

    .line 416
    .local v7, "sigAlgParams":Ljava/security/AlgorithmParameters;
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->certPathDefaultConstraints:Lsun/security/util/DisabledAlgorithmConstraints;

    .line 417
    sget-object v1, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 416
    invoke-virtual {v0, v1, v6, p0, v7}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 418
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on signature algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 420
    const-string/jumbo v3, " is disabled"

    .line 419
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v4, -0x1

    move-object v3, v2

    .line 418
    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v0

    .line 423
    :cond_38
    return-void
.end method

.method private static checkFingerprint(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 165
    sget-boolean v0, Lsun/security/provider/certpath/AlgorithmChecker;->publicCALimits:Z

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_6
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_27

    .line 170
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AlgorithmChecker.contains: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 172
    :cond_27
    invoke-static {p0}, Lsun/security/util/AnchorCertificates;->contains(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 23
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    if-nez v1, :cond_d

    .line 209
    :cond_c
    return-void

    :cond_d
    move-object/from16 v1, p1

    .line 213
    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v13

    .line 214
    .local v13, "keyUsage":[Z
    if-eqz v13, :cond_2a

    array-length v1, v13

    const/16 v2, 0x9

    if-ge v1, v2, :cond_2a

    .line 215
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 216
    const-string/jumbo v2, "incorrect KeyUsage extension"

    .line 217
    sget-object v6, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 215
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 221
    :cond_2a
    sget-object v17, Lsun/security/provider/certpath/AlgorithmChecker;->KU_PRIMITIVE_SET:Ljava/util/Set;

    .line 223
    .local v17, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz v13, :cond_87

    .line 224
    const-class v1, Ljava/security/CryptoPrimitive;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v17

    .line 226
    const/4 v1, 0x0

    aget-boolean v1, v13, v1

    if-nez v1, :cond_48

    const/4 v1, 0x1

    aget-boolean v1, v13, v1

    if-nez v1, :cond_48

    const/4 v1, 0x5

    aget-boolean v1, v13, v1

    if-nez v1, :cond_48

    const/4 v1, 0x6

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_4f

    .line 231
    :cond_48
    sget-object v1, Ljava/security/CryptoPrimitive;->SIGNATURE:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_4f
    const/4 v1, 0x2

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_5b

    .line 235
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_ENCAPSULATION:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5b
    const/4 v1, 0x3

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_67

    .line 239
    sget-object v1, Ljava/security/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_67
    const/4 v1, 0x4

    aget-boolean v1, v13, v1

    if-eqz v1, :cond_73

    .line 243
    sget-object v1, Ljava/security/CryptoPrimitive;->KEY_AGREEMENT:Ljava/security/CryptoPrimitive;

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_73
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 250
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 251
    const-string/jumbo v2, "incorrect KeyUsage extension bits"

    .line 252
    sget-object v6, Ljava/security/cert/PKIXReason;->INVALID_KEY_USAGE:Ljava/security/cert/PKIXReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 250
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 256
    :cond_87
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 258
    .local v9, "currPubKey":Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    instance-of v1, v1, Lsun/security/util/DisabledAlgorithmConstraints;

    if-eqz v1, :cond_b6

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    check-cast v1, Lsun/security/util/DisabledAlgorithmConstraints;

    .line 262
    new-instance v3, Lsun/security/util/CertConstraintParameters;

    move-object/from16 v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 263
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    .line 262
    invoke-direct {v3, v2, v4}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;Z)V

    .line 261
    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v3}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Lsun/security/util/CertConstraintParameters;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-nez v1, :cond_b6

    .line 266
    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 267
    return-void

    .line 274
    :cond_b6
    :try_start_b6
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1    # "cert":Ljava/security/cert/Certificate;
    invoke-static/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v18

    .line 275
    .local v18, "x509Cert":Lsun/security/x509/X509CertImpl;
    const-string/jumbo v1, "x509.algorithm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/AlgorithmId;
    :try_end_c7
    .catch Ljava/security/cert/CertificateException; {:try_start_b6 .. :try_end_c7} :catch_102

    .line 280
    .local v7, "algorithmId":Lsun/security/x509/AlgorithmId;
    invoke-virtual {v7}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v11

    .line 281
    .local v11, "currSigAlgParams":Ljava/security/AlgorithmParameters;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "currSigAlg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    instance-of v1, v1, Lsun/security/util/DisabledAlgorithmConstraints;

    if-nez v1, :cond_138

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 288
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 287
    invoke-interface {v1, v2, v10, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_109

    .line 290
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on signature algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 293
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    .line 292
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 290
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 276
    .end local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .end local v10    # "currSigAlg":Ljava/lang/String;
    .end local v11    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    .end local v18    # "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_102
    move-exception v8

    .line 277
    .local v8, "ce":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 296
    .end local v8    # "ce":Ljava/security/cert/CertificateException;
    .restart local v7    # "algorithmId":Lsun/security/x509/AlgorithmId;
    .restart local v10    # "currSigAlg":Ljava/lang/String;
    .restart local v11    # "currSigAlgParams":Ljava/security/AlgorithmParameters;
    .restart local v18    # "x509Cert":Lsun/security/x509/X509CertImpl;
    :cond_109
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v9}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/security/Key;)Z

    move-result v1

    if-nez v1, :cond_138

    .line 297
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on keysize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    invoke-static {v9}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v3

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 297
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 305
    :cond_138
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-eqz v1, :cond_1bd

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->constraints:Ljava/security/AlgorithmConstraints;

    .line 307
    sget-object v2, Lsun/security/provider/certpath/AlgorithmChecker;->SIGNATURE_PRIMITIVE_SET:Ljava/util/Set;

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 306
    invoke-interface {v1, v2, v10, v3, v11}, Ljava/security/AlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    move-result v1

    if-nez v1, :cond_16d

    .line 309
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Algorithm constraints check failed on signature algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 309
    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 316
    :cond_16d
    invoke-static {v9}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v1

    if-eqz v1, :cond_1bd

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    instance-of v1, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_184

    .line 319
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Input key is not of a appropriate type for inheriting parameters"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_184
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v16

    .line 324
    .local v16, "params":Ljava/security/interfaces/DSAParams;
    if-nez v16, :cond_199

    .line 325
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    .line 326
    const-string/jumbo v2, "Key parameters missing from public key."

    .line 325
    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_199
    :try_start_199
    check-cast v9, Ljava/security/interfaces/DSAPublicKey;

    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v19

    .line 331
    .local v19, "y":Ljava/math/BigInteger;
    const-string/jumbo v1, "DSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    .line 332
    .local v14, "kf":Ljava/security/KeyFactory;
    new-instance v15, Ljava/security/spec/DSAPublicKeySpec;

    .line 333
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 334
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 335
    invoke-interface/range {v16 .. v16}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 332
    move-object/from16 v0, v19

    invoke-direct {v15, v0, v1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 336
    .local v15, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v14, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1bc
    .catch Ljava/security/GeneralSecurityException; {:try_start_199 .. :try_end_1bc} :catch_1c2

    move-result-object v9

    .line 345
    .end local v14    # "kf":Ljava/security/KeyFactory;
    .end local v15    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    .end local v16    # "params":Ljava/security/interfaces/DSAParams;
    .end local v19    # "y":Ljava/math/BigInteger;
    .restart local v9    # "currPubKey":Ljava/security/PublicKey;
    :cond_1bd
    move-object/from16 v0, p0

    iput-object v9, v0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 351
    return-void

    .line 337
    .end local v9    # "currPubKey":Ljava/security/PublicKey;
    .restart local v16    # "params":Ljava/security/interfaces/DSAParams;
    :catch_1c2
    move-exception v12

    .line 338
    .local v12, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to generate key with inherited parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    invoke-virtual {v12}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    if-nez p1, :cond_f

    .line 179
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_c

    .line 180
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 188
    :goto_b
    return-void

    .line 182
    :cond_c
    iput-object v1, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_b

    .line 185
    :cond_f
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    .line 186
    const-string/jumbo v1, "forward checking not supported"

    .line 185
    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isForwardCheckingSupported()Z
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V
    .registers 4
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 365
    iget-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    if-nez v0, :cond_39

    .line 366
    if-nez p1, :cond_f

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 368
    const-string/jumbo v1, "The trust anchor cannot be null"

    .line 367
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_f
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3a

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
    iget-boolean v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->trustedMatch:Z

    if-eqz v0, :cond_39

    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_39

    .line 377
    sget-object v0, Lsun/security/provider/certpath/AlgorithmChecker;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "trustedMatch = true"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 383
    :cond_39
    :goto_39
    return-void

    .line 380
    :cond_3a
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/AlgorithmChecker;->prevPubKey:Ljava/security/PublicKey;

    goto :goto_39
.end method
