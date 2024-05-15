.class Lcom/android/okhttp/internal/DiskLruCache$Editor$1;
.super Lcom/android/okhttp/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/DiskLruCache$Editor;->newSink(I)Lcom/android/okhttp/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "delegate"    # Lcom/android/okhttp/okio/Sink;

    .line 904
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected blacklist onException(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .line 906
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    iget-object v0, v0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 907
    :try_start_5
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->detach()V

    .line 908
    monitor-exit v0

    .line 909
    return-void

    .line 908
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
