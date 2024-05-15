.class public Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CRLSelector;

.field private blacklist completeCRLEnabled:Z

.field private blacklist deltaCRLIndicator:Z

.field private blacklist issuingDistributionPoint:[B

.field private blacklist issuingDistributionPointEnabled:Z

.field private blacklist maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/security/cert/CRLSelector;)V
    .registers 4
    .param p1, "crlSelector"    # Ljava/security/cert/CRLSelector;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 41
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 42
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 51
    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLSelector;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 52
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .line 34
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return v0
.end method

.method static synthetic blacklist access$300(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .line 34
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .line 34
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .line 34
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return v0
.end method


# virtual methods
.method public blacklist build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$1;)V

    return-object v0
.end method

.method public blacklist setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2
    .param p1, "completeCRLEnabled"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 68
    return-object p0
.end method

.method public blacklist setDeltaCRLIndicatorEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2
    .param p1, "deltaCRLIndicator"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 85
    return-object p0
.end method

.method public blacklist setIssuingDistributionPoint([B)V
    .registers 3
    .param p1, "issuingDistributionPoint"    # [B

    .line 135
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 136
    return-void
.end method

.method public blacklist setIssuingDistributionPointEnabled(Z)V
    .registers 2
    .param p1, "issuingDistributionPointEnabled"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 113
    return-void
.end method

.method public blacklist setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    .line 100
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 101
    return-void
.end method
