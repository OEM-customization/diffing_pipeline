.class public final Lcom/android/okhttp/HttpsHandler;
.super Lcom/android/okhttp/HttpHandler;
.source "HttpsHandler.java"


# static fields
.field private static final HTTP_1_1_ONLY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final TLS_CONNECTION_SPEC:Lcom/android/okhttp/ConnectionSpec;


# instance fields
.field private final configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Lcom/android/okhttp/ConnectionSpec$Builder;

    invoke-direct {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;-><init>(Z)V

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->allEnabledCipherSuites()Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->allEnabledTlsVersions()Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/okhttp/ConnectionSpec$Builder;->supportsTlsExtensions(Z)Lcom/android/okhttp/ConnectionSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/ConnectionSpec$Builder;->build()Lcom/android/okhttp/ConnectionSpec;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/HttpsHandler;->TLS_CONNECTION_SPEC:Lcom/android/okhttp/ConnectionSpec;

    .line 42
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/okhttp/HttpsHandler;->HTTP_1_1_ONLY:Ljava/util/List;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/okhttp/HttpHandler;-><init>()V

    .line 45
    invoke-static {}, Lcom/android/okhttp/ConfigAwareConnectionPool;->getInstance()Lcom/android/okhttp/ConfigAwareConnectionPool;

    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    .line 26
    return-void
.end method

.method public static createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 5
    .param p0, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/android/okhttp/HttpHandler;->createHttpOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v1

    .line 71
    .local v1, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkUrlFactory;->setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V

    .line 73
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v0

    .line 76
    .local v0, "okHttpClient":Lcom/android/okhttp/OkHttpClient;
    sget-object v2, Lcom/android/okhttp/HttpsHandler;->HTTP_1_1_ONLY:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setProtocols(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 78
    sget-object v2, Lcom/android/okhttp/HttpsHandler;->TLS_CONNECTION_SPEC:Lcom/android/okhttp/ConnectionSpec;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionSpecs(Ljava/util/List;)Lcom/android/okhttp/OkHttpClient;

    .line 84
    sget-object v2, Lcom/android/okhttp/CertificatePinner;->DEFAULT:Lcom/android/okhttp/CertificatePinner;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setCertificatePinner(Lcom/android/okhttp/CertificatePinner;)Lcom/android/okhttp/OkHttpClient;

    .line 88
    invoke-virtual {v1}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v2

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/android/okhttp/OkHttpClient;

    .line 92
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/android/okhttp/OkHttpClient;

    .line 94
    return-object v1
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0x1bb

    return v0
.end method

.method protected newOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;
    .registers 5
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/okhttp/HttpsHandler;->createHttpsOkUrlFactory(Ljava/net/Proxy;)Lcom/android/okhttp/OkUrlFactory;

    move-result-object v0

    .line 57
    .local v0, "okUrlFactory":Lcom/android/okhttp/OkUrlFactory;
    invoke-virtual {v0}, Lcom/android/okhttp/OkUrlFactory;->client()Lcom/android/okhttp/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/HttpsHandler;->configAwareConnectionPool:Lcom/android/okhttp/ConfigAwareConnectionPool;

    invoke-virtual {v2}, Lcom/android/okhttp/ConfigAwareConnectionPool;->get()Lcom/android/okhttp/ConnectionPool;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/OkHttpClient;->setConnectionPool(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/OkHttpClient;

    .line 58
    return-object v0
.end method
