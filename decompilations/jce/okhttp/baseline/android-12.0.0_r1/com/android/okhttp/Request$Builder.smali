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
.field private greylist-max-o body:Lcom/android/okhttp/RequestBody;

.field private greylist-max-o headers:Lcom/android/okhttp/Headers$Builder;

.field private greylist-max-o method:Ljava/lang/String;

.field private greylist-max-o tag:Ljava/lang/Object;

.field private greylist-max-o url:Lcom/android/okhttp/HttpUrl;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, "GET"

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/android/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/android/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 138
    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/okhttp/Request;)V
    .registers 3
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    # getter for: Lcom/android/okhttp/Request;->url:Lcom/android/okhttp/HttpUrl;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$600(Lcom/android/okhttp/Request;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    .line 142
    # getter for: Lcom/android/okhttp/Request;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$700(Lcom/android/okhttp/Request;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 143
    # getter for: Lcom/android/okhttp/Request;->body:Lcom/android/okhttp/RequestBody;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$800(Lcom/android/okhttp/Request;)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    .line 144
    # getter for: Lcom/android/okhttp/Request;->tag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$900(Lcom/android/okhttp/Request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 145
    # getter for: Lcom/android/okhttp/Request;->headers:Lcom/android/okhttp/Headers;
    invoke-static {p1}, Lcom/android/okhttp/Request;->access$1000(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 146
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Request$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/okhttp/Request;
    .param p2, "x1"    # Lcom/android/okhttp/Request$1;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/okhttp/Request$Builder;-><init>(Lcom/android/okhttp/Request;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/HttpUrl;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/Request$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/Headers$Builder;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/Request$Builder;)Lcom/android/okhttp/RequestBody;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/Request$Builder;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Request$Builder;

    .line 128
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 206
    return-object p0
.end method

.method public greylist-max-o build()Lcom/android/okhttp/Request;
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    if-eqz v0, :cond_b

    .line 286
    new-instance v0, Lcom/android/okhttp/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Request;-><init>(Lcom/android/okhttp/Request$Builder;Lcom/android/okhttp/Request$1;)V

    return-object v0

    .line 285
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o cacheControl(Lcom/android/okhttp/CacheControl;)Lcom/android/okhttp/Request$Builder;
    .registers 5
    .param p1, "cacheControl"    # Lcom/android/okhttp/CacheControl;

    .line 226
    invoke-virtual {p1}, Lcom/android/okhttp/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "Cache-Control"

    if-eqz v1, :cond_11

    invoke-virtual {p0, v2}, Lcom/android/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1

    .line 228
    :cond_11
    invoke-virtual {p0, v2, v0}, Lcom/android/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o delete()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 248
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;[B)Lcom/android/okhttp/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o delete(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .line 244
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o get()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 232
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o head()Lcom/android/okhttp/Request$Builder;
    .registers 3

    .line 236
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o header(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 194
    return-object p0
.end method

.method public greylist-max-o headers(Lcom/android/okhttp/Headers;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "headers"    # Lcom/android/okhttp/Headers;

    .line 216
    invoke-virtual {p1}, Lcom/android/okhttp/Headers;->newBuilder()Lcom/android/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    .line 217
    return-object p0
.end method

.method public greylist-max-o method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lcom/android/okhttp/RequestBody;

    .line 260
    if-eqz p1, :cond_55

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55

    .line 263
    const-string v0, "method "

    if-eqz p2, :cond_2d

    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2d

    .line 264
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must not have a request body."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_2d
    :goto_2d
    if-nez p2, :cond_50

    invoke-static {p1}, Lcom/android/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_50

    .line 267
    :cond_36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have a request body."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_50
    :goto_50
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/android/okhttp/Request$Builder;->body:Lcom/android/okhttp/RequestBody;

    .line 271
    return-object p0

    .line 261
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o patch(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .line 256
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o post(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .line 240
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o put(Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "body"    # Lcom/android/okhttp/RequestBody;

    .line 252
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/android/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/android/okhttp/RequestBody;)Lcom/android/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeHeader(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/okhttp/Request$Builder;->headers:Lcom/android/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lcom/android/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lcom/android/okhttp/Headers$Builder;

    .line 211
    return-object p0
.end method

.method public greylist-max-o tag(Ljava/lang/Object;)Lcom/android/okhttp/Request$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 280
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->tag:Ljava/lang/Object;

    .line 281
    return-object p0
.end method

.method public greylist-max-o url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;
    .registers 4
    .param p1, "url"    # Lcom/android/okhttp/HttpUrl;

    .line 149
    if-eqz p1, :cond_5

    .line 150
    iput-object p1, p0, Lcom/android/okhttp/Request$Builder;->url:Lcom/android/okhttp/HttpUrl;

    .line 151
    return-object p0

    .line 149
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o url(Ljava/lang/String;)Lcom/android/okhttp/Request$Builder;
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .line 161
    if-eqz p1, :cond_6b

    .line 164
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_49

    .line 166
    :cond_26
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    :cond_49
    :goto_49
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 171
    .local v0, "parsed":Lcom/android/okhttp/HttpUrl;
    if-eqz v0, :cond_54

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1

    .line 171
    :cond_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    .end local v0    # "parsed":Lcom/android/okhttp/HttpUrl;
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o url(Ljava/net/URL;)Lcom/android/okhttp/Request$Builder;
    .registers 6
    .param p1, "url"    # Ljava/net/URL;

    .line 182
    if-eqz p1, :cond_24

    .line 183
    invoke-static {p1}, Lcom/android/okhttp/HttpUrl;->get(Ljava/net/URL;)Lcom/android/okhttp/HttpUrl;

    move-result-object v0

    .line 184
    .local v0, "parsed":Lcom/android/okhttp/HttpUrl;
    if-eqz v0, :cond_d

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/okhttp/Request$Builder;->url(Lcom/android/okhttp/HttpUrl;)Lcom/android/okhttp/Request$Builder;

    move-result-object v1

    return-object v1

    .line 184
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "parsed":Lcom/android/okhttp/HttpUrl;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
