.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private revocationEnabled:Z

.field private targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return v0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 4
    .param p1, "baseParameters"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 63
    iput v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 83
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 84
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 85
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get6(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get3(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get5(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get4(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 90
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get7(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->-get8(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 92
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .registers 6
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXParameters;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 63
    iput v3, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v3, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 69
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXParameters;

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 70
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v1

    .line 71
    .local v1, "constraints":Ljava/security/cert/CertSelector;
    if-eqz v1, :cond_3d

    .line 73
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 75
    :cond_3d
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 76
    .local v0, "checkDate":Ljava/util/Date;
    if-nez v0, :cond_48

    new-instance v0, Ljava/util/Date;

    .end local v0    # "checkDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_48
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 77
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 78
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 79
    return-void
.end method


# virtual methods
.method public addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3
    .param p1, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3
    .param p1, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object p0
.end method

.method public addNamedCRLStore(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 4
    .param p1, "issuerAltName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object p0
.end method

.method public addNamedCertificateStore(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 4
    .param p1, "issuerAltName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object p0
.end method

.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 3

    .prologue
    .line 193
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    return-object v0
.end method

.method public setRevocationEnabled(Z)V
    .registers 2
    .param p1, "revocationEnabled"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 189
    return-void
.end method

.method public setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .param p1, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 128
    return-object p0
.end method

.method public setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 163
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 165
    return-object p0
.end method

.method public setTrustAnchors(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 178
    return-object p0
.end method

.method public setUseDeltasEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .param p1, "useDeltas"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 140
    return-object p0
.end method

.method public setValidityModel(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .param p1, "validityModel"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 152
    return-object p0
.end method
