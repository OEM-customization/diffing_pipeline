.class public Lsun/security/util/CertConstraintParameters;
.super Ljava/lang/Object;
.source "CertConstraintParameters.java"


# instance fields
.field private final cert:Ljava/security/cert/X509Certificate;

.field private final trustedMatch:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/util/CertConstraintParameters;-><init>(Ljava/security/cert/X509Certificate;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Z)V
    .registers 3
    .param p1, "c"    # Ljava/security/cert/X509Certificate;
    .param p2, "match"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lsun/security/util/CertConstraintParameters;->cert:Ljava/security/cert/X509Certificate;

    .line 44
    iput-boolean p2, p0, Lsun/security/util/CertConstraintParameters;->trustedMatch:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lsun/security/util/CertConstraintParameters;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isTrustedMatch()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lsun/security/util/CertConstraintParameters;->trustedMatch:Z

    return v0
.end method
