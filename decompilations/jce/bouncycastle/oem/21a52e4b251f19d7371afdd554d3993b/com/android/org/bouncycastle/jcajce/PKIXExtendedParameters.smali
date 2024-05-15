.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final blacklist PKIX_VALIDITY_MODEL:I


# instance fields
.field private final blacklist baseParameters:Ljava/security/cert/PKIXParameters;

.field private final blacklist date:Ljava/util/Date;

.field private final blacklist extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist revocationEnabled:Z

.field private final blacklist targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private final blacklist trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist useDeltas:Z

.field private final blacklist validityModel:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1000(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 215
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1100(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    .line 216
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1200(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1300(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    .line 218
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1400(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1500(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    .line 220
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1600(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    .line 221
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1700(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    .line 222
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1800(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    .line 223
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$1900(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    .line 224
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->access$2000(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    .line 225
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .param p2, "x1"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$1;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return v0
.end method

.method static synthetic blacklist access$800(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 23
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 1

    .line 280
    return-object p0
.end method

.method public blacklist getCRLStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getCertPathCheckers()Ljava/util/List;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificateStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDate()Ljava/util/Date;
    .registers 4

    .line 250
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public blacklist getInitialPolicies()Ljava/util/Set;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedCRLStoreMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getNamedCertificateStoreMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPolicyQualifiersRejected()Z
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method public blacklist getSigProvider()Ljava/lang/String;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTargetConstraints()Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method public blacklist getTrustAnchors()Ljava/util/Set;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getValidityModel()I
    .registers 2

    .line 275
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return v0
.end method

.method public blacklist isAnyPolicyInhibited()Z
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method public blacklist isExplicitPolicyRequired()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method public blacklist isPolicyMappingInhibited()Z
    .registers 2

    .line 325
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method public blacklist isRevocationEnabled()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    return v0
.end method

.method public blacklist isUseDeltasEnabled()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return v0
.end method
