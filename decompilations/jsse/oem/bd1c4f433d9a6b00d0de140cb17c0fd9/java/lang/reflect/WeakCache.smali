.class final Ljava/lang/reflect/WeakCache;
.super Ljava/lang/Object;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/WeakCache$CacheKey;,
        Ljava/lang/reflect/WeakCache$CacheValue;,
        Ljava/lang/reflect/WeakCache$Factory;,
        Ljava/lang/reflect/WeakCache$LookupValue;,
        Ljava/lang/reflect/WeakCache$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private final refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final reverseMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/function/Supplier",
            "<TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final subKeyFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<TK;TP;*>;"
        }
    .end annotation
.end field

.field private final valueFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction",
            "<TK;TP;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Ljava/lang/reflect/WeakCache;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .param p0, "-this"    # Ljava/lang/reflect/WeakCache;

    .prologue
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic -get1(Ljava/lang/reflect/WeakCache;)Ljava/util/function/BiFunction;
    .registers 2
    .param p0, "-this"    # Ljava/lang/reflect/WeakCache;

    .prologue
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->valueFactory:Ljava/util/function/BiFunction;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<TK;TP;*>;",
            "Ljava/util/function/BiFunction",
            "<TK;TP;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p1, "subKeyFactory":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TK;TP;*>;"
    .local p2, "valueFactory":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TK;TP;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 59
    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 62
    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 64
    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->subKeyFactory:Ljava/util/function/BiFunction;

    .line 82
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->valueFactory:Ljava/util/function/BiFunction;

    .line 83
    return-void
.end method

.method private expungeStaleEntries()V
    .registers 4

    .prologue
    .line 189
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    :goto_0
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/WeakCache$CacheKey;

    .local v0, "cacheKey":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    if-eqz v0, :cond_12

    .line 190
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/WeakCache$CacheKey;->expungeFrom(Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V

    goto :goto_0

    .line 192
    :cond_12
    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    .line 175
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/reflect/WeakCache$LookupValue;

    invoke-direct {v1, p1}, Ljava/lang/reflect/WeakCache$LookupValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;)TV;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parameter":Ljava/lang/Object;, "TP;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    .line 105
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, v1}, Ljava/lang/reflect/WeakCache$CacheKey;->valueOf(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;

    move-result-object v6

    .line 108
    .local v6, "cacheKey":Ljava/lang/Object;
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ConcurrentMap;

    .line 109
    .local v5, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    if-nez v5, :cond_26

    .line 111
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 112
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v5    # "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 111
    .restart local v5    # "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    invoke-interface {v1, v6, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/ConcurrentMap;

    .line 113
    .local v7, "oldValuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    if-eqz v7, :cond_26

    .line 114
    move-object v5, v7

    .line 120
    .end local v7    # "oldValuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    :cond_26
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->subKeyFactory:Ljava/util/function/BiFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    .local v4, "subKey":Ljava/lang/Object;
    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/function/Supplier;

    .line 122
    .local v8, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    const/4 v0, 0x0

    .line 125
    :cond_37
    :goto_37
    if-eqz v8, :cond_40

    .line 127
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    .line 128
    .local v9, "value":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_40

    .line 129
    return-object v9

    .line 137
    .end local v9    # "value":Ljava/lang/Object;, "TV;"
    :cond_40
    if-nez v0, :cond_4a

    .line 138
    new-instance v0, Ljava/lang/reflect/WeakCache$Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/WeakCache$Factory;-><init>(Ljava/lang/reflect/WeakCache;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap;)V

    .line 141
    :cond_4a
    if-nez v8, :cond_56

    .line 142
    invoke-interface {v5, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    check-cast v8, Ljava/util/function/Supplier;

    .line 143
    .restart local v8    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    if-nez v8, :cond_37

    .line 145
    move-object v8, v0

    goto :goto_37

    .line 149
    :cond_56
    invoke-interface {v5, v4, v8, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 153
    move-object v8, v0

    goto :goto_37

    .line 156
    :cond_5e
    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    check-cast v8, Ljava/util/function/Supplier;

    .restart local v8    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    goto :goto_37
.end method

.method public size()I
    .registers 2

    .prologue
    .line 183
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    .line 184
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
