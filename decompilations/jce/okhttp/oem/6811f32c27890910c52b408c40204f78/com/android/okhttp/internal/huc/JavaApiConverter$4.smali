.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$4;
.super Lcom/android/okhttp/ResponseBody;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createOkBody(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private body:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic val$cacheResponse:Ljava/net/CacheResponse;

.field final synthetic val$okHeaders:Lcom/android/okhttp/Headers;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Headers;Ljava/net/CacheResponse;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    iput-object p2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$cacheResponse:Ljava/net/CacheResponse;

    .line 474
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    invoke-static {v0}, Lcom/android/okhttp/internal/http/OkHeaders;->contentLength(Lcom/android/okhttp/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 479
    iget-object v2, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$okHeaders:Lcom/android/okhttp/Headers;

    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/android/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "contentTypeHeader":Ljava/lang/String;
    if-nez v0, :cond_d

    :goto_c
    return-object v1

    :cond_d
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    move-result-object v1

    goto :goto_c
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    if-nez v1, :cond_14

    .line 489
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->val$cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 490
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->source(Ljava/io/InputStream;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    .line 492
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_14
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$4;->body:Lcom/android/okhttp/okio/BufferedSource;

    return-object v1
.end method
