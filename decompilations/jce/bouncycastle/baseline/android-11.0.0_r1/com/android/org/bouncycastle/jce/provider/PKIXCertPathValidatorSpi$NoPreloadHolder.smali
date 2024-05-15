.class Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
.super Ljava/lang/Object;
.source "PKIXCertPathValidatorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final blacklist blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000()Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->blacklist:Lcom/android/org/bouncycastle/jce/provider/CertBlacklist;

    return-object v0
.end method
