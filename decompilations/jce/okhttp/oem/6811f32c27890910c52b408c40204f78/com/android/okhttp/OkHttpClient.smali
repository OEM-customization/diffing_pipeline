.class public Lcom/android/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/OkHttpClient$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private authenticator:Lcom/android/okhttp/Authenticator;

.field private cache:Lcom/android/okhttp/Cache;

.field private certificatePinner:Lcom/android/okhttp/CertificatePinner;

.field private connectTimeout:I

.field private connectionPool:Lcom/android/okhttp/ConnectionPool;

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lcom/android/okhttp/Dispatcher;

.field private dns:Lcom/android/okhttp/Dns;

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private internalCache:Lcom/android/okhttp/internal/InternalCache;

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private final routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v5, [Lcom/android/okhttp/Protocol;

    .line 55
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    aput-object v1, v0, v4

    .line 54
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 57
    new-array v0, v5, [Lcom/android/okhttp/ConnectionSpec;

    .line 58
    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/android/okhttp/ConnectionSpec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/android/okhttp/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/android/okhttp/ConnectionSpec;

    aput-object v1, v0, v4

    .line 57
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/android/okhttp/OkHttpClient$1;

    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/Internal;->instance:Lcom/android/okhttp/internal/Internal;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 141
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 144
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 145
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 146
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    .line 149
    new-instance v0, Lcom/android/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/android/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 150
    new-instance v0, Lcom/android/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/android/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 151
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/OkHttpClient;)V
    .registers 5
    .param p1, "okHttpClient"    # Lcom/android/okhttp/OkHttpClient;

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 141
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 144
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 145
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 146
    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    .line 154
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    .line 155
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 156
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 157
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 158
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 162
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 163
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    .line 164
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    iget-object v0, v0, Lcom/android/okhttp/Cache;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    :goto_56
    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 165
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 166
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 167
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 168
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 169
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 170
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 171
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    .line 172
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 173
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 174
    iget-boolean v0, p1, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 175
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 176
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 177
    iget v0, p1, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    .line 178
    return-void

    .line 164
    :cond_8d
    iget-object v0, p1, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    goto :goto_56
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    .prologue
    monitor-enter p0

    .line 629
    :try_start_1
    sget-object v2, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v2, :cond_18

    .line 631
    :try_start_5
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 632
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 633
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    sput-object v2, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_18} :catch_1c
    .catchall {:try_start_5 .. :try_end_18} :catchall_23

    .line 638
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_18
    :try_start_18
    sget-object v2, Lcom/android/okhttp/OkHttpClient;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_23

    monitor-exit p0

    return-object v2

    .line 634
    :catch_1c
    move-exception v0

    .line 635
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :try_start_1d
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_23

    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)Lcom/android/okhttp/OkHttpClient;
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->getDispatcher()Lcom/android/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    .line 572
    return-object p0
.end method

.method public clone()Lcom/android/okhttp/OkHttpClient;
    .registers 2

    .prologue
    .line 643
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/android/okhttp/OkHttpClient;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/okhttp/OkHttpClient;->clone()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method copyWithDefaults()Lcom/android/okhttp/OkHttpClient;
    .registers 3

    .prologue
    .line 580
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/android/okhttp/OkHttpClient;-><init>(Lcom/android/okhttp/OkHttpClient;)V

    .line 581
    .local v0, "result":Lcom/android/okhttp/OkHttpClient;
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_f

    .line 582
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 584
    :cond_f
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_19

    .line 585
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 587
    :cond_19
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_23

    .line 588
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 590
    :cond_23
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_2d

    .line 591
    invoke-direct {p0}, Lcom/android/okhttp/OkHttpClient;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 593
    :cond_2d
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_35

    .line 594
    sget-object v1, Lcom/android/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/android/okhttp/internal/tls/OkHostnameVerifier;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 596
    :cond_35
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    if-nez v1, :cond_3d

    .line 597
    sget-object v1, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 599
    :cond_3d
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    if-nez v1, :cond_45

    .line 600
    sget-object v1, Lcom/android/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/android/okhttp/Authenticator;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 602
    :cond_45
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    if-nez v1, :cond_4f

    .line 603
    invoke-static {}, Lcom/android/okhttp/ConnectionPool;->getDefault()Lcom/android/okhttp/ConnectionPool;

    move-result-object v1

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 605
    :cond_4f
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    if-nez v1, :cond_57

    .line 606
    sget-object v1, Lcom/android/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 608
    :cond_57
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    if-nez v1, :cond_5f

    .line 609
    sget-object v1, Lcom/android/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 611
    :cond_5f
    iget-object v1, v0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    if-nez v1, :cond_67

    .line 612
    sget-object v1, Lcom/android/okhttp/Dns;->SYSTEM:Lcom/android/okhttp/Dns;

    iput-object v1, v0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    .line 614
    :cond_67
    return-object v0
.end method

.method public getAuthenticator()Lcom/android/okhttp/Authenticator;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    return-object v0
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    return-object v0
.end method

.method public getCertificatePinner()Lcom/android/okhttp/CertificatePinner;
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public getConnectionPool()Lcom/android/okhttp/ConnectionPool;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getDispatcher()Lcom/android/okhttp/Dispatcher;
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    return-object v0
.end method

.method public getDns()Lcom/android/okhttp/Dns;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .registers 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public getFollowSslRedirects()Z
    .registers 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public getRetryOnConnectionFailure()Z
    .registers 2

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getWriteTimeout()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    return v0
.end method

.method public interceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lcom/android/okhttp/internal/InternalCache;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newCall(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Call;
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 563
    new-instance v0, Lcom/android/okhttp/Call;

    invoke-direct {v0, p0, p1}, Lcom/android/okhttp/Call;-><init>(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/Request;)V

    return-object v0
.end method

.method routeDatabase()Lcom/android/okhttp/internal/RouteDatabase;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/okhttp/OkHttpClient;->routeDatabase:Lcom/android/okhttp/internal/RouteDatabase;

    return-object v0
.end method

.method public setAuthenticator(Lcom/android/okhttp/Authenticator;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "authenticator"    # Lcom/android/okhttp/Authenticator;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->authenticator:Lcom/android/okhttp/Authenticator;

    .line 392
    return-object p0
.end method

.method public setCache(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/OkHttpClient;
    .registers 3
    .param p1, "cache"    # Lcom/android/okhttp/Cache;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 300
    return-object p0
.end method

.method public setCertificatePinner(Lcom/android/okhttp/CertificatePinner;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "certificatePinner"    # Lcom/android/okhttp/CertificatePinner;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->certificatePinner:Lcom/android/okhttp/CertificatePinner;

    .line 376
    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 187
    cmp-long v2, p1, v4

    if-gez v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_f
    if-nez p3, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 190
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_2e
    cmp-long v2, v0, v4

    if-nez v2, :cond_3f

    cmp-long v2, p1, v4

    if-lez v2, :cond_3f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_3f
    long-to-int v2, v0

    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->connectTimeout:I

    .line 193
    return-void
.end method

.method public setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "connectionPool"    # Lcom/android/okhttp/ConnectionPool;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->connectionPool:Lcom/android/okhttp/ConnectionPool;

    .line 407
    return-object p0
.end method

.method public setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/ConnectionSpec;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 534
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 280
    return-object p0
.end method

.method public setDispatcher(Lcom/android/okhttp/Dispatcher;)Lcom/android/okhttp/OkHttpClient;
    .registers 4
    .param p1, "dispatcher"    # Lcom/android/okhttp/Dispatcher;

    .prologue
    .line 474
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_b
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->dispatcher:Lcom/android/okhttp/Dispatcher;

    .line 476
    return-object p0
.end method

.method public setDns(Lcom/android/okhttp/Dns;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "dns"    # Lcom/android/okhttp/Dns;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->dns:Lcom/android/okhttp/Dns;

    .line 314
    return-object p0
.end method

.method public setFollowRedirects(Z)V
    .registers 2
    .param p1, "followRedirects"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followRedirects:Z

    .line 433
    return-void
.end method

.method public setFollowSslRedirects(Z)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->followSslRedirects:Z

    .line 423
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 361
    return-object p0
.end method

.method setInternalCache(Lcom/android/okhttp/internal/InternalCache;)V
    .registers 3
    .param p1, "internalCache"    # Lcom/android/okhttp/internal/InternalCache;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->internalCache:Lcom/android/okhttp/internal/InternalCache;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->cache:Lcom/android/okhttp/Cache;

    .line 291
    return-void
.end method

.method public setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;)",
            "Lcom/android/okhttp/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 515
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_26
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_48
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_58
    invoke-static {p1}, Lcom/android/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    .line 525
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 246
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 264
    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 207
    cmp-long v2, p1, v4

    if-gez v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_f
    if-nez p3, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 210
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_2e
    cmp-long v2, v0, v4

    if-nez v2, :cond_3f

    cmp-long v2, p1, v4

    if-lez v2, :cond_3f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_3f
    long-to-int v2, v0

    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->readTimeout:I

    .line 213
    return-void
.end method

.method public setRetryOnConnectionFailure(Z)V
    .registers 2
    .param p1, "retryOnConnectionFailure"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/android/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    .line 459
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 332
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;
    .registers 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 346
    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 225
    cmp-long v2, p1, v4

    if-gez v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_f
    if-nez p3, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 228
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2e

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_2e
    cmp-long v2, v0, v4

    if-nez v2, :cond_3f

    cmp-long v2, p1, v4

    if-lez v2, :cond_3f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_3f
    long-to-int v2, v0

    iput v2, p0, Lcom/android/okhttp/OkHttpClient;->writeTimeout:I

    .line 231
    return-void
.end method
