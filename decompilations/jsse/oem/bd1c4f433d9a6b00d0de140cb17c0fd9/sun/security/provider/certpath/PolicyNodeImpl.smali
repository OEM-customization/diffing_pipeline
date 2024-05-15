.class final Lsun/security/provider/certpath/PolicyNodeImpl;
.super Ljava/lang/Object;
.source "PolicyNodeImpl.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# static fields
.field private static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"


# instance fields
.field private isImmutable:Z

.field private mChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCriticalityIndicator:Z

.field private mDepth:I

.field private mExpectedPolicySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalExpectedPolicySet:Z

.field private mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

.field private mQualifierSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPolicy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V
    .registers 9
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p2, "validPolicy"    # Ljava/lang/String;
    .param p4, "criticalityIndicator"    # Z
    .param p6, "generatedByPolicyMapping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "qualifierSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PolicyQualifierInfo;>;"
    .local p5, "expectedPolicySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    .line 93
    iput-object p1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    .line 96
    if-eqz p2, :cond_3f

    .line 97
    iput-object p2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    .line 101
    :goto_13
    if-eqz p3, :cond_45

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    .line 106
    :goto_1c
    iput-boolean p4, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    .line 108
    if-eqz p5, :cond_4d

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    .line 113
    :goto_27
    xor-int/lit8 v0, p6, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    .line 116
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-eqz v0, :cond_55

    .line 117
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    .line 118
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V

    .line 122
    :goto_3e
    return-void

    .line 99
    :cond_3f
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    goto :goto_13

    .line 104
    :cond_45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    goto :goto_1c

    .line 111
    :cond_4d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    goto :goto_27

    .line 120
    :cond_55
    iput v1, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    goto :goto_3e
.end method

.method constructor <init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .registers 10
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;
    .param p2, "node"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    .prologue
    .line 133
    iget-object v2, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    iget-object v3, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    .line 134
    iget-boolean v4, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    iget-object v5, p2, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 133
    invoke-direct/range {v0 .. v6}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 135
    return-void
.end method

.method private addChild(Lsun/security/provider/certpath/PolicyNodeImpl;)V
    .registers 4
    .param p1, "child"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    .prologue
    .line 215
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_d

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_d
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method private copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 6
    .param p1, "parent"    # Lsun/security/provider/certpath/PolicyNodeImpl;

    .prologue
    .line 287
    new-instance v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-direct {v0, p1, p0}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Lsun/security/provider/certpath/PolicyNodeImpl;)V

    .line 289
    .local v0, "newNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 290
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    goto :goto_b

    .line 293
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_1b
    return-object v0
.end method

.method private getPolicyNodes(ILjava/util/Set;)V
    .registers 6
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ne v2, p1, :cond_8

    .line 315
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_7
    return-void

    .line 317
    :cond_8
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 318
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v0, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    goto :goto_e
.end method

.method private getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;
    .registers 9
    .param p1, "depth"    # I
    .param p2, "expectedOID"    # Ljava/lang/String;
    .param p3, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 349
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ge v3, p1, :cond_23

    .line 350
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 351
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-direct {v0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 356
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v1    # "node$iterator":Ljava/util/Iterator;
    :cond_23
    if-eqz p3, :cond_34

    .line 357
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    const-string/jumbo v4, "2.5.29.32.0"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 358
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_33
    :goto_33
    return-object v2

    .line 360
    :cond_34
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 361
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_33
.end method

.method private static policyToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "oid"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string/jumbo v0, "2.5.29.32.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 393
    const-string/jumbo v0, "anyPolicy"

    return-object v0

    .line 395
    :cond_d
    return-object p0
.end method


# virtual methods
.method addExpectedPolicy(Ljava/lang/String;)V
    .registers 4
    .param p1, "expectedPolicy"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_d

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_d
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    if-eqz v0, :cond_19

    .line 234
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mOriginalExpectedPolicySet:Z

    .line 237
    :cond_19
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method asString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 403
    iget-object v5, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    if-nez v5, :cond_8

    .line 404
    const-string/jumbo v5, "anyPolicy  ROOT\n"

    return-object v5

    .line 406
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v1

    .local v1, "n":I
    :goto_12
    if-ge v0, v1, :cond_1d

    .line 408
    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 410
    :cond_1d
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string/jumbo v5, "  CRIT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->isCritical()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    const-string/jumbo v5, "  EP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "policy$iterator":Ljava/util/Iterator;
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "policy":Ljava/lang/String;
    invoke-static {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->policyToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 418
    .end local v2    # "policy":Ljava/lang/String;
    :cond_5d
    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getDepth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    const-string/jumbo v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree(Lsun/security/provider/certpath/PolicyNodeImpl;)Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method deleteChild(Ljava/security/cert/PolicyNode;)V
    .registers 4
    .param p1, "childNode"    # Ljava/security/cert/PolicyNode;

    .prologue
    .line 270
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v0, :cond_d

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PolicyNode is immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_d
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

.method public getChildren()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
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
    .line 164
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mExpectedPolicySet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mParent:Lsun/security/provider/certpath/PolicyNodeImpl;

    return-object v0
.end method

.method getPolicyNodes(I)Ljava/util/Set;
    .registers 3
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 304
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    invoke-direct {p0, p1, v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(ILjava/util/Set;)V

    .line 305
    return-object v0
.end method

.method getPolicyNodesExpected(ILjava/lang/String;Z)Ljava/util/Set;
    .registers 5
    .param p1, "depth"    # I
    .param p2, "expectedOID"    # Ljava/lang/String;
    .param p3, "matchAny"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    const-string/jumbo v0, "2.5.29.32.0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 338
    invoke-virtual {p0, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodes(I)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 340
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesExpectedHelper(ILjava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "depth"    # I
    .param p2, "validOID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lsun/security/provider/certpath/PolicyNodeImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 379
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    iget v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    if-ge v3, p1, :cond_23

    .line 380
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 381
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0, p1, p2}, Lsun/security/provider/certpath/PolicyNodeImpl;->getPolicyNodesValid(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 384
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v1    # "node$iterator":Ljava/util/Iterator;
    :cond_23
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 385
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_2e
    return-object v2
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PolicyQualifierInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mQualifierSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mValidPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public isCritical()Z
    .registers 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mCriticalityIndicator:Z

    return v0
.end method

.method isImmutable()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    return v0
.end method

.method prune(I)V
    .registers 6
    .param p1, "depth"    # I

    .prologue
    .line 246
    iget-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v2, :cond_d

    .line 247
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "PolicyNode is immutable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_d
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_16

    .line 251
    return-void

    .line 253
    :cond_16
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/provider/certpath/PolicyNodeImpl;>;"
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 256
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v1, p1}, Lsun/security/provider/certpath/PolicyNodeImpl;->prune(I)V

    .line 259
    iget-object v2, v1, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_1c

    iget v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mDepth:I

    add-int/lit8 v2, v2, 0x1

    if-le p1, v2, :cond_1c

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    .line 262
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_3d
    return-void
.end method

.method setImmutable()V
    .registers 4

    .prologue
    .line 200
    iget-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    if-eqz v2, :cond_5

    .line 201
    return-void

    .line 202
    :cond_5
    iget-object v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "node$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 203
    .local v0, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    goto :goto_b

    .line 205
    .end local v0    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_1b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->isImmutable:Z

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/provider/certpath/PolicyNodeImpl;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lsun/security/provider/certpath/PolicyNodeImpl;->mChildren:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "node$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 184
    .local v1, "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 186
    .end local v1    # "node":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
