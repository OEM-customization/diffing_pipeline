.class Lsun/security/util/MemoryCache;
.super Lsun/security/util/Cache;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/MemoryCache$SoftCacheEntry;,
        Lsun/security/util/MemoryCache$HardCacheEntry;,
        Lsun/security/util/MemoryCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lsun/security/util/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOAD_FACTOR:F = 0.75f


# instance fields
.field private final blacklist cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lsun/security/util/MemoryCache$CacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private blacklist lifetime:J

.field private blacklist maxSize:I

.field private final blacklist queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ZI)V
    .registers 4
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I

    .line 261
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/util/MemoryCache;-><init>(ZII)V

    .line 262
    return-void
.end method

.method public constructor blacklist <init>(ZII)V
    .registers 8
    .param p1, "soft"    # Z
    .param p2, "maxSize"    # I
    .param p3, "lifetime"    # I

    .line 264
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/Cache;-><init>()V

    .line 265
    iput p2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    .line 266
    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J

    .line 267
    if-eqz p1, :cond_14

    .line 268
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    goto :goto_17

    .line 270
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 272
    :goto_17
    int-to-float v0, p2

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 273
    .local v0, "buckets":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    .line 274
    return-void
.end method

.method private blacklist emptyQueue()V
    .registers 6

    .line 284
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_5

    .line 285
    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 290
    .local v0, "startSize":I
    :goto_b
    iget-object v1, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 291
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_17

    .line 292
    nop

    .line 313
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    return-void

    .line 294
    .restart local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_17
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "key":Ljava/lang/Object;, "TK;"
    if-nez v2, :cond_1e

    .line 297
    goto :goto_b

    .line 299
    :cond_1e
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/MemoryCache$CacheEntry;

    .line 302
    .local v3, "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v3, :cond_2f

    if-eq v1, v3, :cond_2f

    .line 303
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "currentEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_2f
    goto :goto_b
.end method

.method private blacklist expungeExpiredEntries()V
    .registers 7

    .line 319
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 320
    iget-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 321
    return-void

    .line 323
    :cond_c
    const/4 v0, 0x0

    .line 324
    .local v0, "cnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 325
    .local v1, "time":J
    iget-object v3, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 326
    .local v3, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 327
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/util/MemoryCache$CacheEntry;

    .line 328
    .local v4, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v4, v1, v2}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v5

    if-nez v5, :cond_32

    .line 329
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 332
    .end local v4    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_32
    goto :goto_1b

    .line 339
    .end local v3    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    :cond_33
    return-void
.end method

.method private blacklist getCachedEntries()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 452
    .local v0, "kvmap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/MemoryCache$CacheEntry;

    .line 453
    .local v2, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v2}, Lsun/security/util/MemoryCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .end local v2    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    goto :goto_15

    .line 456
    :cond_2d
    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist accept(Lsun/security/util/Cache$CacheVisitor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/Cache$CacheVisitor<",
            "TK;TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    monitor-enter p0

    .line 443
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 444
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->getCachedEntries()Ljava/util/Map;

    move-result-object v0

    .line 446
    .local v0, "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1, v0}, Lsun/security/util/Cache$CacheVisitor;->visit(Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 447
    monitor-exit p0

    return-void

    .line 442
    .end local v0    # "cached":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "visitor":Lsun/security/util/Cache$CacheVisitor;, "Lsun/security/util/Cache$CacheVisitor<TK;TV;>;"
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist clear()V
    .registers 3

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 347
    :try_start_1
    iget-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_28

    .line 350
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 351
    .local v1, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 352
    .end local v1    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    goto :goto_f

    .line 353
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_1f

    .line 357
    :cond_28
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 358
    monitor-exit p0

    return-void

    .line 346
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 386
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 387
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_32

    .line 388
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 389
    monitor-exit p0

    return-object v1

    .line 391
    :cond_11
    :try_start_11
    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_1e
    move-wide v2, v4

    .line 392
    .local v2, "time":J
    invoke-interface {v0, v2, v3}, Lsun/security/util/MemoryCache$CacheEntry;->isValid(J)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 396
    iget-object v4, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_32

    .line 397
    monitor-exit p0

    return-object v1

    .line 399
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_2c
    :try_start_2c
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v1

    .line 385
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v2    # "time":J
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected blacklist newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;
    .registers 13
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)",
            "Lsun/security/util/MemoryCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 461
    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    if-eqz p5, :cond_d

    .line 462
    new-instance v6, Lsun/security/util/MemoryCache$SoftCacheEntry;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lsun/security/util/MemoryCache$SoftCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V

    return-object v6

    .line 464
    :cond_d
    new-instance v0, Lsun/security/util/MemoryCache$HardCacheEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lsun/security/util/MemoryCache$HardCacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;J)V

    return-object v0
.end method

.method public declared-synchronized blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 361
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 362
    iget-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    move-wide v7, v2

    goto :goto_16

    .line 363
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lsun/security/util/MemoryCache;->lifetime:J

    add-long/2addr v2, v0

    move-wide v7, v2

    :goto_16
    nop

    .line 364
    .local v7, "expirationTime":J
    iget-object v9, p0, Lsun/security/util/MemoryCache;->queue:Ljava/lang/ref/ReferenceQueue;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lsun/security/util/MemoryCache;->newEntry(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)Lsun/security/util/MemoryCache$CacheEntry;

    move-result-object v0

    .line 365
    .local v0, "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/MemoryCache$CacheEntry;

    .line 366
    .local v1, "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v1, :cond_2f

    .line 367
    invoke-interface {v1}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_62

    .line 368
    monitor-exit p0

    return-void

    .line 370
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_2f
    :try_start_2f
    iget v2, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-lez v2, :cond_60

    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v2, v3, :cond_60

    .line 371
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 372
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lsun/security/util/MemoryCache;->maxSize:I

    if-le v2, v3, :cond_60

    .line 373
    iget-object v2, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 374
    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/MemoryCache$CacheEntry;

    .line 379
    .local v3, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 380
    invoke-interface {v3}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_60
    .catchall {:try_start_2f .. :try_end_60} :catchall_62

    .line 383
    .end local v2    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    .end local v3    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    :cond_60
    monitor-exit p0

    return-void

    .line 360
    .end local v0    # "newEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v1    # "oldEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local v7    # "expirationTime":J
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 403
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 404
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/MemoryCache$CacheEntry;

    .line 405
    .local v0, "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_11

    .line 406
    invoke-interface {v0}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 408
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_11
    monitor-exit p0

    return-void

    .line 402
    .end local v0    # "entry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setCapacity(I)V
    .registers 5
    .param p1, "size"    # I

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 411
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 412
    if-lez p1, :cond_30

    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_30

    .line 413
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 414
    .local v0, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    iget-object v1, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_1f
    if-lez v1, :cond_30

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/MemoryCache$CacheEntry;

    .line 420
    .local v2, "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 421
    invoke-interface {v2}, Lsun/security/util/MemoryCache$CacheEntry;->invalidate()V

    .line 414
    .end local v2    # "lruEntry":Lsun/security/util/MemoryCache$CacheEntry;, "Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;"
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 425
    .end local v0    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/util/MemoryCache$CacheEntry<TK;TV;>;>;"
    .end local v1    # "i":I
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :cond_30
    if-lez p1, :cond_34

    move v0, p1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    iput v0, p0, Lsun/security/util/MemoryCache;->maxSize:I
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 430
    monitor-exit p0

    return-void

    .line 410
    .end local p1    # "size":I
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setTimeout(I)V
    .registers 6
    .param p1, "timeout"    # I

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 433
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->emptyQueue()V

    .line 434
    if-lez p1, :cond_b

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_d

    :cond_b
    const-wide/16 v0, 0x0

    :goto_d
    iput-wide v0, p0, Lsun/security/util/MemoryCache;->lifetime:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 439
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    .end local p1    # "timeout":I
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist size()I
    .registers 2

    .local p0, "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 342
    :try_start_1
    invoke-direct {p0}, Lsun/security/util/MemoryCache;->expungeExpiredEntries()V

    .line 343
    iget-object v0, p0, Lsun/security/util/MemoryCache;->cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    .line 341
    .end local p0    # "this":Lsun/security/util/MemoryCache;, "Lsun/security/util/MemoryCache<TK;TV;>;"
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
