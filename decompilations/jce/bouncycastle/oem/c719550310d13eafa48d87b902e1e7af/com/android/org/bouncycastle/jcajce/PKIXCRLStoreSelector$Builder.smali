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
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .registers 4
    .param p1, "crlSelector"    # Ljava/security/cert/CRLSelector;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 37
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 38
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 39
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 48
    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLSelector;

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 49
    return-void
.end method


# virtual methods
.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V

    return-object v0
.end method

.method public setCompleteCRLEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2
    .param p1, "completeCRLEnabled"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 65
    return-object p0
.end method

.method public setDeltaCRLIndicatorEnabled(Z)Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2
    .param p1, "deltaCRLIndicator"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 82
    return-object p0
.end method

.method public setIssuingDistributionPoint([B)V
    .registers 3
    .param p1, "issuingDistributionPoint"    # [B

    .prologue
    .line 132
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 133
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .registers 2
    .param p1, "issuingDistributionPointEnabled"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 110
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 98
    return-void
.end method
