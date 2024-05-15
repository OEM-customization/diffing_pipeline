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
.field private body:Lcom/android/okhttp/okio/Sink;

.field private cacheOut:Lcom/android/okhttp/okio/Sink;

.field private done:Z

.field private final editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/android/okhttp/Cache;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache$CacheRequestImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/Cache$CacheRequestImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/okhttp/Cache;
    .param p2, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p2, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    .line 432
    new-instance v0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    .line 445
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 5

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    monitor-enter v2

    .line 449
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-eqz v1, :cond_9

    monitor-exit v2

    .line 450
    return-void

    .line 452
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 453
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    invoke-static {v1}, Lcom/android/okhttp/Cache;->-get1(Lcom/android/okhttp/Cache;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/android/okhttp/Cache;->-set0(Lcom/android/okhttp/Cache;I)I
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_23

    monitor-exit v2

    .line 455
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->cacheOut:Lcom/android/okhttp/okio/Sink;

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    :try_start_1d
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_26

    .line 460
    :goto_22
    return-void

    .line 448
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    .line 458
    :catch_26
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_22
.end method

.method public body()Lcom/android/okhttp/okio/Sink;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl;->body:Lcom/android/okhttp/okio/Sink;

    return-object v0
.end method
