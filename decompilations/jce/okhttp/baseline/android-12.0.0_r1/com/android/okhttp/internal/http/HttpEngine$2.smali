.class Lcom/android/okhttp/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/http/HttpEngine;->cacheWritingResponse(Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/Response;)Lcom/android/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist cacheRequestClosed:Z

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic blacklist val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

.field final synthetic blacklist val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field final synthetic blacklist val$source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .line 786
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 820
    invoke-static {p0, v0, v1}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 822
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 824
    :cond_16
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 825
    return-void
.end method

.method public blacklist read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 13
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_30

    .line 799
    .local v1, "bytesRead":J
    nop

    .line 801
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1a

    .line 802
    iget-boolean v5, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v5, :cond_19

    .line 803
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 804
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 806
    :cond_19
    return-wide v3

    .line 809
    :cond_1a
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, v1

    move-object v3, p1

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 810
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    .line 811
    return-wide v1

    .line 793
    .end local v1    # "bytesRead":J
    :catch_30
    move-exception v1

    .line 794
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v2, :cond_3c

    .line 795
    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 796
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 798
    :cond_3c
    throw v1
.end method

.method public blacklist timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
