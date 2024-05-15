.class Ljava/util/Collections$SynchronizedNavigableSet;
.super Ljava/util/Collections$SynchronizedSortedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4c679232c74fb266L


# instance fields
.field private final greylist-max-o ns:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/NavigableSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 2342
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    .line 2343
    iput-object p1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 2344
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2347
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "s":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    .line 2348
    iput-object p1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    .line 2349
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 2352
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist core-platform-api test-api descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 2364
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/Collections$SynchronizedNavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist core-platform-api test-api descendingSet()Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2358
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2359
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2360
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist core-platform-api test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 2351
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2372
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2373
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2374
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist core-platform-api test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2389
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2390
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2391
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    .line 2333
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$SynchronizedNavigableSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public whitelist core-platform-api test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 2353
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist core-platform-api test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 2350
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist core-platform-api test-api pollFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2354
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist core-platform-api test-api pollLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2355
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public blacklist subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2367
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2368
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, p2, v4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2369
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist core-platform-api test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 9
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2383
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2384
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2385
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3

    .line 2333
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$SynchronizedNavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public blacklist tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2377
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2378
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2379
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist core-platform-api test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 2395
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2396
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableSet;->ns:Ljava/util/NavigableSet;

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 2397
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    .line 2333
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableSet;, "Ljava/util/Collections$SynchronizedNavigableSet<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$SynchronizedNavigableSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method
