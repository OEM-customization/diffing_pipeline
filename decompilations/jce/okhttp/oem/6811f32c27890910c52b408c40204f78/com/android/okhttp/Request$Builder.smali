.class public Lcom/android/okhttp/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/RequestBody;

.field private headers:Lcom/android/okhttp/Headers$Builder;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 130
    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/Request;)V
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get4(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    .line 134
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get2(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get0(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    .line 136
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get3(Lcom/android/okhttp/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 137
    invoke-static {p1}, Lcom/android/okhttp/Request;->-get1(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$Builder;)V
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;
    .param p2, "-this1"    # Lcom/android/okhttp/Request$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 198
    return-object p0
.end method

.method public build()Lcom/android/okhttp/Request;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_e
    new-instance v0, Lcom/android/okhttp/Request;

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request;)V

    return-object v0
.end method

.method public cacheControl(Lcom/android/okhttp/CacheControl;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "cacheControl"    # Lcom/android/okhttp/CacheControl;

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/android/okhttp/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "Cache-Control"

    invoke-virtual {p0, v1}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1

    .line 220
    :cond_12
    const-string/jumbo v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1
.end method

.method public delete()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .prologue
    .line 240
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 236
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .prologue
    .line 224
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .prologue
    .line 228
    const-string/jumbo v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 186
    return-object p0
.end method

.method public headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 209
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 252
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 253
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_11
    if-eqz p2, :cond_3c

    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_3c
    if-nez p2, :cond_65

    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_65
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    .line 263
    return-object p0
.end method

.method public patch(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 248
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 232
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .prologue
    .line 244
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 203
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/android/okhttp/Request$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 273
    return-object p0
.end method

.method public url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;

    .prologue
    .line 141
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_b
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    .line 143
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_f
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :cond_32
    :goto_32
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v6

    .line 163
    .local v6, "parsed":Lcom/android/okhttp/HttpUrl;
    if-nez v6, :cond_77

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    .end local v6    # "parsed":Lcom/android/okhttp/HttpUrl;
    :cond_52
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_32

    .line 164
    .restart local v6    # "parsed":Lcom/android/okhttp/HttpUrl;
    :cond_77
    invoke-virtual {p0, v6}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 174
    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "url == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_b
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 176
    .local v0, "parsed":Lcom/android/okhttp/HttpUrl;
    if-nez v0, :cond_2b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1
.end method
