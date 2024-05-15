.class Lcom/android/okhttp/internal/DiskLruCache$3;
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
        "Ljava/util/Iterator<",
        "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field blacklist nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field blacklist removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 717
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$1900(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 730
    :cond_6
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 732
    :try_start_9
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$100(Lcom/android/okhttp/internal/DiskLruCache;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    monitor-exit v0

    return v3

    .line 734
    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 735
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 736
    .local v2, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-virtual {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v4

    .line 737
    .local v4, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v4, :cond_2b

    goto :goto_14

    .line 738
    :cond_2b
    iput-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 739
    monitor-exit v0

    return v1

    .line 741
    .end local v2    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v4    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_2f
    monitor-exit v0

    .line 743
    return v3

    .line 741
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public blacklist next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 3

    .line 747
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 748
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 749
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->nextSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 750
    return-object v0

    .line 747
    :cond_e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2

    .line 717
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache$3;->next()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 4

    .line 754
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    if-eqz v0, :cond_18

    .line 756
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->access$2000(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_13
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    goto :goto_14

    .line 761
    :catchall_f
    move-exception v0

    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 762
    throw v0

    .line 757
    :catch_13
    move-exception v0

    .line 761
    :goto_14
    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$3;->removeSnapshot:Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .line 762
    nop

    .line 763
    return-void

    .line 754
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
