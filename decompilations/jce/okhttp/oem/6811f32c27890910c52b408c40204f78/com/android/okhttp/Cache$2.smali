.class Lcom/android/okhttp/Cache$2;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/Cache;->urls()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation
.end field

.field nextUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/okhttp/Cache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/Cache;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/okhttp/Cache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/Cache$2;->this$0:Lcom/android/okhttp/Cache;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->this$0:Lcom/android/okhttp/Cache;

    invoke-static {v0}, Lcom/android/okhttp/Cache;->-get0(Lcom/android/okhttp/Cache;)Lcom/android/okhttp/internal/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    iget-object v3, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    if-eqz v3, :cond_7

    return v5

    .line 329
    :cond_7
    iput-boolean v4, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    .line 330
    :goto_9
    iget-object v3, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 331
    iget-object v3, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 333
    .local v2, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    const/4 v3, 0x0

    :try_start_1a
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/android/okhttp/okio/Source;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    .line 334
    .local v1, "metadata":Lcom/android/okhttp/okio/BufferedSource;
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2c
    .catchall {:try_start_1a .. :try_end_28} :catchall_31

    .line 340
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 335
    return v5

    .line 336
    .end local v1    # "metadata":Lcom/android/okhttp/okio/BufferedSource;
    :catch_2c
    move-exception v0

    .line 340
    .local v0, "ignored":Ljava/io/IOException;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_9

    .line 339
    .end local v0    # "ignored":Ljava/io/IOException;
    :catchall_31
    move-exception v3

    .line 340
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->close()V

    .line 339
    throw v3

    .line 344
    .end local v2    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_36
    return v4
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/okhttp/Cache$2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/okhttp/Cache$2;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 349
    :cond_c
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    .line 350
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/Cache$2;->nextUrl:Ljava/lang/String;

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    .line 352
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/okhttp/Cache$2;->canRemove:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_d
    iget-object v0, p0, Lcom/android/okhttp/Cache$2;->delegate:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 358
    return-void
.end method
