.class Lsun/security/provider/certpath/PolicyChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PolicyChecker.java"


# static fields
.field static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field private static final blacklist debug:Lsun/security/util/Debug;


# instance fields
.field private final blacklist anyPolicyInhibited:Z

.field private blacklist certIndex:I

.field private final blacklist certPathLen:I

.field private final blacklist expPolicyRequired:Z

.field private blacklist explicitPolicy:I

.field private blacklist inhibitAnyPolicy:I

.field private final blacklist initPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist polMappingInhibited:Z

.field private blacklist policyMapping:I

.field private final blacklist rejectPolicyQualifiers:Z

.field private blacklist rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private blacklist supportedExts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V
    .registers 10
    .param p2, "certPathLen"    # I
    .param p3, "expPolicyRequired"    # Z
    .param p4, "polMappingInhibited"    # Z
    .param p5, "anyPolicyInhibited"    # Z
    .param p6, "rejectPolicyQualifiers"    # Z
    .param p7, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZZZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")V"
        }
    .end annotation

    .line 92
    .local p1, "initialPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 96
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    .line 97
    const-string v1, "2.5.29.32.0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 99
    :cond_17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    .line 101
    :goto_1e
    iput p2, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    .line 102
    iput-boolean p3, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    .line 103
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    .line 104
    iput-boolean p5, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    .line 105
    iput-boolean p6, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    .line 106
    iput-object p7, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 107
    return-void
.end method

.method private blacklist checkPolicy(Ljava/security/cert/X509Certificate;)V
    .registers 16
    .param p1, "currCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 200
    const-string v0, "certificate policies"

    .line 201
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_8d

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() ---checking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() certIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: explicitPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyMapping = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.checkPolicy() BEFORE PROCESSING: policyTree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_8d
    const/4 v2, 0x0

    .line 218
    .local v2, "currCertImpl":Lsun/security/x509/X509CertImpl;
    :try_start_8e
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v3
    :try_end_92
    .catch Ljava/security/cert/CertificateException; {:try_start_8e .. :try_end_92} :catch_145

    move-object v2, v3

    .line 221
    nop

    .line 223
    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    iget v3, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    const/4 v13, 0x1

    if-ne v4, v3, :cond_9d

    move v3, v13

    goto :goto_9e

    :cond_9d
    const/4 v3, 0x0

    .line 225
    .local v3, "finalCert":Z
    :goto_9e
    iget-object v5, p0, Lsun/security/provider/certpath/PolicyChecker;->initPolicies:Ljava/util/Set;

    iget v6, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    iget v7, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    iget v8, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    iget-boolean v9, p0, Lsun/security/provider/certpath/PolicyChecker;->rejectPolicyQualifiers:Z

    iget-object v10, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    move-object v11, v2

    move v12, v3

    invoke-static/range {v4 .. v12}, Lsun/security/provider/certpath/PolicyChecker;->processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v4

    iput-object v4, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 229
    if-nez v3, :cond_cc

    .line 230
    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-static {v4, v2, v3}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v4

    iput v4, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 232
    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-static {v4, v2}, Lsun/security/provider/certpath/PolicyChecker;->mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I

    move-result v4

    iput v4, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 233
    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-static {v4, v2}, Lsun/security/provider/certpath/PolicyChecker;->mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I

    move-result v4

    iput v4, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 237
    :cond_cc
    iget v4, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    add-int/2addr v4, v13

    iput v4, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 239
    if-eqz v1, :cond_144

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyChecker.checkPolicy() AFTER PROCESSING: explicitPolicy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyMapping = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyChecker.checkPolicy() AFTER PROCESSING: inhibitAnyPolicy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyChecker.checkPolicy() AFTER PROCESSING: policyTree = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PolicyChecker.checkPolicy() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " verified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 250
    :cond_144
    return-void

    .line 219
    .end local v3    # "finalCert":Z
    :catch_145
    move-exception v1

    .line 220
    .local v1, "ce":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static blacklist mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I
    .registers 8
    .param p0, "explicitPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p2, "finalCert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 270
    if-lez p0, :cond_a

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 271
    add-int/lit8 p0, p0, -0x1

    .line 275
    :cond_a
    nop

    .line 276
    :try_start_b
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v0

    .line 277
    .local v0, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v0, :cond_12

    .line 278
    return p0

    .line 279
    :cond_12
    const-string v1, "require"

    .line 280
    invoke-virtual {v0, v1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 281
    .local v1, "require":I
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_34

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.mergeExplicitPolicy() require Index from cert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_34} :catch_44

    .line 285
    :cond_34
    if-nez p2, :cond_3f

    .line 286
    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 287
    if-eq p0, v2, :cond_3d

    if-ge v1, p0, :cond_42

    .line 288
    :cond_3d
    move p0, v1

    goto :goto_42

    .line 292
    :cond_3f
    if-nez v1, :cond_42

    .line 293
    move p0, v1

    .line 302
    .end local v0    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    .end local v1    # "require":I
    :cond_42
    :goto_42
    nop

    .line 304
    return p0

    .line 295
    :catch_44
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_51

    .line 297
    const-string v2, "PolicyChecker.mergeExplicitPolicy unexpected exception"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_51
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist mergeInhibitAnyPolicy(ILsun/security/x509/X509CertImpl;)I
    .registers 7
    .param p0, "inhibitAnyPolicy"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 371
    if-lez p0, :cond_a

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 372
    add-int/lit8 p0, p0, -0x1

    .line 376
    :cond_a
    :try_start_a
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    .line 377
    invoke-virtual {p1, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    check-cast v0, Lsun/security/x509/InhibitAnyPolicyExtension;

    .line 378
    .local v0, "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    if-nez v0, :cond_15

    .line 379
    return p0

    .line 381
    :cond_15
    const-string v1, "skip_certs"

    .line 382
    invoke-virtual {v0, v1}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 383
    .local v1, "skipCerts":I
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_37

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.mergeInhibitAnyPolicy() skipCerts Index from cert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_37} :catch_3f

    .line 387
    :cond_37
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3d

    .line 388
    if-ge v1, p0, :cond_3d

    .line 389
    move p0, v1

    .line 399
    .end local v0    # "inhAnyPolExt":Lsun/security/x509/InhibitAnyPolicyExtension;
    .end local v1    # "skipCerts":I
    :cond_3d
    nop

    .line 401
    return p0

    .line 392
    :catch_3f
    move-exception v0

    .line 393
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4c

    .line 394
    const-string v2, "PolicyChecker.mergeInhibitAnyPolicy unexpected exception"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 398
    :cond_4c
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist mergePolicyMapping(ILsun/security/x509/X509CertImpl;)I
    .registers 7
    .param p0, "policyMapping"    # I
    .param p1, "currCert"    # Lsun/security/x509/X509CertImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 323
    if-lez p0, :cond_a

    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 324
    add-int/lit8 p0, p0, -0x1

    .line 328
    :cond_a
    nop

    .line 329
    :try_start_b
    invoke-virtual {p1}, Lsun/security/x509/X509CertImpl;->getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;

    move-result-object v0

    .line 330
    .local v0, "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    if-nez v0, :cond_12

    .line 331
    return p0

    .line 333
    :cond_12
    const-string v1, "inhibit"

    .line 334
    invoke-virtual {v0, v1}, Lsun/security/x509/PolicyConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 335
    .local v1, "inhibit":I
    sget-object v2, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_34

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PolicyChecker.mergePolicyMapping() inhibit Index from cert = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_34} :catch_3e

    .line 339
    :cond_34
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    .line 340
    if-eq p0, v2, :cond_3b

    if-ge v1, p0, :cond_3c

    .line 341
    :cond_3b
    move p0, v1

    .line 351
    .end local v0    # "polConstExt":Lsun/security/x509/PolicyConstraintsExtension;
    .end local v1    # "inhibit":I
    :cond_3c
    nop

    .line 353
    return p0

    .line 344
    :catch_3e
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_4b

    .line 346
    const-string v2, "PolicyChecker.mergePolicyMapping unexpected exception"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    :cond_4b
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z
    .registers 30
    .param p0, "certIndex"    # I
    .param p1, "policiesCritical"    # Z
    .param p2, "rejectPolicyQualifiers"    # Z
    .param p3, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p4, "curPolicy"    # Ljava/lang/String;
    .param p6, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 659
    .local p5, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    move-object/from16 v7, p4

    move/from16 v8, p6

    const/4 v0, 0x0

    .line 661
    .local v0, "foundMatch":Z
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1d

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.processParents(): matchAny = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 666
    :cond_1d
    add-int/lit8 v1, p0, -0x1

    .line 667
    move-object/from16 v9, p3

    invoke-virtual {v9, v1, v7, v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v10

    .line 671
    .local v10, "parentNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_29
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 672
    .local v19, "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_53

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.processParents() found parent:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 676
    :cond_53
    const/16 v20, 0x1

    .line 677
    .end local v0    # "foundMatch":Z
    .local v20, "foundMatch":Z
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v21

    .line 679
    .local v21, "curParPolicy":Ljava/lang/String;
    const/4 v0, 0x0

    .line 680
    .local v0, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    const/4 v1, 0x0

    .line 682
    .local v1, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "2.5.29.32.0"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 684
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    .line 686
    .local v2, "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6b
    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 688
    .local v4, "curParExpPol":Ljava/lang/String;
    nop

    .line 689
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    .line 690
    .local v5, "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :goto_7c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 691
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 692
    .local v6, "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    .line 693
    .local v12, "childPolicy":Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ab

    .line 694
    sget-object v13, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_6b

    .line 695
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " in parent\'s expected policy set already appears in child node"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_6b

    .line 700
    .end local v6    # "childNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v12    # "childPolicy":Ljava/lang/String;
    :cond_ab
    goto :goto_7c

    .line 702
    :cond_ac
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 703
    .local v6, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v22, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/16 v18, 0x0

    move-object/from16 v12, v22

    move-object/from16 v13, v19

    move-object v14, v4

    move-object/from16 v15, p5

    move/from16 v16, p1

    move-object/from16 v17, v6

    invoke-direct/range {v12 .. v18}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    move-object/from16 v0, v22

    .line 708
    .end local v4    # "curParExpPol":Ljava/lang/String;
    .end local v5    # "childIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v6    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_6b

    .line 709
    .end local v2    # "parExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c9
    goto :goto_e2

    .line 710
    .end local v0    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_ca
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v12, v0

    .line 711
    .end local v1    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v12, "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v6, 0x0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p1

    move-object v5, v12

    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 717
    .end local v12    # "curExpPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "curParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v21    # "curParPolicy":Ljava/lang/String;
    :goto_e2
    move/from16 v0, v20

    goto/16 :goto_29

    .line 719
    .end local v20    # "foundMatch":Z
    .local v0, "foundMatch":Z
    :cond_e6
    return v0
.end method

.method static blacklist processPolicies(ILjava/util/Set;IIIZLsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/x509/X509CertImpl;Z)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 36
    .param p0, "certIndex"    # I
    .param p2, "explicitPolicy"    # I
    .param p3, "policyMapping"    # I
    .param p4, "inhibitAnyPolicy"    # I
    .param p5, "rejectPolicyQualifiers"    # Z
    .param p6, "origRootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p7, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p8, "finalCert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Lsun/security/x509/X509CertImpl;",
            "Z)",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 431
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p8

    const/4 v0, 0x0

    .line 433
    .local v0, "policiesCritical":Z
    const/4 v1, 0x0

    .line 434
    .local v1, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 436
    .local v2, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    if-nez p6, :cond_14

    .line 437
    const/4 v1, 0x0

    move-object v12, v1

    goto :goto_19

    .line 439
    :cond_14
    invoke-virtual/range {p6 .. p6}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v1

    move-object v12, v1

    .line 442
    .end local v1    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v12, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :goto_19
    nop

    .line 443
    invoke-virtual/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;

    move-result-object v13

    .line 446
    .local v13, "currCertPolicies":Lsun/security/x509/CertificatePoliciesExtension;
    const-string v14, "2.5.29.32.0"

    if-eqz v13, :cond_129

    if-eqz v12, :cond_129

    .line 447
    invoke-virtual {v13}, Lsun/security/x509/CertificatePoliciesExtension;->isCritical()Z

    move-result v15

    .line 448
    .end local v0    # "policiesCritical":Z
    .local v15, "policiesCritical":Z
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_40

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.processPolicies() policiesCritical = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 453
    :cond_40
    :try_start_40
    const-string v1, "policies"

    invoke-virtual {v13, v1}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_120

    move-object/from16 v16, v1

    .line 457
    .local v16, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    nop

    .line 459
    if-eqz v0, :cond_5f

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.processPolicies() rejectPolicyQualifiers = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 463
    :cond_5f
    const/4 v0, 0x0

    .line 466
    .local v0, "foundAnyPolicy":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local v18, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :goto_66
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lsun/security/x509/PolicyInformation;

    .line 467
    .local v19, "curPolInfo":Lsun/security/x509/PolicyInformation;
    nop

    .line 468
    invoke-virtual/range {v19 .. v19}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, "curPolicy":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 471
    const/4 v0, 0x1

    .line 472
    invoke-virtual/range {v19 .. v19}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v18

    goto :goto_ea

    .line 475
    :cond_8d
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_a5

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyChecker.processPolicies() processing policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 480
    :cond_a5
    nop

    .line 481
    invoke-virtual/range {v19 .. v19}, Lsun/security/x509/PolicyInformation;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v20

    .line 485
    .local v20, "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c7

    if-eqz v10, :cond_c7

    if-nez v15, :cond_b5

    goto :goto_c7

    .line 487
    :cond_b5
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    sget-object v26, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v22, "critical policy qualifiers present in certificate"

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v26}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 493
    :cond_c7
    :goto_c7
    const/16 v21, 0x0

    move/from16 v1, p0

    move v2, v15

    move/from16 v3, p5

    move-object v4, v12

    move-object v5, v7

    move-object/from16 v6, v20

    move-object/from16 v22, v7

    .end local v7    # "curPolicy":Ljava/lang/String;
    .local v22, "curPolicy":Ljava/lang/String;
    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    move-result v21

    .line 497
    .local v21, "foundMatch":Z
    if-nez v21, :cond_ea

    .line 499
    const/4 v7, 0x1

    move/from16 v1, p0

    move v2, v15

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v5, v22

    move-object/from16 v6, v20

    invoke-static/range {v1 .. v7}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    .line 504
    .end local v19    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v20    # "pQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local v21    # "foundMatch":Z
    .end local v22    # "curPolicy":Ljava/lang/String;
    :cond_ea
    :goto_ea
    goto/16 :goto_66

    .line 507
    :cond_ec
    if-eqz v0, :cond_10f

    .line 508
    if-gtz p4, :cond_f8

    if-nez v11, :cond_10f

    .line 509
    invoke-static/range {p7 .. p7}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 510
    :cond_f8
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_101

    .line 511
    const-string v2, "PolicyChecker.processPolicies() processing policy: 2.5.29.32.0"

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 514
    :cond_101
    const/4 v7, 0x1

    const-string v5, "2.5.29.32.0"

    move/from16 v1, p0

    move v2, v15

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v7}, Lsun/security/provider/certpath/PolicyChecker;->processParents(IZZLsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;Z)Z

    .line 521
    :cond_10f
    invoke-virtual {v12, v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 522
    invoke-virtual {v12}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11e

    .line 523
    const/4 v1, 0x0

    move-object v12, v1

    .line 525
    .end local v0    # "foundAnyPolicy":Z
    :cond_11e
    move v0, v15

    goto :goto_13a

    .line 454
    .end local v16    # "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    .end local v18    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v2    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :catch_120
    move-exception v0

    .line 455
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Exception while retrieving policyOIDs"

    invoke-direct {v1, v3, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 525
    .end local v15    # "policiesCritical":Z
    .local v0, "policiesCritical":Z
    :cond_129
    if-nez v13, :cond_138

    .line 526
    sget-object v1, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_134

    .line 527
    const-string v3, "PolicyChecker.processPolicies() no policies present in cert"

    invoke-virtual {v1, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 530
    :cond_134
    const/4 v12, 0x0

    move-object/from16 v18, v2

    goto :goto_13a

    .line 525
    :cond_138
    move-object/from16 v18, v2

    .line 536
    .end local v2    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .restart local v18    # "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    :goto_13a
    if-eqz v12, :cond_14c

    .line 537
    if-nez v11, :cond_14c

    .line 539
    move-object/from16 v1, p7

    move/from16 v2, p0

    move/from16 v3, p3

    move-object v4, v12

    move v5, v0

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lsun/security/provider/certpath/PolicyChecker;->processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v12

    .line 548
    :cond_14c
    if-eqz v12, :cond_162

    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_162

    if-eqz v13, :cond_162

    .line 550
    invoke-static {v12, v8, v9, v13}, Lsun/security/provider/certpath/PolicyChecker;->removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v12

    .line 554
    if-eqz v12, :cond_162

    if-eqz v11, :cond_162

    .line 556
    invoke-static {v8, v9, v12}, Lsun/security/provider/certpath/PolicyChecker;->rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v12

    .line 561
    :cond_162
    if-eqz v11, :cond_16d

    .line 563
    move/from16 v1, p2

    move-object/from16 v2, p7

    invoke-static {v1, v2, v11}, Lsun/security/provider/certpath/PolicyChecker;->mergeExplicitPolicy(ILsun/security/x509/X509CertImpl;Z)I

    move-result v1

    .end local p2    # "explicitPolicy":I
    .local v1, "explicitPolicy":I
    goto :goto_171

    .line 561
    .end local v1    # "explicitPolicy":I
    .restart local p2    # "explicitPolicy":I
    :cond_16d
    move/from16 v1, p2

    move-object/from16 v2, p7

    .line 571
    .end local p2    # "explicitPolicy":I
    .restart local v1    # "explicitPolicy":I
    :goto_171
    if-nez v1, :cond_188

    if-eqz v12, :cond_176

    goto :goto_188

    .line 572
    :cond_176
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    sget-object v24, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v20, "non-null policy tree required and policy tree is null"

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v24}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v3

    .line 577
    :cond_188
    :goto_188
    return-object v12
.end method

.method private static blacklist processPolicyMappings(Lsun/security/x509/X509CertImpl;IILsun/security/provider/certpath/PolicyNodeImpl;ZLjava/util/Set;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 30
    .param p0, "currCert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "certIndex"    # I
    .param p2, "policyMapping"    # I
    .param p3, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p4, "policiesCritical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "II",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;)",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 743
    .local p5, "anyQuals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 744
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;

    move-result-object v4

    .line 746
    .local v4, "polMappingsExt":Lsun/security/x509/PolicyMappingsExtension;
    if-nez v4, :cond_d

    .line 747
    return-object v3

    .line 749
    :cond_d
    sget-object v0, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_16

    .line 750
    const-string v5, "PolicyChecker.processPolicyMappings() inside policyMapping check"

    invoke-virtual {v0, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 753
    :cond_16
    const/4 v5, 0x0

    .line 755
    .local v5, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    :try_start_17
    const-string v0, "map"

    invoke-virtual {v4, v0}, Lsun/security/x509/PolicyMappingsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_16a

    .line 764
    .end local v5    # "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .local v0, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    nop

    .line 766
    const/4 v5, 0x0

    .line 767
    .local v5, "childDeleted":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_150

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/x509/CertificatePolicyMap;

    .line 768
    .local v7, "polMap":Lsun/security/x509/CertificatePolicyMap;
    nop

    .line 769
    invoke-virtual {v7}, Lsun/security/x509/CertificatePolicyMap;->getIssuerIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    .line 770
    .local v8, "issuerDomain":Ljava/lang/String;
    nop

    .line 771
    invoke-virtual {v7}, Lsun/security/x509/CertificatePolicyMap;->getSubjectIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v15

    .line 772
    .local v15, "subjectDomain":Ljava/lang/String;
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_75

    .line 773
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicyMappings() issuerDomain = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 775
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicyMappings() subjectDomain = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 779
    :cond_75
    const-string v9, "2.5.29.32.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13d

    .line 785
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12f

    .line 791
    nop

    .line 792
    invoke-virtual {v3, v1, v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v16

    .line 793
    .local v16, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    const/4 v11, -0x1

    if-nez v10, :cond_e6

    .line 794
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_93
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 795
    .local v10, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-gtz v2, :cond_e0

    if-ne v2, v11, :cond_a4

    goto :goto_e0

    .line 797
    :cond_a4
    if-nez v2, :cond_e3

    .line 798
    nop

    .line 799
    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v12

    check-cast v12, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 800
    .local v12, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    sget-object v13, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_c5

    .line 801
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicyMappings() before deleting: policy tree = "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 804
    :cond_c5
    invoke-virtual {v12, v10}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 805
    const/4 v5, 0x1

    .line 806
    if-eqz v13, :cond_e3

    .line 807
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PolicyChecker.processPolicyMappings() after deleting: policy tree = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_e3

    .line 796
    .end local v12    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_e0
    :goto_e0
    invoke-virtual {v10, v15}, Lsun/security/provider/certpath/PolicyNodeImpl;->addExpectedPolicy(Ljava/lang/String;)V

    .line 811
    .end local v10    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_e3
    :goto_e3
    const/4 v11, -0x1

    goto :goto_93

    :cond_e5
    goto :goto_12d

    .line 813
    :cond_e6
    if-gtz v2, :cond_eb

    const/4 v10, -0x1

    if-ne v2, v10, :cond_12d

    .line 814
    :cond_eb
    nop

    .line 815
    invoke-virtual {v3, v1, v9}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v17

    .line 816
    .local v17, "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_f4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 817
    .local v19, "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    nop

    .line 818
    invoke-virtual/range {v19 .. v19}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 820
    .local v20, "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v14, v9

    .line 821
    .local v14, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 823
    new-instance v9, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/16 v21, 0x1

    move-object/from16 v10, v20

    move-object v11, v8

    move-object/from16 v12, p5

    move/from16 v13, p4

    move-object/from16 v22, v14

    .end local v14    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v22, "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v23, v15

    .end local v15    # "subjectDomain":Ljava/lang/String;
    .local v23, "subjectDomain":Ljava/lang/String;
    move/from16 v15, v21

    invoke-direct/range {v9 .. v15}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 826
    .end local v19    # "curAnyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v20    # "curAnyNodeParent":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v22    # "expPols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v15, v23

    goto :goto_f4

    .line 816
    .end local v23    # "subjectDomain":Ljava/lang/String;
    .restart local v15    # "subjectDomain":Ljava/lang/String;
    :cond_12b
    move-object/from16 v23, v15

    .line 829
    .end local v7    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v8    # "issuerDomain":Ljava/lang/String;
    .end local v15    # "subjectDomain":Ljava/lang/String;
    .end local v16    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    .end local v17    # "validAnyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_12d
    :goto_12d
    goto/16 :goto_23

    .line 786
    .restart local v7    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .restart local v8    # "issuerDomain":Ljava/lang/String;
    .restart local v15    # "subjectDomain":Ljava/lang/String;
    :cond_12f
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    sget-object v14, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v10, "encountered a subjectDomainPolicy of ANY_POLICY"

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    .line 780
    :cond_13d
    move-object/from16 v23, v15

    .end local v15    # "subjectDomain":Ljava/lang/String;
    .restart local v23    # "subjectDomain":Ljava/lang/String;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    sget-object v20, Ljava/security/cert/PKIXReason;->INVALID_POLICY:Ljava/security/cert/PKIXReason;

    const-string v16, "encountered an issuerDomainPolicy of ANY_POLICY"

    move-object v15, v6

    invoke-direct/range {v15 .. v20}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v6

    .line 831
    .end local v7    # "polMap":Lsun/security/x509/CertificatePolicyMap;
    .end local v8    # "issuerDomain":Ljava/lang/String;
    .end local v23    # "subjectDomain":Ljava/lang/String;
    :cond_150
    if-eqz v5, :cond_169

    .line 832
    invoke-virtual {v3, v1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 833
    invoke-virtual/range {p3 .. p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_169

    .line 834
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_168

    .line 835
    const-string v7, "setting rootNode to null"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 836
    :cond_168
    const/4 v3, 0x0

    .line 840
    .end local p3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v3, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_169
    return-object v3

    .line 756
    .end local v0    # "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .end local v3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v5, "maps":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/CertificatePolicyMap;>;"
    .restart local p3    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :catch_16a
    move-exception v0

    .line 757
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v6, :cond_177

    .line 758
    const-string v7, "PolicyChecker.processPolicyMappings() mapping exception"

    invoke-virtual {v6, v7}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 762
    :cond_177
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Exception while checking mapping"

    invoke-direct {v6, v7, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static blacklist removeInvalidNodes(Lsun/security/provider/certpath/PolicyNodeImpl;ILjava/util/Set;Lsun/security/x509/CertificatePoliciesExtension;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 16
    .param p0, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p1, "certIndex"    # I
    .param p3, "currCertPolicies"    # Lsun/security/x509/CertificatePoliciesExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/x509/CertificatePoliciesExtension;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 860
    .local p2, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 862
    .local v0, "policyInfo":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/PolicyInformation;>;"
    :try_start_1
    const-string v1, "policies"

    invoke-virtual {p3, v1}, Lsun/security/x509/CertificatePoliciesExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_b8

    move-object v0, v1

    .line 866
    nop

    .line 868
    const/4 v1, 0x0

    .line 869
    .local v1, "childDeleted":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/PolicyInformation;

    .line 870
    .local v3, "curPolInfo":Lsun/security/x509/PolicyInformation;
    nop

    .line 871
    invoke-virtual {v3}, Lsun/security/x509/PolicyInformation;->getPolicyIdentifier()Lsun/security/x509/CertificatePolicyId;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/x509/CertificatePolicyId;->getIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, "curPolicy":Ljava/lang/String;
    sget-object v5, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_3f

    .line 874
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PolicyChecker.processPolicies() processing policy second time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 877
    :cond_3f
    nop

    .line 878
    invoke-virtual {p0, p1, v4}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 879
    .local v5, "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 880
    .local v7, "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 881
    .local v8, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v8}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a4

    .line 882
    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a4

    .line 883
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a4

    .line 884
    sget-object v9, Lsun/security/provider/certpath/PolicyChecker;->debug:Lsun/security/util/Debug;

    if-eqz v9, :cond_8a

    .line 885
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicies() before deleting: policy tree = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 887
    :cond_8a
    invoke-virtual {v8, v7}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 888
    const/4 v1, 0x1

    .line 889
    if-eqz v9, :cond_a4

    .line 890
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PolicyChecker.processPolicies() after deleting: policy tree = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 894
    .end local v7    # "curNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v8    # "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_a4
    goto :goto_48

    .line 895
    .end local v3    # "curPolInfo":Lsun/security/x509/PolicyInformation;
    .end local v4    # "curPolicy":Ljava/lang/String;
    .end local v5    # "validNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_a5
    goto/16 :goto_e

    .line 897
    :cond_a7
    if-eqz v1, :cond_b7

    .line 898
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 899
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 900
    const/4 p0, 0x0

    .line 904
    :cond_b7
    return-object p0

    .line 863
    .end local v1    # "childDeleted":Z
    :catch_b8
    move-exception v1

    .line 864
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Exception while retrieving policyOIDs"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist rewriteLeafNodes(ILjava/util/Set;Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 22
    .param p0, "certIndex"    # I
    .param p2, "rootNode"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ")",
            "Lsun/security/provider/certpath/PolicyNodeImpl;"
        }
    .end annotation

    .line 596
    .local p1, "initPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, p0

    move-object/from16 v1, p2

    .line 597
    const-string v2, "2.5.29.32.0"

    invoke-virtual {v1, v0, v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 598
    .local v2, "anyNodes":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 599
    return-object v1

    .line 601
    :cond_11
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 602
    .local v3, "anyNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v4

    check-cast v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 603
    .local v4, "parentNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v4, v3}, Lsun/security/provider/certpath/PolicyNodeImpl;->deleteChild(Ljava/security/cert/PolicyNode;)V

    .line 605
    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v12, p1

    invoke-direct {v5, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v13, v5

    .line 606
    .local v13, "initial":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 607
    .local v6, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v6}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v13, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 608
    .end local v6    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_34

    .line 609
    :cond_48
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 612
    invoke-virtual {v1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8a

    .line 614
    const/4 v1, 0x0

    .end local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .local v1, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    goto :goto_8a

    .line 617
    .end local v1    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_5d
    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v14

    .line 618
    .local v14, "anyCritical":Z
    nop

    .line 619
    invoke-virtual {v3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyQualifiers()Ljava/util/Set;

    move-result-object v15

    .line 620
    .local v15, "anyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/String;

    .line 621
    .local v17, "policy":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v18

    .line 622
    .local v18, "expectedPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Lsun/security/provider/certpath/PolicyNodeImpl;

    const/4 v11, 0x0

    move-object v6, v4

    move-object/from16 v7, v17

    move-object v8, v15

    move v9, v14

    move-object/from16 v10, v18

    invoke-direct/range {v5 .. v11}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 624
    .end local v17    # "policy":Ljava/lang/String;
    .end local v18    # "expectedPolicies":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_6a

    .line 626
    .end local v14    # "anyCritical":Z
    .end local v15    # "anyQualifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .end local p2    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v1    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_8a
    :goto_8a
    return-object v1
.end method


# virtual methods
.method public whitelist test-api check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .registers 4
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

    .line 180
    .local p2, "unresCritExts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/PolicyChecker;->checkPolicy(Ljava/security/cert/X509Certificate;)V

    .line 182
    if-eqz p2, :cond_32

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 183
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 188
    :cond_32
    return-void
.end method

.method blacklist getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    .line 916
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v0, :cond_6

    .line 917
    const/4 v0, 0x0

    return-object v0

    .line 919
    :cond_6
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    .line 920
    .local v0, "policyTree":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    .line 921
    return-object v0
.end method

.method public whitelist test-api getSupportedExtensions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    if-nez v0, :cond_3e

    .line 157
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    .line 158
    sget-object v1, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    .line 164
    :cond_3e
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyChecker;->supportedExts:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api init(Z)V
    .registers 5
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 120
    if-nez p1, :cond_28

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyChecker;->certIndex:I

    .line 126
    iget-boolean v1, p0, Lsun/security/provider/certpath/PolicyChecker;->expPolicyRequired:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    move v1, v2

    goto :goto_f

    :cond_c
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/2addr v1, v0

    :goto_f
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->explicitPolicy:I

    .line 127
    iget-boolean v1, p0, Lsun/security/provider/certpath/PolicyChecker;->polMappingInhibited:Z

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_1a

    :cond_17
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/2addr v1, v0

    :goto_1a
    iput v1, p0, Lsun/security/provider/certpath/PolicyChecker;->policyMapping:I

    .line 128
    iget-boolean v1, p0, Lsun/security/provider/certpath/PolicyChecker;->anyPolicyInhibited:Z

    if-eqz v1, :cond_21

    goto :goto_25

    :cond_21
    iget v1, p0, Lsun/security/provider/certpath/PolicyChecker;->certPathLen:I

    add-int/lit8 v2, v1, 0x1

    :goto_25
    iput v2, p0, Lsun/security/provider/certpath/PolicyChecker;->inhibitAnyPolicy:I

    .line 129
    return-void

    .line 121
    :cond_28
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "forward checking not supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isForwardCheckingSupported()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method
