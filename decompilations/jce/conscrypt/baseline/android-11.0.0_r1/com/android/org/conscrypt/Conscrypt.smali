.class public final Lcom/android/org/conscrypt/Conscrypt;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;,
        Lcom/android/org/conscrypt/Conscrypt$Version;
    }
.end annotation


# static fields
.field private static final blacklist VERSION:Lcom/android/org/conscrypt/Conscrypt$Version;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 83
    const-string v0, "-1"

    const/4 v1, -0x1

    .line 84
    .local v1, "major":I
    const/4 v2, -0x1

    .line 85
    .local v2, "minor":I
    const/4 v3, -0x1

    .line 86
    .local v3, "patch":I
    const/4 v4, 0x0

    .line 88
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_6
    const-class v5, Lcom/android/org/conscrypt/Conscrypt;

    const-string v6, "conscrypt.properties"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v4, v5

    .line 89
    if-eqz v4, :cond_41

    .line 90
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 91
    .local v5, "props":Ljava/util/Properties;
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 92
    const-string v6, "com.android.org.conscrypt.version.major"

    invoke-virtual {v5, v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    .line 93
    const-string v6, "com.android.org.conscrypt.version.minor"

    invoke-virtual {v5, v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 94
    const-string v6, "com.android.org.conscrypt.version.patch"

    invoke-virtual {v5, v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_39} :catch_40
    .catchall {:try_start_6 .. :try_end_39} :catchall_3b

    move v3, v0

    .end local v3    # "patch":I
    .local v0, "patch":I
    goto :goto_41

    .line 98
    .end local v0    # "patch":I
    .end local v5    # "props":Ljava/util/Properties;
    .restart local v3    # "patch":I
    :catchall_3b
    move-exception v0

    invoke-static {v4}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    throw v0

    .line 96
    :catch_40
    move-exception v0

    .line 98
    :cond_41
    :goto_41
    invoke-static {v4}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    nop

    .line 100
    const/4 v0, 0x0

    if-ltz v1, :cond_54

    if-ltz v2, :cond_54

    if-ltz v3, :cond_54

    .line 101
    new-instance v5, Lcom/android/org/conscrypt/Conscrypt$Version;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/android/org/conscrypt/Conscrypt$Version;-><init>(IIILcom/android/org/conscrypt/Conscrypt$1;)V

    sput-object v5, Lcom/android/org/conscrypt/Conscrypt;->VERSION:Lcom/android/org/conscrypt/Conscrypt$Version;

    goto :goto_56

    .line 103
    :cond_54
    sput-object v0, Lcom/android/org/conscrypt/Conscrypt;->VERSION:Lcom/android/org/conscrypt/Conscrypt$Version;

    .line 105
    .end local v1    # "major":I
    .end local v2    # "minor":I
    .end local v3    # "patch":I
    .end local v4    # "stream":Ljava/io/InputStream;
    :goto_56
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkAvailability()V
    .registers 0

    .line 121
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->checkAvailability()V

    .line 122
    return-void
.end method

.method public static blacklist exportKeyingMaterial(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;[BI)[B
    .registers 5
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 732
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;[BI)[B
    .registers 5
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 488
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationProtocol(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 705
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 425
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationProtocols(Ljavax/net/ssl/SSLEngine;)[Ljava/lang/String;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 683
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getApplicationProtocols(Ljavax/net/ssl/SSLSocket;)[Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 461
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getChannelId(Ljavax/net/ssl/SSLEngine;)[B
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 598
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getChannelId(Ljavax/net/ssl/SSLSocket;)[B
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 397
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getChannelId()[B

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized blacklist getDefaultHostnameVerifier(Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 3
    .param p0, "trustManager"    # Ljavax/net/ssl/TrustManager;

    const-class v0, Lcom/android/org/conscrypt/Conscrypt;

    monitor-enter v0

    .line 768
    :try_start_3
    invoke-static {}, Lcom/android/org/conscrypt/TrustManagerImpl;->getDefaultHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 768
    .end local p0    # "trustManager":Ljavax/net/ssl/TrustManager;
    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist core-platform-api getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 218
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->checkAvailability()V

    .line 219
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHostname(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 556
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHostname(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 351
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHostnameOrIP(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 359
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getHostnameVerifier(Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    .registers 2
    .param p0, "trustManager"    # Ljavax/net/ssl/TrustManager;

    .line 794
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/TrustManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getHostnameVerifier()Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTlsUnique(Ljavax/net/ssl/SSLEngine;)[B
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 714
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTlsUnique(Ljavax/net/ssl/SSLSocket;)[B
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 470
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isAvailable()Z
    .registers 2

    .line 54
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->checkAvailability()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_5

    .line 55
    const/4 v0, 0x1

    return v0

    .line 56
    :catchall_5
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isConscrypt(Ljava/security/Provider;)Z
    .registers 2
    .param p0, "provider"    # Ljava/security/Provider;

    .line 128
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLProvider;

    return v0
.end method

.method public static blacklist isConscrypt(Ljavax/net/ssl/SSLContext;)Z
    .registers 2
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;

    .line 226
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0

    instance-of v0, v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    return v0
.end method

.method public static blacklist isConscrypt(Ljavax/net/ssl/SSLEngine;)Z
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 495
    instance-of v0, p0, Lcom/android/org/conscrypt/AbstractConscryptEngine;

    return v0
.end method

.method public static blacklist isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z
    .registers 2
    .param p0, "factory"    # Ljavax/net/ssl/SSLServerSocketFactory;

    .line 299
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    return v0
.end method

.method public static blacklist isConscrypt(Ljavax/net/ssl/SSLSocket;)Z
    .registers 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 322
    instance-of v0, p0, Lcom/android/org/conscrypt/AbstractConscryptSocket;

    return v0
.end method

.method public static blacklist isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z
    .registers 2
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 266
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    return v0
.end method

.method public static blacklist isConscrypt(Ljavax/net/ssl/TrustManager;)Z
    .registers 2
    .param p0, "trustManager"    # Ljavax/net/ssl/TrustManager;

    .line 740
    instance-of v0, p0, Lcom/android/org/conscrypt/TrustManagerImpl;

    return v0
.end method

.method public static blacklist maxEncryptedPacketLength()I
    .registers 1

    .line 209
    const/16 v0, 0x4145

    return v0
.end method

.method public static blacklist maxSealOverhead(Ljavax/net/ssl/SSLEngine;)I
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 563
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->maxSealOverhead()I

    move-result v0

    return v0
.end method

.method public static blacklist newPreferredSSLContextSpi()Ljavax/net/ssl/SSLContextSpi;
    .registers 1

    .line 233
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->checkAvailability()V

    .line 234
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newProvider()Ljava/security/Provider;
    .registers 1

    .line 135
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->checkAvailability()V

    .line 136
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method

.method public static blacklist newProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->checkAvailability()V

    .line 147
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->newProviderBuilder()Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->setName(Ljava/lang/String;)Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist newProviderBuilder()Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;
    .registers 2

    .line 202
    new-instance v0, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/Conscrypt$ProviderBuilder;-><init>(Lcom/android/org/conscrypt/Conscrypt$1;)V

    return-object v0
.end method

.method public static blacklist setApplicationProtocolSelector(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 695
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 696
    return-void
.end method

.method public static blacklist setApplicationProtocolSelector(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 437
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setApplicationProtocolSelector(Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V

    .line 438
    return-void
.end method

.method public static blacklist setApplicationProtocols(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 672
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setApplicationProtocols([Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public static blacklist setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 450
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setApplicationProtocols([Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public static blacklist setBufferAllocator(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 513
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 514
    return-void
.end method

.method public static blacklist setBufferAllocator(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 4
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 524
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    .line 525
    .local v0, "s":Lcom/android/org/conscrypt/AbstractConscryptSocket;
    instance-of v1, v0, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    if-eqz v1, :cond_e

    .line 526
    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->setBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 528
    :cond_e
    return-void
.end method

.method public static blacklist setChannelIdEnabled(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "enabled"    # Z

    .line 584
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setChannelIdEnabled(Z)V

    .line 585
    return-void
.end method

.method public static blacklist setChannelIdEnabled(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "enabled"    # Z

    .line 383
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setChannelIdEnabled(Z)V

    .line 384
    return-void
.end method

.method public static blacklist setChannelIdPrivateKey(Ljavax/net/ssl/SSLEngine;Ljava/security/PrivateKey;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 615
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 616
    return-void
.end method

.method public static blacklist setChannelIdPrivateKey(Ljavax/net/ssl/SSLSocket;Ljava/security/PrivateKey;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 415
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 416
    return-void
.end method

.method public static blacklist setClientSessionCache(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/SSLClientSessionCache;)V
    .registers 6
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;
    .param p1, "cache"    # Lcom/android/org/conscrypt/SSLClientSessionCache;

    .line 241
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    .line 242
    .local v0, "clientContext":Ljavax/net/ssl/SSLSessionContext;
    instance-of v1, v0, Lcom/android/org/conscrypt/ClientSessionContext;

    if-eqz v1, :cond_f

    .line 246
    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/ClientSessionContext;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLClientSessionCache;)V

    .line 247
    return-void

    .line 243
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a conscrypt client context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist setDefaultBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V
    .registers 1
    .param p0, "bufferAllocator"    # Lcom/android/org/conscrypt/BufferAllocator;

    .line 536
    invoke-static {p0}, Lcom/android/org/conscrypt/ConscryptEngine;->setDefaultBufferAllocator(Lcom/android/org/conscrypt/BufferAllocator;)V

    .line 537
    return-void
.end method

.method public static declared-synchronized blacklist setDefaultHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    .registers 2
    .param p0, "verifier"    # Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    const-class v0, Lcom/android/org/conscrypt/Conscrypt;

    monitor-enter v0

    .line 758
    :try_start_3
    invoke-static {p0}, Lcom/android/org/conscrypt/TrustManagerImpl;->setDefaultHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 759
    monitor-exit v0

    return-void

    .line 757
    .end local p0    # "verifier":Lcom/android/org/conscrypt/ConscryptHostnameVerifier;
    :catchall_8
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist setHandshakeListener(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/HandshakeListener;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "handshakeListener"    # Lcom/android/org/conscrypt/HandshakeListener;

    .line 570
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setHandshakeListener(Lcom/android/org/conscrypt/HandshakeListener;)V

    .line 571
    return-void
.end method

.method public static blacklist setHostname(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "hostname"    # Ljava/lang/String;

    .line 547
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setHostname(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public static blacklist setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "hostname"    # Ljava/lang/String;

    .line 342
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setHostname(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public static blacklist setHostnameVerifier(Ljavax/net/ssl/TrustManager;Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V
    .registers 3
    .param p0, "trustManager"    # Ljavax/net/ssl/TrustManager;
    .param p1, "verifier"    # Lcom/android/org/conscrypt/ConscryptHostnameVerifier;

    .line 782
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/TrustManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->setHostnameVerifier(Lcom/android/org/conscrypt/ConscryptHostnameVerifier;)V

    .line 783
    return-void
.end method

.method public static blacklist setServerSessionCache(Ljavax/net/ssl/SSLContext;Lcom/android/org/conscrypt/SSLServerSessionCache;)V
    .registers 6
    .param p0, "context"    # Ljavax/net/ssl/SSLContext;
    .param p1, "cache"    # Lcom/android/org/conscrypt/SSLServerSessionCache;

    .line 253
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    .line 254
    .local v0, "serverContext":Ljavax/net/ssl/SSLSessionContext;
    instance-of v1, v0, Lcom/android/org/conscrypt/ServerSessionContext;

    if-eqz v1, :cond_f

    .line 258
    move-object v1, v0

    check-cast v1, Lcom/android/org/conscrypt/ServerSessionContext;

    invoke-virtual {v1, p1}, Lcom/android/org/conscrypt/ServerSessionContext;->setPersistentCache(Lcom/android/org/conscrypt/SSLServerSessionCache;)V

    .line 259
    return-void

    .line 255
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a conscrypt client context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist setUseEngineSocket(Ljavax/net/ssl/SSLServerSocketFactory;Z)V
    .registers 3
    .param p0, "factory"    # Ljavax/net/ssl/SSLServerSocketFactory;
    .param p1, "useEngineSocket"    # Z

    .line 315
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocket(Z)V

    .line 316
    return-void
.end method

.method public static blacklist setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V
    .registers 3
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p1, "useEngineSocket"    # Z

    .line 291
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocket(Z)V

    .line 292
    return-void
.end method

.method public static blacklist setUseEngineSocketByDefault(Z)V
    .registers 1
    .param p0, "useEngineSocket"    # Z

    .line 282
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    .line 283
    invoke-static {p0}, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;->setUseEngineSocketByDefault(Z)V

    .line 284
    return-void
.end method

.method public static blacklist setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 3
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "useSessionTickets"    # Z

    .line 659
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->setUseSessionTickets(Z)V

    .line 660
    return-void
.end method

.method public static blacklist setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 3
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "useSessionTickets"    # Z

    .line 369
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/AbstractConscryptSocket;->setUseSessionTickets(Z)V

    .line 370
    return-void
.end method

.method private static blacklist toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;
    .registers 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 499
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 503
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/AbstractConscryptEngine;

    return-object v0

    .line 500
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toConscrypt(Ljavax/net/ssl/SSLSocket;)Lcom/android/org/conscrypt/AbstractConscryptSocket;
    .registers 4
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 326
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 330
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/AbstractConscryptSocket;

    return-object v0

    .line 327
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;
    .registers 4
    .param p0, "factory"    # Ljavax/net/ssl/SSLServerSocketFactory;

    .line 303
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLServerSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    return-object v0

    .line 304
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt server socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;
    .registers 4
    .param p0, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 270
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLSocketFactoryImpl;

    return-object v0

    .line 271
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a conscrypt socket factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toConscrypt(Ljavax/net/ssl/TrustManager;)Lcom/android/org/conscrypt/TrustManagerImpl;
    .registers 4
    .param p0, "trustManager"    # Ljavax/net/ssl/TrustManager;

    .line 744
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 748
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    return-object v0

    .line 745
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Conscrypt trust manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .registers 14
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 648
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist unwrap(Ljavax/net/ssl/SSLEngine;[Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .registers 4
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 629
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toConscrypt(Ljavax/net/ssl/SSLEngine;)Lcom/android/org/conscrypt/AbstractConscryptEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/AbstractConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist version()Lcom/android/org/conscrypt/Conscrypt$Version;
    .registers 1

    .line 112
    sget-object v0, Lcom/android/org/conscrypt/Conscrypt;->VERSION:Lcom/android/org/conscrypt/Conscrypt$Version;

    return-object v0
.end method
