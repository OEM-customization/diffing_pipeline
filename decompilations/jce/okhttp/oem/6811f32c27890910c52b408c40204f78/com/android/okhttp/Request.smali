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
.field private final body:Lcom/android/okhttp/RequestBody;

.field private volatile cacheControl:Lcom/android/okhttp/CacheControl;

.field private final headers:Lcom/android/okhttp/Headers;

.field private volatile javaNetUri:Ljava/net/URI;

.field private volatile javaNetUrl:Ljava/net/URL;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Request;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Request;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/Request$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get4(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    .line 41
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get2(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get1(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers$Builder;->build()Lcom/android/okhttp/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    .line 43
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get0(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    .line 44
    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get3(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lcom/android/okhttp/Request$Builder;->-get3(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    .line 45
    return-void

    :cond_2c
    move-object v0, p0

    .line 44
    goto :goto_29
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request;)V
    .registers 3
    .param p1, "builder"    # Lcom/android/okhttp/Request$Builder;
    .param p2, "-this1"    # Lcom/android/okhttp/Request;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public body()Lcom/android/okhttp/RequestBody;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lcom/android/okhttp/CacheControl;
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    .line 103
    .local v0, "result":Lcom/android/okhttp/CacheControl;
    if-eqz v0, :cond_5

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    :goto_4
    return-object v0

    .restart local v0    # "result":Lcom/android/okhttp/CacheControl;
    :cond_5
    iget-object v1, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-static {v1}, Lcom/android/okhttp/CacheControl;->parse(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/android/okhttp/CacheControl;
    iput-object v0, p0, Lcom/android/okhttp/Request;->cacheControl:Lcom/android/okhttp/CacheControl;

    goto :goto_4
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lcom/android/okhttp/Headers;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public httpUrl()Lcom/android/okhttp/HttpUrl;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method

.method public isHttps()Z
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lcom/android/okhttp/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$Builder;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/okhttp/Request;->method:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, ", url="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string/jumbo v1, ", tag="

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_3b

    iget-object v0, p0, Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;

    .line 111
    :goto_2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const/16 v1, 0x7d

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_3b
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public uri()Ljava/net/URI;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;

    .line 59
    .local v1, "result":Ljava/net/URI;
    if-eqz v1, :cond_5

    .end local v1    # "result":Ljava/net/URI;
    :goto_4
    return-object v1

    .restart local v1    # "result":Ljava/net/URI;
    :cond_5
    iget-object v2, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v2}, Lcom/android/okhttp/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v1

    .end local v1    # "result":Ljava/net/URI;
    iput-object v1, p0, Lcom/android/okhttp/Request;->javaNetUri:Ljava/net/URI;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_4

    .line 60
    :catch_e
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public url()Ljava/net/URL;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    .line 53
    .local v0, "result":Ljava/net/URL;
    if-eqz v0, :cond_5

    .end local v0    # "result":Ljava/net/URL;
    :goto_4
    return-object v0

    .restart local v0    # "result":Ljava/net/URL;
    :cond_5
    iget-object v1, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v1}, Lcom/android/okhttp/HttpUrl;->url()Ljava/net/URL;

    move-result-object v0

    .end local v0    # "result":Ljava/net/URL;
    iput-object v0, p0, Lcom/android/okhttp/Request;->javaNetUrl:Ljava/net/URL;

    goto :goto_4
.end method

.method public urlString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;

    invoke-virtual {v0}, Lcom/android/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
