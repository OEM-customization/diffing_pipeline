.class public Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;
.super Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.source "BCJcaJceHelper.java"


# static fields
.field private static volatile blacklist bcProvider:Ljava/security/Provider;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-static {}, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->getBouncyCastleProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    .line 39
    return-void
.end method

.method private static declared-synchronized blacklist getBouncyCastleProvider()Ljava/security/Provider;
    .registers 2

    const-class v0, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    monitor-enter v0

    .line 20
    :try_start_3
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 22
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_26

    monitor-exit v0

    return-object v1

    .line 24
    :cond_13
    :try_start_13
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    if-eqz v1, :cond_1b

    .line 26
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_26

    monitor-exit v0

    return-object v1

    .line 30
    :cond_1b
    :try_start_1b
    new-instance v1, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;

    .line 32
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/util/BCJcaJceHelper;->bcProvider:Ljava/security/Provider;
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_26

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_26
    move-exception v1

    monitor-exit v0

    throw v1
.end method
