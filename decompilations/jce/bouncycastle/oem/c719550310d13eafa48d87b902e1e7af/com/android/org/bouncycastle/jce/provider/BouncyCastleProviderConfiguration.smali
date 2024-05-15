.class Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;
.super Ljava/lang/Object;
.source "BouncyCastleProviderConfiguration.java"

# interfaces
.implements Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# static fields
.field private static BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_DH_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

.field private static BC_EC_PERMISSION:Ljava/security/Permission;


# instance fields
.field private volatile acceptableNamedCurves:Ljava/util/Set;

.field private volatile additionalECParameters:Ljava/util/Map;

.field private volatile dhDefaultParams:Ljava/lang/Object;

.field private dhThreadSpec:Ljava/lang/ThreadLocal;

.field private volatile ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

.field private ecThreadSpec:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 22
    const-string/jumbo v1, "BC"

    const-string/jumbo v2, "threadLocalEcImplicitlyCa"

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 23
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 24
    const-string/jumbo v1, "BC"

    const-string/jumbo v2, "ecImplicitlyCa"

    .line 23
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 26
    const-string/jumbo v1, "BC"

    const-string/jumbo v2, "threadLocalDhDefaultParams"

    .line 25
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 28
    const-string/jumbo v1, "BC"

    const-string/jumbo v2, "DhDefaultParams"

    .line 27
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 30
    const-string/jumbo v1, "BC"

    const-string/jumbo v2, "acceptableEcCurves"

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 32
    const-string/jumbo v1, "BC"

    const-string/jumbo v2, "additionalEcParameters"

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    .line 18
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public getAcceptableNamedCurves()Ljava/util/Set;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalECParameters()Ljava/util/Map;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .registers 8
    .param p1, "keySize"    # I

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v4, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, "params":Ljava/lang/Object;
    if-nez v1, :cond_b

    .line 169
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    .line 172
    :cond_b
    instance-of v4, v1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v4, :cond_1d

    move-object v2, v1

    .line 174
    check-cast v2, Ljavax/crypto/spec/DHParameterSpec;

    .line 176
    .local v2, "spec":Ljavax/crypto/spec/DHParameterSpec;
    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_3a

    .line 178
    return-object v2

    .line 181
    .end local v2    # "spec":Ljavax/crypto/spec/DHParameterSpec;
    :cond_1d
    instance-of v4, v1, [Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v4, :cond_3a

    move-object v3, v1

    .line 183
    check-cast v3, [Ljavax/crypto/spec/DHParameterSpec;

    .line 185
    .local v3, "specs":[Ljavax/crypto/spec/DHParameterSpec;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    array-length v4, v3

    if-eq v0, v4, :cond_3a

    .line 187
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_37

    .line 189
    aget-object v4, v3, v0

    return-object v4

    .line 185
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 194
    .end local v0    # "i":I
    .end local v3    # "specs":[Ljavax/crypto/spec/DHParameterSpec;
    :cond_3a
    return-object v5
.end method

.method public getEcImplicitlyCa()Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .registers 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 156
    .local v0, "spec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_b

    .line 158
    return-object v0

    .line 161
    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    return-object v1
.end method

.method setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 44
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 46
    .local v2, "securityManager":Ljava/lang/SecurityManager;
    const-string/jumbo v3, "threadLocalEcImplicitlyCa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 50
    if-eqz v2, :cond_15

    .line 52
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 55
    :cond_15
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_1b

    if-nez p2, :cond_26

    :cond_1b
    move-object v0, p2

    .line 57
    check-cast v0, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 64
    .end local p2    # "parameter":Ljava/lang/Object;
    .local v0, "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :goto_1e
    if-nez v0, :cond_2d

    .line 66
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 150
    .end local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_25
    :goto_25
    return-void

    .line 61
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_26
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .restart local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_1e

    .line 70
    :cond_2d
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_25

    .line 73
    .end local v0    # "curveSpec":Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_33
    const-string/jumbo v3, "ecImplicitlyCa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 75
    if-eqz v2, :cond_43

    .line 77
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 80
    :cond_43
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    if-nez v3, :cond_49

    if-nez p2, :cond_4e

    .line 82
    :cond_49
    check-cast p2, Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    .end local p2    # "parameter":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_25

    .line 86
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_4e
    check-cast p2, Ljava/security/spec/ECParameterSpec;

    .end local p2    # "parameter":Ljava/lang/Object;
    invoke-static {p2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->ecImplicitCaParams:Lcom/android/org/bouncycastle/jce/spec/ECParameterSpec;

    goto :goto_25

    .line 89
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_57
    const-string/jumbo v3, "threadLocalDhDefaultParams"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 93
    if-eqz v2, :cond_67

    .line 95
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_LOCAL_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 98
    :cond_67
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_71

    instance-of v3, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_71

    if-nez p2, :cond_7a

    .line 100
    :cond_71
    move-object v1, p2

    .line 107
    .local v1, "dhSpec":Ljava/lang/Object;
    if-nez p2, :cond_83

    .line 109
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_25

    .line 104
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :cond_7a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "not a valid DHParameterSpec"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    .restart local v1    # "dhSpec":Ljava/lang/Object;
    :cond_83
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhThreadSpec:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_25

    .line 116
    .end local v1    # "dhSpec":Ljava/lang/Object;
    :cond_89
    const-string/jumbo v3, "DhDefaultParams"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 118
    if-eqz v2, :cond_99

    .line 120
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_DH_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 123
    :cond_99
    instance-of v3, p2, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_a3

    instance-of v3, p2, [Ljavax/crypto/spec/DHParameterSpec;

    if-nez v3, :cond_a3

    if-nez p2, :cond_a6

    .line 125
    :cond_a3
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->dhDefaultParams:Ljava/lang/Object;

    goto :goto_25

    .line 129
    :cond_a6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "not a valid DHParameterSpec or DHParameterSpec[]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_af
    const-string/jumbo v3, "acceptableEcCurves"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 134
    if-eqz v2, :cond_bf

    .line 136
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 139
    :cond_bf
    check-cast p2, Ljava/util/Set;

    .end local p2    # "parameter":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->acceptableNamedCurves:Ljava/util/Set;

    goto/16 :goto_25

    .line 141
    .restart local p2    # "parameter":Ljava/lang/Object;
    :cond_c5
    const-string/jumbo v3, "additionalEcParameters"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 143
    if-eqz v2, :cond_d5

    .line 145
    sget-object v3, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->BC_ADDITIONAL_EC_CURVE_PERMISSION:Ljava/security/Permission;

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 148
    :cond_d5
    check-cast p2, Ljava/util/Map;

    .end local p2    # "parameter":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->additionalECParameters:Ljava/util/Map;

    goto/16 :goto_25
.end method
