.class final Lcom/android/okhttp/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/android/okhttp/internal/http/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private greylist-max-o body:Lcom/android/okhttp/okio/Sink;

.field private greylist-max-o cacheOut:Lcom/android/okhttp/okio/Sink;

.field private greylist-max-o done:Z

.field private final greylist-max-o editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic blacklist this$0:Lcom/android/okhttp/Cache;


# direct methods
.method public constructor blacklist <init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 5
    .param p2, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 434
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    .line 435
    new-instance v1, Lcom/android/okhttp/Cache$CacheRequestImpl$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    .line 448
    return-void
.end method

.method static synthetic blacklist access$700(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Cache$CacheRequestImpl;

    .line 426
    iget-boolean v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic blacklist access$702(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/Cache$CacheRequestImpl;
    .param p1, "x1"    # Z

    .line 426
    iput-boolean p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public greylist-max-o abort()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_9

    .line 453
    monitor-exit v0

    return-void

    .line 455
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 456
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    # operator++ for: Lcom/android/okhttp/Cache;->writeAbortCount:I
    invoke-static {v1}, Lcom/android/okhttp/Cache;->access$908(Lcom/android/okhttp/Cache;)I

    .line 457
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 458
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 460
    :try_start_17
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 462
    goto :goto_1e

    .line 461
    :catch_1d
    move-exception v0

    .line 463
    :goto_1e
    return-void

    .line 457
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public greylist-max-o body()Lcom/android/okhttp/okio/Sink;
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    return-object v0
.end method
