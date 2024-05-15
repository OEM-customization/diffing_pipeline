.class public final Lcom/android/okhttp/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Request$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o body:Lcom/android/okhttp/RequestBody;

.field private volatile greylist-max-o cacheControl:Lcom/android/okhttp/CacheControl;

.field private final greylist headers:Lcom/android/okhttp/Headers;

.field private volatile greylist-max-o javaNetUri:Ljava/net/URI;

.field private volatile greylist-max-o javaNetUrl:Ljava/net/URL;

.field private final greylist method:Ljava/lang/String;

.field private final greylist-max-o tag:Ljava/lang/Object;

.field private final greylist url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Request$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    # getter for: Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$000(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    .line 46
    # getter for: Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$100(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    .line 47
    # getter for: Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$200(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    .line 48
    # getter for: Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$300(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    .line 49
    # getter for: Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    # getter for: Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    move-object v0, p0

    :goto_2b
    iput-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/Request$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/Request$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .line 30
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .line 30
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .line 30
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .line 30
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/Request;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request;

    .line 30
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o body()Lcom/android/okhttp/RequestBody;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    return-object v0
.end method

.method public greylist-max-o cacheControl()Lcom/android/okhttp/CacheControl;
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    .line 108
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    :goto_e
    return-object v1
.end method

.method public greylist-max-o header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o headers()Lcom/android/okhttp/Headers;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method public greylist-max-o headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o httpUrl()Lcom/android/okhttp/HttpUrl;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method

.method public greylist-max-o isHttps()Z
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o method()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o newBuilder()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 99
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$1;)V

    return-object v0
.end method

.method public greylist-max-o tag()Ljava/lang/Object;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    if-eq v1, p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public greylist-max-o uri()Ljava/net/URI;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;

    .line 64
    .local v0, "result":Ljava/net/URI;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-object v1

    .line 65
    .end local v0    # "result":Ljava/net/URI;
    :catch_f
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o url()Ljava/net/URL;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    .line 58
    .local v0, "result":Ljava/net/URL;
    if-eqz v0, :cond_6

    move-object v1, v0

    goto :goto_e

    :cond_6
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    :goto_e
    return-object v1
.end method

.method public greylist-max-o urlString()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
