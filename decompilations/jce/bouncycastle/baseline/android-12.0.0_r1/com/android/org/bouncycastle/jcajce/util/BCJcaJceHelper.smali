.class public Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;
.super Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.source "BCJcaJceHelper.java"


# static fields
.field private static volatile blacklist bcProvider:Ljava/security/Provider;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    .line 42
    return-void
.end method

.method private static declared-synchronized blacklist getBouncyCastleProvider()Ljava/security/Provider;
    .registers 3

    const-class v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    monitor-enter v0

    .line 20
    :try_start_3
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 23
    .local v1, "system":Ljava/security/Provider;
    instance-of v2, v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_22

    if-eqz v2, :cond_f

    .line 25
    monitor-exit v0

    return-object v1

    .line 27
    :cond_f
    :try_start_f
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    if-eqz v2, :cond_17

    .line 29
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_22

    monitor-exit v0

    return-object v2

    .line 33
    :cond_17
    :try_start_17
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v2, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    .line 35
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_22

    monitor-exit v0

    return-object v2

    .line 19
    .end local v1    # "system":Ljava/security/Provider;
    :catchall_22
    move-exception v1

    monitor-exit v0

    throw v1
.end method
