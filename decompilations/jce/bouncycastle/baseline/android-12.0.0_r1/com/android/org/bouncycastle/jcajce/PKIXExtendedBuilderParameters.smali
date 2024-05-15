.class public Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    }
.end annotation


# instance fields
.field private final blacklist baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final blacklist excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist maxPathLength:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->access$100(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 103
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->access$200(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 104
    # getter for: Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->access$300(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    .line 105
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .param p2, "x1"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$1;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1

    .line 141
    return-object p0
.end method

.method public blacklist getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method public blacklist getExcludedCerts()Ljava/util/Set;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getMaxPathLength()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    return v0
.end method
