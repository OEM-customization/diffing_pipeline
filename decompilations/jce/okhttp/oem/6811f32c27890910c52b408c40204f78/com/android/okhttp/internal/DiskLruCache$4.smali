.class Lcom/android/okhttp/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/DiskLruCache;->snapshots()Ljava/util/Iterator;
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
        "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get5(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->delegate:Ljava/util/Iterator;

    .line 1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 726
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    if-eqz v2, :cond_7

    return v5

    .line 728
    :cond_7
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v3

    .line 730
    :try_start_a
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->-get1(Lcom/android/okhttp/internal/DiskLruCache;)Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_30

    move-result v2

    if-eqz v2, :cond_14

    monitor-exit v3

    return v4

    .line 732
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 733
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 734
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v1

    .line 735
    .local v1, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-eqz v1, :cond_14

    .line 736
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_30

    monitor-exit v3

    .line 737
    return v5

    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_2e
    monitor-exit v3

    .line 741
    return v4

    .line 728
    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 2

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$4;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 746
    :cond_c
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 748
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$4;->next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 752
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "remove() before next()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_20
    .catchall {:try_start_e .. :try_end_19} :catchall_1c

    .line 759
    :goto_19
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 761
    return-void

    .line 758
    :catchall_1c
    move-exception v1

    .line 759
    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$4;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 758
    throw v1

    .line 755
    :catch_20
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_19
.end method
