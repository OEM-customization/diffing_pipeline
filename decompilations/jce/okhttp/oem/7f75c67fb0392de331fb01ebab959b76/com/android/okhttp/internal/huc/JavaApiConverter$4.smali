.class Lcom/android/okhttp/internal/huc/JavaApiConverter$4;
.super Lcom/android/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist body:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic blacklist val$cacheResponse:Ljava/net/CacheResponse;

.field final synthetic blacklist val$okHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V
    .registers 3

    .line 476
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$cacheResponse:Ljava/net/CacheResponse;

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public blacklist source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    if-nez v0, :cond_14

    .line 491
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 492
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    .line 494
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_14
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    return-object v0
.end method
