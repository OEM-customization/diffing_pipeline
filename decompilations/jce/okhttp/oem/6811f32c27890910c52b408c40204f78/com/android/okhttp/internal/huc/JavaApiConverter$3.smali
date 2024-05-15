.class final Lcom/android/okhttp/internal/huc/JavaApiConverter$3;
.super Ljava/net/CacheRequest;
.source "JavaApiConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/huc/JavaApiConverter;->createJavaCacheRequest(Lcom/android/okhttp/internal/http/CacheRequest;)Ljava/net/CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/CacheRequest;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    .line 358
    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 362
    return-void
.end method

.method public getBody()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v1, p0, Lcom/android/okhttp/internal/huc/JavaApiConverter$3;->val$okCacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v1}, Lcom/android/okhttp/internal/http/CacheRequest;->body()Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 366
    .local v0, "body":Lcom/android/okhttp/okio/Sink;
    if-nez v0, :cond_a

    .line 367
    return-object v2

    .line 369
    :cond_a
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method
