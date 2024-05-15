.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$SingleFormatControl;,
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$BundleReference;,
        Ljava/util/ResourceBundle$LoaderReference;,
        Ljava/util/ResourceBundle$CacheKeyReference;,
        Ljava/util/ResourceBundle$CacheKey;,
        Ljava/util/ResourceBundle$RBClassLoader;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o INITIAL_CACHE_SIZE:I = 0x20

.field private static final greylist-max-o NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

.field private static final greylist-max-o cacheList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/ResourceBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile greylist-max-o cacheKey:Ljava/util/ResourceBundle$CacheKey;

.field private volatile greylist-max-o expired:Z

.field private volatile greylist-max-o keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o locale:Ljava/util/Locale;

.field private greylist-max-o name:Ljava/lang/String;

.field protected whitelist core-platform-api test-api parent:Ljava/util/ResourceBundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 282
    nop

    .line 288
    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    .line 307
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    .line 313
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 343
    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 389
    return-void
.end method

.method static synthetic blacklist access$200()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .line 282
    sget-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static greylist-max-o checkList(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 1397
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    .line 1398
    .local v2, "valid":Z
    :goto_d
    if-eqz v2, :cond_25

    .line 1399
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1400
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_14
    if-eqz v2, :cond_25

    if-ge v4, v3, :cond_25

    .line 1401
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v0

    :goto_21
    move v2, v5

    .line 1400
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1404
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_25
    return v2
.end method

.method public static final whitelist core-platform-api test-api clearCache()V
    .registers 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 1743
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    .line 1744
    return-void
.end method

.method public static final whitelist core-platform-api test-api clearCache(Ljava/lang/ClassLoader;)V
    .registers 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .line 1756
    if-eqz p0, :cond_23

    .line 1759
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1760
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/ResourceBundle$CacheKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle$CacheKey;

    .line 1761
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-virtual {v2}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v3, p0, :cond_21

    .line 1762
    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1764
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_21
    goto :goto_c

    .line 1765
    :cond_22
    return-void

    .line 1757
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/ResourceBundle$CacheKey;>;"
    :cond_23
    const/4 v0, 0x0

    throw v0
.end method

.method private static greylist-max-o findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .registers 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p3, "index"    # I
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .param p5, "baseBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ResourceBundle$Control;",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .line 1413
    .local p1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 1414
    .local v0, "targetLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 1415
    .local v1, "parent":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p3, v2, :cond_1b

    .line 1416
    add-int/lit8 v6, p3, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v3 .. v8}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v1

    goto :goto_26

    .line 1418
    :cond_1b
    if-eqz p5, :cond_26

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1419
    return-object p5

    .line 1427
    :cond_26
    :goto_26
    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    move-object v3, v2

    .local v3, "ref":Ljava/lang/Object;
    if-eqz v2, :cond_3c

    .line 1428
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    move-object v4, v3

    check-cast v4, Ljava/util/ResourceBundle$CacheKeyReference;

    invoke-interface {v4}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 1432
    :cond_3c
    const/4 v2, 0x0

    .line 1436
    .local v2, "expiredBundle":Z
    invoke-virtual {p0, v0}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    .line 1437
    invoke-static {p0, p4}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v4

    .line 1438
    .local v4, "bundle":Ljava/util/ResourceBundle;
    invoke-static {v4}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1439
    iget-boolean v2, v4, Ljava/util/ResourceBundle;->expired:Z

    .line 1440
    if-nez v2, :cond_68

    .line 1446
    iget-object v5, v4, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-ne v5, v1, :cond_53

    .line 1447
    return-object v4

    .line 1451
    :cond_53
    sget-object v5, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle$BundleReference;

    .line 1452
    .local v5, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v5, :cond_68

    invoke-virtual {v5}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_68

    .line 1453
    sget-object v6, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, p0, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1458
    .end local v5    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :cond_68
    sget-object v5, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v4, v5, :cond_be

    .line 1459
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle$CacheKey;

    .line 1462
    .local v5, "constKey":Ljava/util/ResourceBundle$CacheKey;
    :try_start_72
    invoke-static {p0, p2, p4, v2}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    move-result-object v6

    move-object v4, v6

    .line 1463
    if-eqz v4, :cond_98

    .line 1464
    iget-object v6, v4, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v6, :cond_80

    .line 1465
    invoke-virtual {v4, v1}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 1467
    :cond_80
    iput-object v0, v4, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1468
    invoke-static {p0, v4, p4}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v6
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_ad

    move-object v4, v6

    .line 1469
    nop

    .line 1476
    # invokes: Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;
    invoke-static {v5}, Ljava/util/ResourceBundle$CacheKey;->access$400(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/InterruptedException;

    if-eqz v6, :cond_97

    .line 1477
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 1469
    :cond_97
    return-object v4

    .line 1474
    :cond_98
    :try_start_98
    sget-object v6, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    invoke-static {p0, v6, p4}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_ad

    .line 1476
    # invokes: Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;
    invoke-static {v5}, Ljava/util/ResourceBundle$CacheKey;->access$400(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/InterruptedException;

    if-eqz v6, :cond_be

    .line 1477
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_be

    .line 1476
    :catchall_ad
    move-exception v6

    # invokes: Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;
    invoke-static {v5}, Ljava/util/ResourceBundle$CacheKey;->access$400(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/InterruptedException;

    if-eqz v7, :cond_bd

    .line 1477
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 1479
    :cond_bd
    throw v6

    .line 1481
    .end local v5    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :cond_be
    :goto_be
    return-object v1
.end method

.method private static greylist-max-o findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 19
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .line 1580
    move-object/from16 v1, p0

    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ResourceBundle$BundleReference;

    .line 1581
    .local v2, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    const/4 v3, 0x0

    if-nez v2, :cond_f

    .line 1582
    return-object v3

    .line 1584
    :cond_f
    invoke-virtual {v2}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ResourceBundle;

    .line 1585
    .local v12, "bundle":Ljava/util/ResourceBundle;
    if-nez v12, :cond_19

    .line 1586
    return-object v3

    .line 1588
    :cond_19
    iget-object v13, v12, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1589
    .local v13, "p":Ljava/util/ResourceBundle;
    nop

    .line 1623
    if-eqz v13, :cond_32

    iget-boolean v0, v13, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_32

    .line 1624
    nop

    .line 1625
    const/4 v0, 0x1

    iput-boolean v0, v12, Ljava/util/ResourceBundle;->expired:Z

    .line 1626
    iput-object v3, v12, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1627
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1628
    const/4 v12, 0x0

    move-object/from16 v3, p1

    goto/16 :goto_bf

    .line 1630
    :cond_32
    invoke-virtual {v2}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v14

    .line 1631
    .local v14, "key":Ljava/util/ResourceBundle$CacheKey;
    # getter for: Ljava/util/ResourceBundle$CacheKey;->expirationTime:J
    invoke-static {v14}, Ljava/util/ResourceBundle$CacheKey;->access$600(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    .line 1632
    .local v4, "expirationTime":J
    iget-boolean v0, v12, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_bd

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_bd

    .line 1633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-gtz v0, :cond_ba

    .line 1635
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v12, v0, :cond_b1

    .line 1638
    monitor-enter v12

    .line 1639
    :try_start_51
    # getter for: Ljava/util/ResourceBundle$CacheKey;->expirationTime:J
    invoke-static {v14}, Ljava/util/ResourceBundle$CacheKey;->access$600(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v8
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_aa

    move-wide v15, v8

    .line 1640
    .end local v4    # "expirationTime":J
    .local v15, "expirationTime":J
    :try_start_56
    iget-boolean v0, v12, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_9f

    cmp-long v0, v15, v6

    if-ltz v0, :cond_9f

    .line 1641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_a5

    cmp-long v0, v15, v4

    if-gtz v0, :cond_9c

    .line 1643
    :try_start_66
    invoke-virtual {v14}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1644
    invoke-virtual {v14}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v6

    .line 1645
    invoke-virtual {v14}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    move-result-object v7

    .line 1646
    invoke-virtual {v14}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 1648
    # getter for: Ljava/util/ResourceBundle$CacheKey;->loadTime:J
    invoke-static {v14}, Ljava/util/ResourceBundle$CacheKey;->access$700(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1643
    move-object/from16 v4, p1

    move-object v9, v12

    invoke-virtual/range {v4 .. v11}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v0

    iput-boolean v0, v12, Ljava/util/ResourceBundle;->expired:Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_83} :catch_84
    .catchall {:try_start_66 .. :try_end_83} :catchall_a5

    .line 1651
    goto :goto_88

    .line 1649
    :catch_84
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    :try_start_85
    # invokes: Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Ljava/util/ResourceBundle$CacheKey;->access$500(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    .line 1652
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_88
    iget-boolean v0, v12, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_96

    .line 1657
    iput-object v3, v12, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1658
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_93
    .catchall {:try_start_85 .. :try_end_93} :catchall_a5

    move-object/from16 v3, p1

    goto :goto_a1

    .line 1662
    :cond_96
    move-object/from16 v3, p1

    :try_start_98
    invoke-static {v14, v3}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    goto :goto_a1

    .line 1641
    :cond_9c
    move-object/from16 v3, p1

    goto :goto_a1

    .line 1640
    :cond_9f
    move-object/from16 v3, p1

    .line 1665
    :goto_a1
    monitor-exit v12
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_a3

    goto :goto_bf

    :catchall_a3
    move-exception v0

    goto :goto_a8

    :catchall_a5
    move-exception v0

    move-object/from16 v3, p1

    :goto_a8
    move-wide v4, v15

    goto :goto_ad

    .end local v15    # "expirationTime":J
    .restart local v4    # "expirationTime":J
    :catchall_aa
    move-exception v0

    move-object/from16 v3, p1

    :goto_ad
    :try_start_ad
    monitor-exit v12
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_af

    throw v0

    :catchall_af
    move-exception v0

    goto :goto_ad

    .line 1668
    :cond_b1
    move-object/from16 v3, p1

    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1669
    const/4 v12, 0x0

    goto :goto_bf

    .line 1633
    :cond_ba
    move-object/from16 v3, p1

    goto :goto_bf

    .line 1632
    :cond_bd
    move-object/from16 v3, p1

    .line 1673
    .end local v4    # "expirationTime":J
    .end local v14    # "key":Ljava/util/ResourceBundle$CacheKey;
    :goto_bf
    return-object v12
.end method

.method public static final whitelist core-platform-api test-api getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 771
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 772
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 773
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v2

    .line 771
    invoke-static {p0, v0, v1, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 843
    nop

    .line 844
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 845
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v1

    .line 843
    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1073
    if-eqz p2, :cond_b

    .line 1076
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_b
    const/4 v0, 0x0

    throw v0
.end method

.method public static whitelist core-platform-api test-api getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .line 1290
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    .line 1293
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0

    .line 1291
    :cond_9
    const/4 v0, 0x0

    throw v0
.end method

.method public static final whitelist core-platform-api test-api getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 888
    nop

    .line 889
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 888
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist core-platform-api test-api getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 813
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 814
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 813
    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 24
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .line 1313
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    if-eqz v1, :cond_e0

    if-eqz v8, :cond_e0

    .line 1321
    new-instance v2, Ljava/util/ResourceBundle$CacheKey;

    move-object/from16 v9, p2

    invoke-direct {v2, v0, v1, v9}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    move-object v10, v2

    .line 1322
    .local v10, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    const/4 v2, 0x0

    .line 1325
    .local v2, "bundle":Ljava/util/ResourceBundle;
    sget-object v3, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle$BundleReference;

    .line 1326
    .local v3, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v3, :cond_27

    .line 1327
    invoke-virtual {v3}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/util/ResourceBundle;

    .line 1328
    const/4 v3, 0x0

    move-object v11, v3

    goto :goto_28

    .line 1326
    :cond_27
    move-object v11, v3

    .line 1335
    .end local v3    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .local v11, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :goto_28
    invoke-static {v2}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-static {v2}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1336
    return-object v2

    .line 1342
    :cond_35
    # getter for: Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$Control;->access$300()Ljava/util/ResourceBundle$Control;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v8, v3, :cond_44

    instance-of v3, v8, Ljava/util/ResourceBundle$SingleFormatControl;

    if-eqz v3, :cond_42

    goto :goto_44

    :cond_42
    move v3, v12

    goto :goto_45

    :cond_44
    :goto_44
    move v3, v13

    :goto_45
    move v14, v3

    .line 1344
    .local v14, "isKnownControl":Z
    invoke-virtual {v8, v0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 1345
    .local v15, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v14, :cond_5b

    invoke-static {v15}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_53

    goto :goto_5b

    .line 1346
    :cond_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid Control: getFormats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1349
    :cond_5b
    :goto_5b
    const/4 v3, 0x0

    .line 1350
    .local v3, "baseBundle":Ljava/util/ResourceBundle;
    move-object/from16 v4, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v7, v4

    .line 1351
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .end local v3    # "baseBundle":Ljava/util/ResourceBundle;
    .local v7, "targetLocale":Ljava/util/Locale;
    .local v16, "bundle":Ljava/util/ResourceBundle;
    .local v17, "baseBundle":Ljava/util/ResourceBundle;
    :goto_63
    if-eqz v7, :cond_d1

    .line 1353
    invoke-virtual {v8, v0, v7}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v6

    .line 1354
    .local v6, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v14, :cond_7a

    invoke-static {v6}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_72

    goto :goto_7a

    .line 1355
    :cond_72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Control: getCandidateLocales"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1358
    :cond_7a
    :goto_7a
    const/4 v5, 0x0

    move-object v2, v10

    move-object v3, v6

    move-object v4, v15

    move-object/from16 v18, v6

    .end local v6    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local v18, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    move-object/from16 v6, p3

    move-object/from16 v19, v7

    .end local v7    # "targetLocale":Ljava/util/Locale;
    .local v19, "targetLocale":Ljava/util/Locale;
    move-object/from16 v7, v17

    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v2

    .line 1365
    .end local v16    # "bundle":Ljava/util/ResourceBundle;
    .restart local v2    # "bundle":Ljava/util/ResourceBundle;
    invoke-static {v2}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 1366
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v4, v2, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1367
    .local v3, "isBaseBundle":Z
    if-eqz v3, :cond_c1

    iget-object v4, v2, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c1

    .line 1368
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v13, :cond_b7

    iget-object v4, v2, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1369
    move-object/from16 v5, v18

    .end local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local v5, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 1370
    goto :goto_c3

    .line 1368
    .end local v5    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_b7
    move-object/from16 v5, v18

    .line 1376
    .end local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v5    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_b9
    if-eqz v3, :cond_c8

    if-nez v17, :cond_c8

    .line 1377
    move-object v4, v2

    move-object/from16 v17, v4

    .end local v17    # "baseBundle":Ljava/util/ResourceBundle;
    .local v4, "baseBundle":Ljava/util/ResourceBundle;
    goto :goto_c8

    .line 1367
    .end local v4    # "baseBundle":Ljava/util/ResourceBundle;
    .end local v5    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v17    # "baseBundle":Ljava/util/ResourceBundle;
    .restart local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_c1
    move-object/from16 v5, v18

    .line 1382
    .end local v3    # "isBaseBundle":Z
    .end local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v19    # "targetLocale":Ljava/util/Locale;
    :goto_c3
    move-object/from16 v16, v2

    goto :goto_d2

    .line 1365
    .restart local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v19    # "targetLocale":Ljava/util/Locale;
    :cond_c6
    move-object/from16 v5, v18

    .line 1352
    .end local v18    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :cond_c8
    :goto_c8
    move-object/from16 v4, v19

    .end local v19    # "targetLocale":Ljava/util/Locale;
    .local v4, "targetLocale":Ljava/util/Locale;
    invoke-virtual {v8, v0, v4}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v7

    move-object/from16 v16, v2

    .end local v4    # "targetLocale":Ljava/util/Locale;
    .restart local v7    # "targetLocale":Ljava/util/Locale;
    goto :goto_63

    .line 1351
    .end local v2    # "bundle":Ljava/util/ResourceBundle;
    .restart local v16    # "bundle":Ljava/util/ResourceBundle;
    :cond_d1
    move-object v4, v7

    .line 1382
    .end local v7    # "targetLocale":Ljava/util/Locale;
    :goto_d2
    if-nez v16, :cond_df

    .line 1383
    if-nez v17, :cond_dd

    .line 1384
    # invokes: Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->access$400(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    .line 1386
    :cond_dd
    move-object/from16 v16, v17

    .line 1389
    :cond_df
    return-object v16

    .line 1313
    .end local v10    # "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    .end local v11    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v14    # "isKnownControl":Z
    .end local v15    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "bundle":Ljava/util/ResourceBundle;
    .end local v17    # "baseBundle":Ljava/util/ResourceBundle;
    :cond_e0
    move-object/from16 v9, p2

    .line 1314
    const/4 v2, 0x0

    throw v2
.end method

.method private static greylist-max-o getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .param p0, "baseName"    # Ljava/lang/String;

    .line 1308
    # getter for: Ljava/util/ResourceBundle$Control;->INSTANCE:Ljava/util/ResourceBundle$Control;
    invoke-static {}, Ljava/util/ResourceBundle$Control;->access$300()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 471
    .local p0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 472
    .local v0, "cl":Ljava/lang/ClassLoader;
    :goto_8
    if-nez v0, :cond_e

    .line 480
    # getter for: Ljava/util/ResourceBundle$RBClassLoader;->INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;
    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->access$000()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object v0

    .line 482
    :cond_e
    return-object v0
.end method

.method private static greylist-max-o hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .registers 9
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .line 1533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1534
    .local v0, "now":J
    :goto_4
    if-eqz p0, :cond_22

    .line 1535
    iget-boolean v2, p0, Ljava/util/ResourceBundle;->expired:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 1536
    return v3

    .line 1538
    :cond_c
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1539
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    if-eqz v2, :cond_1f

    .line 1540
    # getter for: Ljava/util/ResourceBundle$CacheKey;->expirationTime:J
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->access$600(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    .line 1541
    .local v4, "expirationTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1f

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1f

    .line 1542
    return v3

    .line 1545
    .end local v4    # "expirationTime":J
    :cond_1f
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1546
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    goto :goto_4

    .line 1547
    :cond_22
    const/4 v2, 0x1

    return v2
.end method

.method private static greylist-max-o isValidBundle(Ljava/util/ResourceBundle;)Z
    .registers 2
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .line 1525
    if-eqz p0, :cond_8

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .registers 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ResourceBundle$Control;",
            "Z)",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .line 1491
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v6

    .line 1493
    .local v6, "targetLocale":Ljava/util/Locale;
    const/4 v0, 0x0

    .line 1494
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 1495
    .local v7, "size":I
    const/4 v1, 0x0

    move-object v8, v0

    move v9, v1

    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .local v8, "bundle":Ljava/util/ResourceBundle;
    .local v9, "i":I
    :goto_c
    if-ge v9, v7, :cond_45

    .line 1496
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1498
    .local v10, "format":Ljava/lang/String;
    :try_start_15
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1499
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1498
    move-object v0, p2

    move-object v2, v6

    move-object v3, v10

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/LinkageError; {:try_start_15 .. :try_end_25} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_25} :catch_27

    .line 1507
    .end local v8    # "bundle":Ljava/util/ResourceBundle;
    .restart local v0    # "bundle":Ljava/util/ResourceBundle;
    move-object v8, v0

    goto :goto_31

    .line 1505
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .restart local v8    # "bundle":Ljava/util/ResourceBundle;
    :catch_27
    move-exception v0

    .line 1506
    .local v0, "cause":Ljava/lang/Exception;
    # invokes: Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V
    invoke-static {p0, v0}, Ljava/util/ResourceBundle$CacheKey;->access$500(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 1500
    .end local v0    # "cause":Ljava/lang/Exception;
    :catch_2c
    move-exception v0

    .line 1504
    .local v0, "error":Ljava/lang/LinkageError;
    # invokes: Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V
    invoke-static {p0, v0}, Ljava/util/ResourceBundle$CacheKey;->access$500(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    .line 1507
    .end local v0    # "error":Ljava/lang/LinkageError;
    nop

    .line 1508
    :goto_31
    if-eqz v8, :cond_42

    .line 1511
    invoke-virtual {p0, v10}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    .line 1513
    iput-object v6, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, v8, Ljava/util/ResourceBundle;->expired:Z

    .line 1517
    goto :goto_45

    .line 1495
    .end local v10    # "format":Ljava/lang/String;
    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 1521
    .end local v9    # "i":I
    :cond_45
    :goto_45
    return-object v8
.end method

.method private static greylist-max-o putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 8
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    .line 1688
    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    .line 1689
    # getter for: Ljava/util/ResourceBundle$CacheKey;->expirationTime:J
    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->access$600(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3f

    .line 1690
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 1691
    .local v0, "key":Ljava/util/ResourceBundle$CacheKey;
    new-instance v1, Ljava/util/ResourceBundle$BundleReference;

    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2, v0}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    .line 1692
    .local v1, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    iput-object v0, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1695
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle$BundleReference;

    .line 1699
    .local v2, "result":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v2, :cond_3f

    .line 1700
    invoke-virtual {v2}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle;

    .line 1701
    .local v3, "rb":Ljava/util/ResourceBundle;
    if-eqz v3, :cond_3a

    iget-boolean v4, v3, Ljava/util/ResourceBundle;->expired:Z

    if-nez v4, :cond_3a

    .line 1703
    const/4 v4, 0x0

    iput-object v4, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1704
    move-object p1, v3

    .line 1707
    invoke-virtual {v1}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    goto :goto_3f

    .line 1711
    :cond_3a
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    .end local v0    # "key":Ljava/util/ResourceBundle$CacheKey;
    .end local v1    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v2    # "result":Ljava/util/ResourceBundle$BundleReference;
    .end local v3    # "rb":Ljava/util/ResourceBundle;
    :cond_3f
    :goto_3f
    return-object p1
.end method

.method private static greylist-max-o setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .registers 8
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .line 1719
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1720
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 1719
    invoke-virtual {p1, v0, v1}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 1721
    .local v0, "ttl":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1f

    .line 1724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1725
    .local v2, "now":J
    # setter for: Ljava/util/ResourceBundle$CacheKey;->loadTime:J
    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->access$702(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1726
    add-long v4, v2, v0

    # setter for: Ljava/util/ResourceBundle$CacheKey;->expirationTime:J
    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->access$602(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1727
    .end local v2    # "now":J
    goto :goto_28

    :cond_1f
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_29

    .line 1728
    # setter for: Ljava/util/ResourceBundle$CacheKey;->expirationTime:J
    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->access$602(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1732
    :goto_28
    return-void

    .line 1730
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Control: TTL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist-max-o throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 1558
    instance-of v0, p2, Ljava/util/MissingResourceException;

    if-eqz v0, :cond_5

    .line 1559
    const/4 p2, 0x0

    .line 1561
    :cond_5
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find bundle for base name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api containsKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1800
    if-eqz p1, :cond_16

    .line 1803
    move-object v0, p0

    .local v0, "rb":Ljava/util/ResourceBundle;
    :goto_3
    if-eqz v0, :cond_14

    .line 1804
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1805
    const/4 v1, 0x1

    return v1

    .line 1803
    :cond_11
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_3

    .line 1808
    .end local v0    # "rb":Ljava/util/ResourceBundle;
    :cond_14
    const/4 v0, 0x0

    return v0

    .line 1801
    :cond_16
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api getBaseBundleName()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 463
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 439
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 440
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_40

    .line 441
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_e

    .line 442
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    :cond_e
    if-eqz v0, :cond_11

    goto :goto_40

    .line 445
    :cond_11
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_40
    :goto_40
    return-object v0
.end method

.method public final whitelist core-platform-api test-api getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 405
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 422
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract whitelist core-platform-api test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected whitelist core-platform-api test-api handleKeySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v0, :cond_2f

    .line 1846
    monitor-enter p0

    .line 1847
    :try_start_5
    iget-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v0, :cond_2a

    .line 1848
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1849
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1850
    .local v1, "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1851
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1852
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 1853
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1855
    .end local v2    # "key":Ljava/lang/String;
    :cond_27
    goto :goto_12

    .line 1856
    :cond_28
    iput-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    .line 1858
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2a
    monitor-exit p0

    goto :goto_2f

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v0

    .line 1860
    :cond_2f
    :goto_2f
    iget-object v0, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist core-platform-api test-api keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1820
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1821
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "rb":Ljava/util/ResourceBundle;
    :goto_6
    if-eqz v1, :cond_12

    .line 1822
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1821
    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_6

    .line 1824
    .end local v1    # "rb":Ljava/util/ResourceBundle;
    :cond_12
    return-object v0
.end method

.method protected whitelist core-platform-api test-api setParent(Ljava/util/ResourceBundle;)V
    .registers 2
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    .line 527
    nop

    .line 528
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 529
    return-void
.end method
