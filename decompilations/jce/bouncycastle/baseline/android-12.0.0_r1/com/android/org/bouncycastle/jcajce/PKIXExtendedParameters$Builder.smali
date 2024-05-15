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
.field private final blacklist baseParameters:Ljava/security/cert/PKIXParameters;

.field private final blacklist date:Ljava/util/Date;

.field private blacklist extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist revocationEnabled:Z

.field private blacklist targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private blacklist trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist useDeltas:Z

.field private final blacklist validityDate:Ljava/util/Date;

.field private blacklist validityModel:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 4
    .param p1, "baseParameters"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 82
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
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 83
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$000(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 84
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$100(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    .line 85
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$200(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 86
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$300(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$400(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$500(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$600(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$700(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 91
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$800(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 92
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->access$900(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 93
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 94
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/cert/PKIXParameters;)V
    .registers 4
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXParameters;

    .line 68
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
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 69
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 70
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    .line 71
    .local v0, "constraints":Ljava/security/cert/CertSelector;
    if-eqz v0, :cond_3d

    .line 73
    new-instance v1, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 75
    :cond_3d
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    .line 76
    if-nez v1, :cond_4a

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :cond_4a
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 77
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 78
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 79
    return-void
.end method

.method static synthetic blacklist access$1100(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method static synthetic blacklist access$1200(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$1700(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method static synthetic blacklist access$1900(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return v0
.end method

.method static synthetic blacklist access$2000(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return v0
.end method

.method static synthetic blacklist access$2100(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return v0
.end method

.method static synthetic blacklist access$2200(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public blacklist addCRLStore(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3
    .param p1, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    .line 113
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-object p0
.end method

.method public blacklist addCertificateStore(Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3
    .param p1, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    .line 99
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object p0
.end method

.method public blacklist addNamedCRLStore(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 4
    .param p1, "issuerAltName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;

    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object p0
.end method

.method public blacklist addNamedCertificateStore(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 4
    .param p1, "issuerAltName"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;

    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object p0
.end method

.method public blacklist build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 3

    .line 194
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$1;)V

    return-object v0
.end method

.method public blacklist setRevocationEnabled(Z)V
    .registers 2
    .param p1, "revocationEnabled"    # Z

    .line 189
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 190
    return-void
.end method

.method public blacklist setTargetConstraints(Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .param p1, "selector"    # Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 127
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 129
    return-object p0
.end method

.method public blacklist setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 3
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    .line 164
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 166
    return-object p0
.end method

.method public blacklist setTrustAnchors(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;"
        }
    .end annotation

    .line 177
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 179
    return-object p0
.end method

.method public blacklist setUseDeltasEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .param p1, "useDeltas"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 141
    return-object p0
.end method

.method public blacklist setValidityModel(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .registers 2
    .param p1, "validityModel"    # I

    .line 151
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 153
    return-object p0
.end method
