.class public Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private additionalLocationsEnabled:Z

.field private additionalStores:Ljava/util/List;

.field private attrCertCheckers:Ljava/util/Set;

.field private necessaryACAttributes:Ljava/util/Set;

.field private prohibitedACAttributes:Ljava/util/Set;

.field private selector:Lcom/android/org/bouncycastle/util/Selector;

.field private stores:Ljava/util/List;

.field private trustedACIssuers:Ljava/util/Set;

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 170
    iput v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 172
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 71
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    .registers 5
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    .line 92
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 93
    return-object v1

    .line 88
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_d
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addAddionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .registers 2
    .param p1, "store"    # Lcom/android/org/bouncycastle/util/Store;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V

    .line 305
    return-void
.end method

.method public addAdditionalStore(Lcom/android/org/bouncycastle/util/Store;)V
    .registers 3
    .param p1, "store"    # Lcom/android/org/bouncycastle/util/Store;

    .prologue
    .line 293
    if-eqz p1, :cond_7

    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_7
    return-void
.end method

.method public addStore(Lcom/android/org/bouncycastle/util/Store;)V
    .registers 3
    .param p1, "store"    # Lcom/android/org/bouncycastle/util/Store;

    .prologue
    .line 270
    if-eqz p1, :cond_7

    .line 272
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_7
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 352
    :try_start_0
    new-instance v1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    .line 359
    .local v1, "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 360
    return-object v1

    .line 355
    .end local v1    # "params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_d
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAdditionalStores()Ljava/util/List;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttrCertCheckers()Ljava/util/Set;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNecessaryACAttributes()Ljava/util/Set;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProhibitedACAttributes()Ljava/util/Set;
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .registers 3

    .prologue
    .line 334
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetConstraints()Lcom/android/org/bouncycastle/util/Selector;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    if-eqz v0, :cond_e

    .line 408
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    return-object v0

    .line 412
    :cond_e
    return-object v1
.end method

.method public getTrustedACIssuers()Ljava/util/Set;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidityModel()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return v0
.end method

.method public isAdditionalLocationsEnabled()Z
    .registers 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return v0
.end method

.method public isUseDeltasEnabled()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return v0
.end method

.method public setAdditionalLocationsEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 383
    return-void
.end method

.method public setAttrCertCheckers(Ljava/util/Set;)V
    .registers 6
    .param p1, "attrCertCheckers"    # Ljava/util/Set;

    .prologue
    .line 643
    if-nez p1, :cond_8

    .line 645
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 646
    return-void

    .line 648
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    if-nez v1, :cond_c

    .line 652
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 653
    const-class v3, Lcom/android/org/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 653
    const-string/jumbo v3, "."

    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_41
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 657
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 658
    return-void
.end method

.method public setCertStores(Ljava/util/List;)V
    .registers 4
    .param p1, "stores"    # Ljava/util/List;

    .prologue
    .line 212
    if-eqz p1, :cond_16

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    .local v0, "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_6

    .line 220
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method public setNecessaryACAttributes(Ljava/util/Set;)V
    .registers 5
    .param p1, "necessaryACAttributes"    # Ljava/util/Set;

    .prologue
    .line 555
    if-nez p1, :cond_8

    .line 557
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 558
    return-void

    .line 560
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_c

    .line 564
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 569
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 570
    return-void
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .registers 6
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    .line 106
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 107
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 108
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    .line 109
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    .line 110
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    .line 111
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    .line 112
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 113
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    .line 114
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 118
    :try_start_4e
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_55} :catch_a5

    .line 125
    instance-of v3, p1, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v3, :cond_a4

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 128
    .local v0, "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    iget v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput v3, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 129
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 130
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iput-boolean v3, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 131
    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    if-nez v3, :cond_b0

    :goto_6c
    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 135
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 136
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 137
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 138
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 140
    .end local v0    # "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_a4
    return-void

    .line 121
    :catch_a5
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "_params":Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_b0
    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_6c
.end method

.method public setProhibitedACAttributes(Ljava/util/Set;)V
    .registers 5
    .param p1, "prohibitedACAttributes"    # Ljava/util/Set;

    .prologue
    .line 600
    if-nez p1, :cond_8

    .line 602
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 603
    return-void

    .line 605
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_c

    .line 609
    new-instance v1, Ljava/lang/ClassCastException;

    const-string/jumbo v2, "All elements of set must be of type String."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 614
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 615
    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .registers 5
    .param p1, "stores"    # Ljava/util/List;

    .prologue
    .line 235
    if-nez p1, :cond_a

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 252
    :goto_9
    return-void

    .line 241
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/org/bouncycastle/util/Store;

    if-nez v1, :cond_e

    .line 245
    new-instance v1, Ljava/lang/ClassCastException;

    .line 246
    const-string/jumbo v2, "All elements of list must be of type org.bouncycastle.util.Store."

    .line 245
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    goto :goto_9
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .registers 3
    .param p1, "selector"    # Ljava/security/cert/CertSelector;

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 467
    if-eqz p1, :cond_f

    .line 470
    check-cast p1, Ljava/security/cert/X509CertSelector;

    .line 469
    .end local p1    # "selector":Ljava/security/cert/CertSelector;
    invoke-static {p1}, Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    .line 476
    :goto_e
    return-void

    .line 474
    .restart local p1    # "selector":Ljava/security/cert/CertSelector;
    :cond_f
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_e
.end method

.method public setTargetConstraints(Lcom/android/org/bouncycastle/util/Selector;)V
    .registers 3
    .param p1, "selector"    # Lcom/android/org/bouncycastle/util/Selector;

    .prologue
    const/4 v0, 0x0

    .line 437
    if-eqz p1, :cond_c

    .line 439
    invoke-interface {p1}, Lcom/android/org/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/util/Selector;

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    .line 445
    :goto_b
    return-void

    .line 443
    :cond_c
    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lcom/android/org/bouncycastle/util/Selector;

    goto :goto_b
.end method

.method public setTrustedACIssuers(Ljava/util/Set;)V
    .registers 6
    .param p1, "trustedACIssuers"    # Ljava/util/Set;

    .prologue
    .line 509
    if-nez p1, :cond_8

    .line 511
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 512
    return-void

    .line 514
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-nez v1, :cond_c

    .line 518
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "All elements of set must be of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-class v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    const-string/jumbo v3, "."

    .line 518
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_41
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 523
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 524
    return-void
.end method

.method public setUseDeltasEnabled(Z)V
    .registers 2
    .param p1, "useDeltas"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 192
    return-void
.end method

.method public setValidityModel(I)V
    .registers 2
    .param p1, "validityModel"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/android/org/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 345
    return-void
.end method
