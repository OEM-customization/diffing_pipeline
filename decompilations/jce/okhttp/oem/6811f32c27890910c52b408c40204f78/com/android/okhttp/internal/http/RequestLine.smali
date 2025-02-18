.class public final Lcom/android/okhttp/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method static get(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .registers 4
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0, p1}, Lcom/android/okhttp/internal/http/RequestLine;->includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 23
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    :goto_1e
    const-string/jumbo v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 25
    :cond_29
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->httpUrl()Lcom/android/okhttp/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/internal/http/RequestLine;->requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method

.method private static includeAuthorityInRequestLine(Lcom/android/okhttp/Request;Ljava/net/Proxy$Type;)Z
    .registers 4
    .param p0, "request"    # Lcom/android/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/android/okhttp/Request;->isHttps()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static requestPath(Lcom/android/okhttp/HttpUrl;)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "path":Ljava/lang/String;
    :cond_21
    return-object v0
.end method
