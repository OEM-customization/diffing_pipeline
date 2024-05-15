.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private maxPathLength:I


# direct methods
.method static synthetic -get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return v0
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 3
    .param p1, "baseParameters"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 3
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXBuilderParameters;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 32
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 33
    return-void
.end method


# virtual methods
.method public addExcludedCerts(Ljava/util/Set;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "excludedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-object p0
.end method

.method public build()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .registers 3

    .prologue
    .line 89
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)V

    return-object v0
.end method

.method public setMaxPathLength(I)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .registers 4
    .param p1, "maxPathLength"    # I

    .prologue
    .line 77
    const/4 v0, -0x1

    if-ge p1, v0, :cond_c

    .line 79
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_c
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 84
    return-object p0
.end method
