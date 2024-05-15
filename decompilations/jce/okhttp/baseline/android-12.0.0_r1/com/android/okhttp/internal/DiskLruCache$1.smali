.class Lcom/android/okhttp/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 170
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$000(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->access$100(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_1a

    .line 174
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3b

    return-void

    .line 177
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$200(Lcom/android/okhttp/internal/DiskLruCache;)V

    .line 178
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$300(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 179
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$400(Lcom/android/okhttp/internal/DiskLruCache;)V

    .line 180
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # setter for: Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$502(Lcom/android/okhttp/internal/DiskLruCache;I)I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_31} :catch_34
    .catchall {:try_start_1a .. :try_end_31} :catchall_3b

    .line 184
    :cond_31
    nop

    .line 185
    :try_start_32
    monitor-exit v0

    .line 186
    return-void

    .line 182
    :catch_34
    move-exception v1

    .line 183
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$1;
    throw v2

    .line 185
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$1;
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw v1
.end method
