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
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/android/okhttp/internal/http/HttpEngine;

.field final synthetic val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

.field final synthetic val$source:Lcom/android/okhttp/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/http/HttpEngine;Lcom/android/okhttp/okio/BufferedSource;Lcom/android/okhttp/internal/http/CacheRequest;Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/internal/http/HttpEngine;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->this$0:Lcom/android/okhttp/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    iput-object p3, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_18

    .line 832
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Lcom/android/okhttp/internal/Util;->discard(Lcom/android/okhttp/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 831
    if-eqz v0, :cond_18

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 834
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 836
    :cond_18
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->close()V

    .line 837
    return-void
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 12
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    .line 804
    :try_start_3
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/BufferedSource;->read(Lcom/android/okhttp/okio/Buffer;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_19

    move-result-wide v4

    .line 813
    .local v4, "bytesRead":J
    cmp-long v0, v4, v2

    if-nez v0, :cond_26

    .line 814
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_18

    .line 815
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 816
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 818
    :cond_18
    return-wide v2

    .line 805
    .end local v4    # "bytesRead":J
    :catch_19
    move-exception v6

    .line 806
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_25

    .line 807
    iput-boolean v1, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 808
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/android/okhttp/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/android/okhttp/internal/http/CacheRequest;->abort()V

    .line 810
    :cond_25
    throw v6

    .line 821
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":J
    :cond_26
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->buffer()Lcom/android/okhttp/okio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/okhttp/okio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/okhttp/okio/Buffer;->copyTo(Lcom/android/okhttp/okio/Buffer;JJ)Lcom/android/okhttp/okio/Buffer;

    .line 822
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$cacheBody:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->emitCompleteSegments()Lcom/android/okhttp/okio/BufferedSink;

    .line 823
    return-wide v4
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/okhttp/internal/http/HttpEngine$2;->val$source:Lcom/android/okhttp/okio/BufferedSource;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSource;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
