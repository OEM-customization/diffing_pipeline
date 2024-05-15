.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$1;,
        Ljava/util/ResourceBundle$BundleReference;,
        Ljava/util/ResourceBundle$CacheKey;,
        Ljava/util/ResourceBundle$CacheKeyReference;,
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$LoaderReference;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$RBClassLoader;,
        Ljava/util/ResourceBundle$SingleFormatControl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_CACHE_SIZE:I = 0x20

.field private static final NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

.field private static final cacheList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/ResourceBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile cacheKey:Ljava/util/ResourceBundle$CacheKey;

.field private volatile expired:Z

.field private volatile keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static synthetic -get0()Ljava/lang/ref/ReferenceQueue;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-class v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    .line 285
    new-instance v0, Ljava/util/ResourceBundle$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    .line 305
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 304
    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    .line 310
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 340
    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 386
    return-void
.end method

.method private static checkList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1394
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_1d

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    .line 1395
    :goto_8
    if-eqz v2, :cond_21

    .line 1396
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1397
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-eqz v2, :cond_21

    if-ge v0, v1, :cond_21

    .line 1398
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    .line 1397
    .local v2, "valid":Z
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1394
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "valid":Z
    :cond_1d
    const/4 v2, 0x0

    .restart local v2    # "valid":Z
    goto :goto_8

    .line 1398
    .end local v2    # "valid":Z
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1f
    const/4 v2, 0x0

    .restart local v2    # "valid":Z
    goto :goto_1a

    .line 1401
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "valid":Z
    :cond_21
    return v2
.end method

.method public static final clearCache()V
    .registers 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1741
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    .line 1743
    return-void
.end method

.method public static final clearCache(Ljava/lang/ClassLoader;)V
    .registers 5
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1755
    if-nez p0, :cond_8

    .line 1756
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1758
    :cond_8
    sget-object v3, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1759
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/ResourceBundle$CacheKey;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    .line 1760
    .local v0, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-virtual {v0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v3, p0, :cond_12

    .line 1761
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1764
    .end local v0    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_28
    return-void
.end method

.method private static findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .registers 21
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p3, "index"    # I
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .param p5, "baseBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ResourceBundle$Control;",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1410
    .local p1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Locale;

    .line 1411
    .local v14, "targetLocale":Ljava/util/Locale;
    const/4 v12, 0x0

    .line 1412
    .local v12, "parent":Ljava/util/ResourceBundle;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_38

    .line 1413
    add-int/lit8 v5, p3, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v12

    .line 1424
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_24
    :goto_24
    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v13

    .local v13, "ref":Ljava/lang/Object;
    if-eqz v13, :cond_43

    .line 1425
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    check-cast v13, Ljava/util/ResourceBundle$CacheKeyReference;

    .end local v13    # "ref":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 1415
    .restart local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_38
    if-eqz p5, :cond_24

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v14}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1416
    return-object p5

    .line 1429
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    .restart local v13    # "ref":Ljava/lang/Object;
    :cond_43
    const/4 v11, 0x0

    .line 1433
    .local v11, "expiredBundle":Z
    invoke-virtual {p0, v14}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    .line 1434
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 1435
    .local v8, "bundle":Ljava/util/ResourceBundle;
    invoke-static {v8}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 1436
    iget-boolean v11, v8, Ljava/util/ResourceBundle;->expired:Z

    .line 1437
    .local v11, "expiredBundle":Z
    if-nez v11, :cond_71

    .line 1443
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-ne v2, v12, :cond_5c

    .line 1444
    return-object v8

    .line 1448
    :cond_5c
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ResourceBundle$BundleReference;

    .line 1449
    .local v9, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v9, :cond_71

    invoke-virtual {v9}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_71

    .line 1450
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1455
    .end local v9    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v11    # "expiredBundle":Z
    :cond_71
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v8, v2, :cond_ba

    .line 1456
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ResourceBundle$CacheKey;

    .line 1459
    .local v10, "constKey":Ljava/util/ResourceBundle$CacheKey;
    :try_start_7b
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {p0, v0, v1, v11}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    move-result-object v8

    .line 1460
    if-eqz v8, :cond_a4

    .line 1461
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v2, :cond_8c

    .line 1462
    invoke-virtual {v8, v12}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    .line 1464
    :cond_8c
    iput-object v14, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1465
    move-object/from16 v0, p4

    invoke-static {p0, v8, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_93
    .catchall {:try_start_7b .. :try_end_93} :catchall_bb

    move-result-object v8

    .line 1473
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_a3

    .line 1474
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1466
    :cond_a3
    return-object v8

    .line 1471
    :cond_a4
    :try_start_a4
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    move-object/from16 v0, p4

    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_bb

    .line 1473
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_ba

    .line 1474
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1478
    .end local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :cond_ba
    return-object v12

    .line 1472
    .restart local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :catchall_bb
    move-exception v2

    .line 1473
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_cb

    .line 1474
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1472
    :cond_cb
    throw v2
.end method

.method private static findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 16
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1577
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ResourceBundle$BundleReference;

    .line 1578
    .local v8, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-nez v8, :cond_e

    .line 1579
    return-object v1

    .line 1581
    :cond_e
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ResourceBundle;

    .line 1582
    .local v5, "bundle":Ljava/util/ResourceBundle;
    if-nez v5, :cond_17

    .line 1583
    return-object v1

    .line 1585
    :cond_17
    iget-object v13, v5, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1586
    .local v13, "p":Ljava/util/ResourceBundle;
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_27

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-ne v13, v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1620
    :cond_27
    if-eqz v13, :cond_47

    iget-boolean v0, v13, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_47

    .line 1621
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_3b

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-ne v5, v0, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1622
    :cond_3b
    const/4 v0, 0x1

    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    .line 1623
    iput-object v1, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1624
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1625
    const/4 v5, 0x0

    .line 1670
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_46
    :goto_46
    return-object v5

    .line 1627
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_47
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    move-result-object v12

    .line 1628
    .local v12, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1629
    .local v10, "expirationTime":J
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_46

    cmp-long v0, v10, v2

    if-ltz v0, :cond_46

    .line 1630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_46

    .line 1632
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq v5, v0, :cond_ad

    .line 1635
    monitor-enter v5

    .line 1636
    :try_start_64
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v10

    .line 1637
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-nez v0, :cond_9f

    cmp-long v0, v10, v2

    if-ltz v0, :cond_9f

    .line 1638
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_a6

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_9f

    .line 1640
    :try_start_78
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1641
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1642
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 1643
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1645
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get1(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v6

    move-object v0, p1

    .line 1640
    invoke-virtual/range {v0 .. v7}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    move-result v0

    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_93} :catch_a1
    .catchall {:try_start_78 .. :try_end_93} :catchall_a6

    .line 1649
    :goto_93
    :try_start_93
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v0, :cond_a9

    .line 1654
    const/4 v0, 0x0

    iput-object v0, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1655
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_9f
    .catchall {:try_start_93 .. :try_end_9f} :catchall_a6

    :cond_9f
    :goto_9f
    monitor-exit v5

    goto :goto_46

    .line 1646
    :catch_a1
    move-exception v9

    .line 1647
    .local v9, "e":Ljava/lang/Exception;
    :try_start_a2
    invoke-static {p0, v9}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_93

    .line 1635
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_a6
    move-exception v0

    monitor-exit v5

    throw v0

    .line 1659
    :cond_a9
    :try_start_a9
    invoke-static {v12, p1}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_a6

    goto :goto_9f

    .line 1665
    :cond_ad
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1666
    const/4 v5, 0x0

    .local v5, "bundle":Ljava/util/ResourceBundle;
    goto :goto_46
.end method

.method public static final getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 771
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 773
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 775
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v2

    .line 771
    invoke-static {p0, v0, v1, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 849
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 851
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v1

    .line 847
    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1080
    if-nez p2, :cond_8

    .line 1081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1083
    :cond_8
    invoke-static {p0}, Ljava/util/ResourceBundle;->getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 5
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 1297
    if-eqz p2, :cond_4

    if-nez p3, :cond_a

    .line 1298
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1300
    :cond_a
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 896
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 894
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 815
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 817
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 815
    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 16
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const/4 v3, 0x0

    .line 1310
    if-eqz p1, :cond_5

    if-nez p3, :cond_b

    .line 1311
    :cond_5
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1318
    :cond_b
    new-instance v0, Ljava/util/ResourceBundle$CacheKey;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    .line 1319
    .local v0, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    const/4 v6, 0x0

    .line 1322
    .local v6, "bundle":Ljava/util/ResourceBundle;
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ResourceBundle$BundleReference;

    .line 1323
    .local v7, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v7, :cond_22

    .line 1324
    invoke-virtual {v7}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    check-cast v6, Ljava/util/ResourceBundle;

    .line 1325
    .local v6, "bundle":Ljava/util/ResourceBundle;
    const/4 v7, 0x0

    .line 1332
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v7    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :cond_22
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-static {v6}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1333
    return-object v6

    .line 1339
    :cond_2f
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v4

    if-eq p3, v4, :cond_4e

    .line 1340
    instance-of v9, p3, Ljava/util/ResourceBundle$SingleFormatControl;

    .line 1341
    :goto_37
    invoke-virtual {p3, p0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1342
    .local v2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_50

    invoke-static {v2}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_50

    .line 1343
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getFormats"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1339
    .end local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4e
    const/4 v9, 0x1

    .local v9, "isKnownControl":Z
    goto :goto_37

    .line 1346
    .end local v9    # "isKnownControl":Z
    .restart local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_50
    const/4 v5, 0x0

    .line 1347
    .local v5, "baseBundle":Ljava/util/ResourceBundle;
    move-object v10, p1

    .end local v5    # "baseBundle":Ljava/util/ResourceBundle;
    .local v10, "targetLocale":Ljava/util/Locale;
    :goto_52
    if-eqz v10, :cond_9b

    .line 1350
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    .line 1351
    .local v1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v9, :cond_6b

    invoke-static {v1}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6b

    .line 1352
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Control: getCandidateLocales"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6b
    move-object v4, p3

    .line 1355
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    move-result-object v6

    .line 1362
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1363
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v11, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1364
    .local v8, "isBaseBundle":Z
    if-eqz v8, :cond_9b

    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 1365
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_a8

    .line 1366
    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1364
    if-eqz v4, :cond_a8

    .line 1379
    .end local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v8    # "isBaseBundle":Z
    :cond_9b
    if-nez v6, :cond_a7

    .line 1380
    if-nez v5, :cond_a6

    .line 1381
    invoke-static {v0}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {p0, p1, v3}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    .line 1383
    :cond_a6
    move-object v6, v5

    .line 1386
    :cond_a7
    return-object v6

    .line 1373
    .restart local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    .restart local v8    # "isBaseBundle":Z
    :cond_a8
    if-eqz v8, :cond_ad

    if-nez v5, :cond_ad

    .line 1374
    move-object v5, v6

    .line 1349
    .end local v8    # "isBaseBundle":Z
    :cond_ad
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v10

    goto :goto_52
.end method

.method private static getDefaultControl(Ljava/lang/String;)Ljava/util/ResourceBundle$Control;
    .registers 2
    .param p0, "baseName"    # Ljava/lang/String;

    .prologue
    .line 1305
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    move-result-object v0

    return-object v0
.end method

.method private static getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 472
    if-nez p0, :cond_6

    .line 480
    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->-get0()Ljava/util/ResourceBundle$RBClassLoader;

    move-result-object p0

    .line 482
    :cond_6
    return-object p0
.end method

.method private static hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .registers 10
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    const/4 v8, 0x0

    .line 1530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1531
    .local v4, "now":J
    :goto_5
    if-eqz p0, :cond_22

    .line 1532
    iget-boolean v3, p0, Ljava/util/ResourceBundle;->expired:Z

    if-eqz v3, :cond_c

    .line 1533
    return v8

    .line 1535
    :cond_c
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1536
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    if-eqz v2, :cond_1f

    .line 1537
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v0

    .line 1538
    .local v0, "expirationTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-ltz v3, :cond_1f

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1f

    .line 1539
    return v8

    .line 1542
    .end local v0    # "expirationTime":J
    :cond_1f
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_5

    .line 1544
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_22
    const/4 v3, 0x1

    return v3
.end method

.method private static isValidBundle(Ljava/util/ResourceBundle;)Z
    .registers 3
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    const/4 v0, 0x0

    .line 1522
    if-eqz p0, :cond_8

    sget-object v1, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-eq p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .registers 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ResourceBundle$Control;",
            "Z)",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1488
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 1490
    .local v2, "targetLocale":Ljava/util/Locale;
    const/4 v6, 0x0

    .line 1491
    .local v6, "bundle":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .line 1492
    .local v10, "size":I
    const/4 v9, 0x0

    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .local v9, "i":I
    :goto_a
    if-ge v9, v10, :cond_30

    .line 1493
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1495
    .local v3, "format":Ljava/lang/String;
    :try_start_12
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1496
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object v0, p2

    move v5, p3

    .line 1495
    invoke-virtual/range {v0 .. v5}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_1f
    .catch Ljava/lang/LinkageError; {:try_start_12 .. :try_end_1f} :catch_36
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_31

    move-result-object v6

    .line 1505
    :goto_20
    if-eqz v6, :cond_3b

    .line 1508
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    .line 1510
    iput-object v2, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, v6, Ljava/util/ResourceBundle;->expired:Z

    .line 1518
    .end local v3    # "format":Ljava/lang/String;
    :cond_30
    return-object v6

    .line 1502
    .restart local v3    # "format":Ljava/lang/String;
    :catch_31
    move-exception v7

    .line 1503
    .local v7, "cause":Ljava/lang/Exception;
    invoke-static {p0, v7}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 1497
    .end local v7    # "cause":Ljava/lang/Exception;
    :catch_36
    move-exception v8

    .line 1501
    .local v8, "error":Ljava/lang/LinkageError;
    invoke-static {p0, v8}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    goto :goto_20

    .line 1492
    .end local v8    # "error":Ljava/lang/LinkageError;
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a
.end method

.method private static putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .registers 12
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    const/4 v8, 0x0

    .line 1685
    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    .line 1686
    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3b

    .line 1687
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ResourceBundle$CacheKey;

    .line 1688
    .local v1, "key":Ljava/util/ResourceBundle$CacheKey;
    new-instance v0, Ljava/util/ResourceBundle$BundleReference;

    sget-object v4, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v4, v1}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    .line 1689
    .local v0, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    iput-object v1, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1692
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ResourceBundle$BundleReference;

    .line 1696
    .local v3, "result":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v3, :cond_3b

    .line 1697
    invoke-virtual {v3}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ResourceBundle;

    .line 1698
    .local v2, "rb":Ljava/util/ResourceBundle;
    if-eqz v2, :cond_3c

    iget-boolean v4, v2, Ljava/util/ResourceBundle;->expired:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c

    .line 1700
    iput-object v8, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    .line 1701
    move-object p1, v2

    .line 1704
    invoke-virtual {v0}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    .line 1712
    .end local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .end local v2    # "rb":Ljava/util/ResourceBundle;
    .end local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_3b
    :goto_3b
    return-object p1

    .line 1708
    .restart local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .restart local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .restart local v2    # "rb":Ljava/util/ResourceBundle;
    .restart local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_3c
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b
.end method

.method private static setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .registers 9
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    .prologue
    .line 1716
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1717
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 1716
    invoke-virtual {p1, v4, v5}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    move-result-wide v2

    .line 1718
    .local v2, "ttl":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1f

    .line 1721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1722
    .local v0, "now":J
    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->-set1(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1723
    add-long v4, v0, v2

    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    .line 1729
    .end local v0    # "now":J
    :goto_1e
    return-void

    .line 1724
    :cond_1f
    const-wide/16 v4, -0x2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_29

    .line 1725
    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    goto :goto_1e

    .line 1727
    :cond_29
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid Control: TTL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V
    .registers 7
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 1555
    instance-of v0, p2, Ljava/util/MissingResourceException;

    if-eqz v0, :cond_5

    .line 1556
    const/4 p2, 0x0

    .line 1558
    .end local p2    # "cause":Ljava/lang/Throwable;
    :cond_5
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find bundle for base name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1559
    const-string/jumbo v2, ", locale "

    .line 1558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1561
    const-string/jumbo v3, ""

    .line 1558
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1799
    if-nez p1, :cond_8

    .line 1800
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1802
    :cond_8
    move-object v0, p0

    .local v0, "rb":Ljava/util/ResourceBundle;
    :goto_9
    if-eqz v0, :cond_1a

    .line 1803
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1804
    const/4 v1, 0x1

    return v1

    .line 1802
    :cond_17
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_9

    .line 1807
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public getBaseBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 437
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_47

    .line 438
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v1, :cond_10

    .line 439
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    :cond_10
    if-nez v0, :cond_47

    .line 442
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 444
    const-string/jumbo v3, ", key "

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_47
    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1844
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_2e

    .line 1845
    monitor-enter p0

    .line 1846
    :try_start_5
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    if-nez v3, :cond_2d

    .line 1847
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1848
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1849
    .local v0, "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1850
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1851
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 1852
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    goto :goto_12

    .line 1845
    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1855
    .restart local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2b
    :try_start_2b
    iput-object v2, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2d
    monitor-exit p0

    .line 1859
    :cond_2e
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    return-object v3
.end method

.method public keySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1819
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1820
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    .local v1, "rb":Ljava/util/ResourceBundle;
    :goto_6
    if-eqz v1, :cond_12

    .line 1821
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1820
    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    goto :goto_6

    .line 1823
    :cond_12
    return-object v0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    .prologue
    .line 527
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    if-nez v0, :cond_e

    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    if-ne p1, v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 528
    :cond_e
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 529
    return-void
.end method
