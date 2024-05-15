.class Ljavax/crypto/CryptoPermission;
.super Ljava/security/Permission;
.source "CryptoPermission.java"


# static fields
.field static final ALG_NAME_WILDCARD:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "alg"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I

    .prologue
    .line 42
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "exemptionMechanism"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "algParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 46
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)V
    .registers 6
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "maxKeySize"    # I
    .param p3, "algParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "exemptionMechanism"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "alg"    # Ljava/lang/String;
    .param p2, "exemptionMechanism"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method final getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method final getCheckParam()Z
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method final getExemptionMechanism()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method final getMaxKeySize()I
    .registers 2

    .prologue
    .line 77
    const v0, 0x7fffffff

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "p"    # Ljava/security/Permission;

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method
