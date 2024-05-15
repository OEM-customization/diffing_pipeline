.class public final Lcom/android/org/conscrypt/Conscrypt;
.super Ljava/lang/Object;
.source "Conscrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/Conscrypt$Constants;,
        Lcom/android/org/conscrypt/Conscrypt$Contexts;,
        Lcom/android/org/conscrypt/Conscrypt$Engines;,
        Lcom/android/org/conscrypt/Conscrypt$ServerSocketFactories;,
        Lcom/android/org/conscrypt/Conscrypt$SocketFactories;,
        Lcom/android/org/conscrypt/Conscrypt$Sockets;
    }
.end annotation


# direct methods
.method static synthetic -wrap0([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->toProtocolString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAvailability()V
    .registers 3

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->checkAvailability()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 64
    return-void

    .line 60
    :catch_4
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string/jumbo v2, "failed to load the required native library"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable()Z
    .registers 2

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/Conscrypt;->checkAvailability()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    .line 46
    const/4 v1, 0x1

    return v1

    .line 47
    :catch_5
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method public static newPreferredSSLContextSpi()Ljavax/net/ssl/SSLContextSpi;
    .registers 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLContextImpl;->getPreferred()Lcom/android/org/conscrypt/OpenSSLContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public static newProvider()Ljava/security/Provider;
    .registers 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-direct {v0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>()V

    return-object v0
.end method

.method public static newProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLProvider;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static toProtocolString([B)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 528
    if-nez p0, :cond_4

    .line 529
    return-object v1

    .line 531
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "US-ASCII"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_d

    return-object v1

    .line 532
    :catch_d
    move-exception v0

    .line 533
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
