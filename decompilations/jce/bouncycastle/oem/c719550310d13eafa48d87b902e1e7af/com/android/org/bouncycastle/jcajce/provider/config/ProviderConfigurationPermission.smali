.class public Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
.super Ljava/security/BasicPermission;
.source "ProviderConfigurationPermission.java"


# static fields
.field private static final ACCEPTABLE_EC_CURVES:I = 0x10

.field private static final ACCEPTABLE_EC_CURVES_STR:Ljava/lang/String; = "acceptableeccurves"

.field private static final ADDITIONAL_EC_PARAMETERS:I = 0x20

.field private static final ADDITIONAL_EC_PARAMETERS_STR:Ljava/lang/String; = "additionalecparameters"

.field private static final ALL:I = 0x3f

.field private static final ALL_STR:Ljava/lang/String; = "all"

.field private static final DH_DEFAULT_PARAMS:I = 0x8

.field private static final DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "dhdefaultparams"

.field private static final EC_IMPLICITLY_CA:I = 0x2

.field private static final EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "ecimplicitlyca"

.field private static final THREAD_LOCAL_DH_DEFAULT_PARAMS:I = 0x4

.field private static final THREAD_LOCAL_DH_DEFAULT_PARAMS_STR:Ljava/lang/String; = "threadlocaldhdefaultparams"

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA:I = 0x1

.field private static final THREAD_LOCAL_EC_IMPLICITLY_CA_STR:Ljava/lang/String; = "threadlocalecimplicitlyca"


# instance fields
.field private final actions:Ljava/lang/String;

.field private final permissionMask:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "all"

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 56
    const/16 v0, 0x3f

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "actions"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    .line 63
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->calculateMask(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    .line 64
    return-void
.end method

.method private calculateMask(Ljava/lang/String;)I
    .registers 7
    .param p1, "actions"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " ,"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v2, "tok":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    .line 72
    .local v0, "mask":I
    :cond_d
    :goto_d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 74
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v3, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 78
    or-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 80
    :cond_23
    const-string/jumbo v3, "ecimplicitlyca"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 82
    or-int/lit8 v0, v0, 0x2

    goto :goto_d

    .line 84
    :cond_2f
    const-string/jumbo v3, "threadlocaldhdefaultparams"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 86
    or-int/lit8 v0, v0, 0x4

    goto :goto_d

    .line 88
    :cond_3b
    const-string/jumbo v3, "dhdefaultparams"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 90
    or-int/lit8 v0, v0, 0x8

    goto :goto_d

    .line 92
    :cond_47
    const-string/jumbo v3, "acceptableeccurves"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 94
    or-int/lit8 v0, v0, 0x10

    goto :goto_d

    .line 96
    :cond_53
    const-string/jumbo v3, "additionalecparameters"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 98
    or-int/lit8 v0, v0, 0x20

    goto :goto_d

    .line 100
    :cond_5f
    const-string/jumbo v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 102
    or-int/lit8 v0, v0, 0x3f

    goto :goto_d

    .line 106
    .end local v1    # "s":Ljava/lang/String;
    :cond_6b
    if-nez v0, :cond_76

    .line 108
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "unknown permissions passed to mask"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_76
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 140
    if-ne p1, p0, :cond_5

    .line 142
    const/4 v1, 0x1

    return v1

    .line 145
    :cond_5
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    if-eqz v2, :cond_1f

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 149
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_1e

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1e
    return v1

    .line 152
    .end local v0    # "other":Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    :cond_1f
    return v1
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->actions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 6
    .param p1, "permission"    # Ljava/security/Permission;

    .prologue
    const/4 v1, 0x0

    .line 122
    instance-of v2, p1, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    if-nez v2, :cond_6

    .line 124
    return v1

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 129
    return v1

    :cond_15
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;

    .line 134
    .local v0, "other":Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;
    iget v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    and-int/2addr v2, v3

    iget v3, v0, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfigurationPermission;->permissionMask:I

    if-ne v2, v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method
