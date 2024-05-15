.class public Lcom/android/okhttp/OkUrlFactories;
.super Ljava/lang/Object;
.source "OkUrlFactories.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static blacklist open(Lcom/android/okhttp/OkUrlFactory;Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "okUrlFactory"    # Lcom/android/okhttp/OkUrlFactory;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setUrlFilter(Lcom/android/okhttp/OkUrlFactory;Lcom/android/okhttp/internal/URLFilter;)V
    .registers 2
    .param p0, "okUrlFactory"    # Lcom/android/okhttp/OkUrlFactory;
    .param p1, "urlFilter"    # Lcom/android/okhttp/internal/URLFilter;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/okhttp/OkUrlFactory;->setUrlFilter(Lcom/android/okhttp/internal/URLFilter;)V

    .line 44
    return-void
.end method
