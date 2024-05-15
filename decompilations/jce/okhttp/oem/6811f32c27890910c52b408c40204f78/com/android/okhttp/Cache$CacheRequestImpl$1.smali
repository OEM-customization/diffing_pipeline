.class Lcom/android/okhttp/Cache$CacheRequestImpl$1;
.super Lcom/android/okhttp/okio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Cache$CacheRequestImpl;-><init>(Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/okhttp/Cache$CacheRequestImpl;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 432
    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    iget-object v1, v0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    monitor-enter v1

    .line 435
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    invoke-static {v0}, Lcom/android/okhttp/Cache$CacheRequestImpl;->-get0(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_2c

    move-result v0

    if-eqz v0, :cond_f

    monitor-exit v1

    .line 436
    return-void

    .line 438
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/okhttp/Cache$CacheRequestImpl;->-set0(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z

    .line 439
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    invoke-static {v0}, Lcom/android/okhttp/Cache;->-get2(Lcom/android/okhttp/Cache;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/okhttp/Cache;->-set1(Lcom/android/okhttp/Cache;I)I
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_2c

    monitor-exit v1

    .line 441
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V

    .line 442
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V

    .line 443
    return-void

    .line 434
    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
