.class Lsun/security/provider/certpath/PKIX;
.super Ljava/lang/Object;
.source "PKIX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/provider/certpath/PKIX$BuilderParams;,
        Lsun/security/provider/certpath/PKIX$CertStoreComparator;,
        Lsun/security/provider/certpath/PKIX$CertStoreTypeException;,
        Lsun/security/provider/certpath/PKIX$ValidatorParams;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static synthetic -get0()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/provider/certpath/PKIX;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/PKIX;->debug:Lsun/security/util/Debug;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkBuilderParams(Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$BuilderParams;
    .registers 3
    .param p0, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 64
    instance-of v0, p0, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_d

    .line 65
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate params, must be an instance of PKIXBuilderParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_d
    new-instance v0, Lsun/security/provider/certpath/PKIX$BuilderParams;

    check-cast p0, Ljava/security/cert/PKIXBuilderParameters;

    .end local p0    # "params":Ljava/security/cert/CertPathParameters;
    invoke-direct {v0, p0}, Lsun/security/provider/certpath/PKIX$BuilderParams;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    return-object v0
.end method

.method static checkParams(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$ValidatorParams;
    .registers 4
    .param p0, "cp"    # Ljava/security/cert/CertPath;
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 54
    instance-of v0, p1, Ljava/security/cert/PKIXParameters;

    if-nez v0, :cond_d

    .line 55
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "inappropriate params, must be an instance of PKIXParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_d
    new-instance v0, Lsun/security/provider/certpath/PKIX$ValidatorParams;

    check-cast p1, Ljava/security/cert/PKIXParameters;

    .end local p1    # "params":Ljava/security/cert/CertPathParameters;
    invoke-direct {v0, p0, p1}, Lsun/security/provider/certpath/PKIX$ValidatorParams;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-object v0
.end method

.method static isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z
    .registers 3
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .prologue
    const/4 v0, 0x0

    .line 47
    instance-of v1, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_e

    .line 48
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0    # "publicKey":Ljava/security/PublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 47
    :cond_e
    return v0
.end method
