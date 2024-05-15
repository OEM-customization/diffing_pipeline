.class Lsun/security/provider/certpath/PKIX$ValidatorParams;
.super Ljava/lang/Object;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/provider/certpath/PKIX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValidatorParams"
.end annotation


# instance fields
.field private anchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private certPath:Ljava/security/cert/CertPath;

.field private certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private checkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private constraints:Ljava/security/cert/CertSelector;

.field private date:Ljava/util/Date;

.field private gotConstraints:Z

.field private gotDate:Z

.field private final params:Ljava/security/cert/PKIXParameters;

.field private policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .registers 5
    .param p1, "cp"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p2}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 93
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "X509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    .line 94
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate CertPath type specified, must be X.509 or X509"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_28
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .registers 6
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    .line 106
    iget-object v2, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anchor$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 107
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getNameConstraints()[B

    move-result-object v2

    if-eqz v2, :cond_f

    .line 108
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 109
    const-string/jumbo v3, "name constraints in trust anchor not supported"

    .line 108
    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_2a
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    .line 113
    return-void
.end method


# virtual methods
.method anyPolicyInhibited()Z
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method certPath()Ljava/security/cert/CertPath;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method certPathCheckers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    if-nez v0, :cond_c

    .line 140
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    .line 141
    :cond_c
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->checkers:Ljava/util/List;

    return-object v0
.end method

.method certStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    if-nez v0, :cond_c

    .line 145
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    .line 146
    :cond_c
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->stores:Ljava/util/List;

    return-object v0
.end method

.method certificates()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    if-nez v1, :cond_e

    .line 124
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    if-nez v1, :cond_11

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    .line 136
    :cond_e
    :goto_e
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    return-object v1

    .line 130
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    iget-object v1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v0, "xc":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 133
    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certs:Ljava/util/List;

    goto :goto_e
.end method

.method date()Ljava/util/Date;
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    if-nez v0, :cond_1a

    .line 150
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    .line 151
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    if-nez v0, :cond_17

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    .line 153
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotDate:Z

    .line 155
    :cond_1a
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date:Ljava/util/Date;

    return-object v0
.end method

.method explicitPolicyRequired()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method getPKIXParameters()Ljava/security/cert/PKIXParameters;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method initialPolicies()Ljava/util/Set;
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
    .line 158
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    if-nez v0, :cond_c

    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    .line 160
    :cond_c
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policies:Ljava/util/Set;

    return-object v0
.end method

.method policyMappingInhibited()Z
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method policyQualifiersRejected()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method revocationEnabled()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    return v0
.end method

.method setCertPath(Ljava/security/cert/CertPath;)V
    .registers 2
    .param p1, "cp"    # Ljava/security/cert/CertPath;

    .prologue
    .line 120
    iput-object p1, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPath:Ljava/security/cert/CertPath;

    .line 121
    return-void
.end method

.method sigProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method targetCertConstraints()Ljava/security/cert/CertSelector;
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    if-nez v0, :cond_f

    .line 164
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->gotConstraints:Z

    .line 167
    :cond_f
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->constraints:Ljava/security/cert/CertSelector;

    return-object v0
.end method

.method trustAnchors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anchors:Ljava/util/Set;

    return-object v0
.end method
