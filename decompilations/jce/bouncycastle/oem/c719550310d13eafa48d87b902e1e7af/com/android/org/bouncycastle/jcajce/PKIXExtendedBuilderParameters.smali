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
.field private final baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private final excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final maxPathLength:I


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-get0(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 100
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-get1(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 101
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->-get2(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .param p2, "-this1"    # Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 138
    return-object p0
.end method

.method public getBaseParameters()Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->baseParameters:Lcom/android/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->excludedCerts:Ljava/util/Set;

    return-object v0
.end method

.method public getMaxPathLength()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/android/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->maxPathLength:I

    return v0
.end method
