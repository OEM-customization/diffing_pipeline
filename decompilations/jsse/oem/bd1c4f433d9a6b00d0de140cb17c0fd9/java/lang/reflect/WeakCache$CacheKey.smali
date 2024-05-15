.class final Ljava/lang/reflect/WeakCache$CacheKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
        "<TK;>;"
    }
.end annotation


# static fields
.field private static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field private final hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/reflect/WeakCache$CacheKey;->NULL_KEY:Ljava/lang/Object;

    .line 327
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 345
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/WeakCache$CacheKey;->hash:I

    .line 346
    return-void
.end method

.method static valueOf(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    if-nez p0, :cond_5

    .line 336
    sget-object v0, Ljava/lang/reflect/WeakCache$CacheKey;->NULL_KEY:Ljava/lang/Object;

    .line 333
    :goto_4
    return-object v0

    .line 338
    :cond_5
    new-instance v0, Ljava/lang/reflect/WeakCache$CacheKey;

    invoke-direct {v0, p0, p1}, Ljava/lang/reflect/WeakCache$CacheKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    if-eq p1, p0, :cond_1e

    .line 357
    if-eqz p1, :cond_21

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/WeakCache$CacheKey;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_21

    .line 360
    invoke-virtual {p0}, Ljava/lang/reflect/WeakCache$CacheKey;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_21

    .line 362
    check-cast p1, Ljava/lang/reflect/WeakCache$CacheKey;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/WeakCache$CacheKey;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_1f

    .line 356
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_1e
    :goto_1e
    return v1

    .restart local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_1f
    move v1, v2

    .line 362
    goto :goto_1e

    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_21
    move v1, v2

    .line 357
    goto :goto_1e
.end method

.method expungeFrom(Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<*+",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<*",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<*+Ljava/util/concurrent/ConcurrentMap<**>;>;"
    .local p2, "reverseMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<*Ljava/lang/Boolean;>;"
    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 372
    .local v2, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    if-eqz v2, :cond_1e

    .line 373
    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cacheValue$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 374
    .local v0, "cacheValue":Ljava/lang/Object;
    invoke-interface {p2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 377
    .end local v0    # "cacheValue":Ljava/lang/Object;
    .end local v1    # "cacheValue$iterator":Ljava/util/Iterator;
    :cond_1e
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 350
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    iget v0, p0, Ljava/lang/reflect/WeakCache$CacheKey;->hash:I

    return v0
.end method
