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
.field final synthetic this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "$anonymous0"    # Lcom/android/okhttp/okio/Sink;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 900
    invoke-direct {p0, p2}, Lcom/android/okhttp/internal/FaultHidingSink;-><init>(Lcom/android/okhttp/okio/Sink;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .registers 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 903
    :try_start_5
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;->this$1:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->detach()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 905
    return-void

    .line 902
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
