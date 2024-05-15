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
.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v2

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get4(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get1(Lcom/android/okhttp/internal/DiskLruCache;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_37

    move-result v3

    or-int/2addr v1, v3

    if-eqz v1, :cond_16

    monitor-exit v2

    .line 172
    return-void

    .line 175
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap4(Lcom/android/okhttp/internal/DiskLruCache;)V

    .line 176
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap0(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 177
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap3(Lcom/android/okhttp/internal/DiskLruCache;)V

    .line 178
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$1;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/okhttp/internal/DiskLruCache;->-set1(Lcom/android/okhttp/internal/DiskLruCache;I)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2e} :catch_30
    .catchall {:try_start_16 .. :try_end_2e} :catchall_37

    :cond_2e
    monitor-exit v2

    .line 184
    return-void

    .line 180
    :catch_30
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_31
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_37
    move-exception v1

    monitor-exit v2

    throw v1
.end method
