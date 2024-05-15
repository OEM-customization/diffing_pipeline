.class Lsun/security/provider/certpath/BasicChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "BasicChecker.java"


# static fields
.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private final blacklist caName:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist date:Ljava/util/Date;

.field private blacklist prevPubKey:Ljava/security/PublicKey;

.field private blacklist prevSubject:Ljavax/security/auth/x500/X500Principal;

.field private final blacklist sigOnly:Z

.field private final blacklist sigProvider:Ljava/lang/String;

.field private final blacklist trustedPubKey:Ljava/security/PublicKey;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "sigProvider"    # Ljava/lang/String;
    .param p4, "sigOnly"    # Z

    .line 82
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 84
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 85
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    goto :goto_2a

    .line 87
    :cond_1e
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    .line 88
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    .line 90
    :goto_2a
    iput-object p2, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    .line 91
    iput-object p3, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    .line 92
    iput-boolean p4, p0, Lsun/security/provider/certpath/BasicChecker;->sigOnly:Z

    .line 93
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 94
    return-void
.end method

.method static blacklist makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .registers 9
    .param p0, "keyValueKey"    # Ljava/security/PublicKey;
    .param p1, "keyParamsKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 275
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_58

    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_58

    .line 280
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 281
    .local v0, "params":Ljava/security/interfaces/DSAParams;
    if-eqz v0, :cond_50

    .line 284
    :try_start_11
    move-object v1, p0

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    .line 285
    .local v1, "y":Ljava/math/BigInteger;
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 286
    .local v2, "kf":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/DSAPublicKeySpec;

    .line 287
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    .line 288
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 289
    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 290
    .local v3, "ks":Ljava/security/spec/DSAPublicKeySpec;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4
    :try_end_33
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_33} :catch_34

    return-object v4

    .line 291
    .end local v1    # "y":Ljava/math/BigInteger;
    .end local v2    # "kf":Ljava/security/KeyFactory;
    .end local v3    # "ks":Ljava/security/spec/DSAPublicKeySpec;
    :catch_34
    move-exception v1

    .line 292
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to generate key with inherited parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 282
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_50
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Key parameters missing"

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v0    # "params":Ljava/security/interfaces/DSAParams;
    :cond_58
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Input key is not appropriate type for inheriting parameters"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateState(Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 247
    .local v0, "cKey":Ljava/security/PublicKey;
    sget-object v1, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_40

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasicChecker.updateState issuer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; serial#: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 253
    :cond_40
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 255
    iget-object v2, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-static {v0, v2}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    .line 256
    if-eqz v1, :cond_53

    const-string v2, "BasicChecker.updateState Made key with inherited params"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 259
    :cond_53
    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 260
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    .line 261
    return-void
.end method

.method private blacklist verifyNameChaining(Ljava/security/cert/X509Certificate;)V
    .registers 19
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_8c

    .line 215
    const-string v1, "subject/issuer name chaining"

    .line 216
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_25

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 219
    :cond_25
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 222
    .local v3, "currIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-static {v3}, Lsun/security/x509/X500Name;->asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/x509/X500Name;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6f

    .line 229
    iget-object v4, v0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 235
    if-eqz v2, :cond_8c

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " verified."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_8c

    .line 230
    :cond_52
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " check failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    sget-object v10, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 223
    :cond_6f
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " check failed: empty/null issuer DN in certificate is invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    sget-object v16, Ljava/security/cert/PKIXReason;->NAME_CHAINING:Ljava/security/cert/PKIXReason;

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 238
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "currIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_8c
    :goto_8c
    return-void
.end method

.method private blacklist verifySignature(Ljava/security/cert/X509Certificate;)V
    .registers 11
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 161
    const-string v0, " check failed"

    const-string v1, "signature"

    .line 162
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_21

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 166
    :cond_21
    :try_start_21
    iget-object v3, p0, Lsun/security/provider/certpath/BasicChecker;->sigProvider:Ljava/lang/String;

    if-eqz v3, :cond_2b

    .line 167
    iget-object v4, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-virtual {p1, v4, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_30

    .line 169
    :cond_2b
    iget-object v3, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_30
    .catch Ljava/security/SignatureException; {:try_start_21 .. :try_end_30} :catch_5e
    .catch Ljava/security/GeneralSecurityException; {:try_start_21 .. :try_end_30} :catch_48

    .line 177
    :goto_30
    nop

    .line 179
    if-eqz v2, :cond_47

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " verified."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 181
    :cond_47
    return-void

    .line 175
    :catch_48
    move-exception v2

    .line 176
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_5e
    move-exception v2

    move-object v5, v2

    .line 172
    .local v5, "e":Ljava/security/SignatureException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->INVALID_SIGNATURE:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2
.end method

.method private blacklist verifyTimestamp(Ljava/security/cert/X509Certificate;)V
    .registers 11
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 189
    const-string v0, " check failed"

    const-string v1, "timestamp"

    .line 190
    .local v1, "msg":Ljava/lang/String;
    sget-object v2, Lsun/security/provider/certpath/BasicChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_2f

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---checking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 194
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lsun/security/provider/certpath/BasicChecker;->date:Ljava/util/Date;

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_34
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2f .. :try_end_34} :catch_68
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2f .. :try_end_34} :catch_4c

    .line 201
    nop

    .line 203
    if-eqz v2, :cond_4b

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " verified."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 205
    :cond_4b
    return-void

    .line 198
    :catch_4c
    move-exception v2

    move-object v5, v2

    .line 199
    .local v5, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2

    .line 195
    .end local v5    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_68
    move-exception v2

    move-object v5, v2

    .line 196
    .local v5, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget-object v8, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 5
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

    .line 141
    .local p2, "unresolvedCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 143
    .local v0, "currCert":Ljava/security/cert/X509Certificate;
    iget-boolean v1, p0, Lsun/security/provider/certpath/BasicChecker;->sigOnly:Z

    if-nez v1, :cond_d

    .line 144
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifyTimestamp(Ljava/security/cert/X509Certificate;)V

    .line 145
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifyNameChaining(Ljava/security/cert/X509Certificate;)V

    .line 147
    :cond_d
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->verifySignature(Ljava/security/cert/X509Certificate;)V

    .line 149
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/BasicChecker;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 150
    return-void
.end method

.method blacklist getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 304
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public whitelist test-api getSupportedExtensions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api init(Z)V
    .registers 4
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 102
    if-nez p1, :cond_19

    .line 103
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->trustedPubKey:Ljava/security/PublicKey;

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevPubKey:Ljava/security/PublicKey;

    .line 104
    invoke-static {v0}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 110
    iget-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->caName:Ljavax/security/auth/x500/X500Principal;

    iput-object v0, p0, Lsun/security/provider/certpath/BasicChecker;->prevSubject:Ljavax/security/auth/x500/X500Principal;

    .line 115
    return-void

    .line 108
    :cond_11
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Key parameters missing"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_19
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method
