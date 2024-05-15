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
.field final synthetic blacklist this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

.field final synthetic blacklist val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field final synthetic blacklist val$this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/Cache$CacheRequestImpl;Lcom/android/okhttp/okio/Sink;Lcom/android/okhttp/Cache;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/okhttp/Cache$CacheRequestImpl;
    .param p2, "delegate"    # Lcom/android/okhttp/okio/Sink;

    .line 435
    iput-object p1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$this$0:Lcom/android/okhttp/Cache;

    iput-object p4, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/android/okhttp/okio/ForwardingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    monitor-enter v0

    .line 438
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    # getter for: Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z
    invoke-static {v1}, Lcom/android/okhttp/Cache$CacheRequestImpl;->access$700(Lcom/android/okhttp/Cache$CacheRequestImpl;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 439
    monitor-exit v0

    return-void

    .line 441
    :cond_f
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    # setter for: Lcom/android/okhttp/Cache$CacheRequestImpl;->done:Z
    invoke-static {v1, v2}, Lcom/android/okhttp/Cache$CacheRequestImpl;->access$702(Lcom/android/okhttp/Cache$CacheRequestImpl;Z)Z

    .line 442
    iget-object v1, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->this$1:Lcom/android/okhttp/Cache$CacheRequestImpl;

    iget-object v1, v1, Lcom/android/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/android/okhttp/Cache;

    # operator++ for: Lcom/android/okhttp/Cache;->writeSuccessCount:I
    invoke-static {v1}, Lcom/android/okhttp/Cache;->access$808(Lcom/android/okhttp/Cache;)I

    .line 443
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_26

    .line 444
    invoke-super {p0}, Lcom/android/okhttp/okio/ForwardingSink;->close()V

    .line 445
    iget-object v0, p0, Lcom/android/okhttp/Cache$CacheRequestImpl$1;->val$editor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->commit()V

    .line 446
    return-void

    .line 443
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method
