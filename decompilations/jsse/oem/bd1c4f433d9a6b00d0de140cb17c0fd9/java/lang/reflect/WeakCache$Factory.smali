.class final Ljava/lang/reflect/WeakCache$Factory;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final parameter:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private final subKey:Ljava/lang/Object;

.field final synthetic this$0:Ljava/lang/reflect/WeakCache;

.field private final valuesMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/lang/reflect/WeakCache$Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/reflect/WeakCache$Factory;->-assertionsDisabled:Z

    .line 198
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/WeakCache;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 6
    .param p4, "subKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    .local p1, "this$0":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "parameter":Ljava/lang/Object;, "TP;"
    .local p5, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    iput-object p1, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Ljava/lang/reflect/WeakCache$Factory;->key:Ljava/lang/Object;

    .line 208
    iput-object p3, p0, Ljava/lang/reflect/WeakCache$Factory;->parameter:Ljava/lang/Object;

    .line 209
    iput-object p4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    .line 210
    iput-object p5, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    .line 211
    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    const/4 v5, 0x0

    monitor-enter p0

    .line 216
    :try_start_2
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_38

    .line 217
    .local v1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    if-eq v1, p0, :cond_10

    monitor-exit p0

    .line 223
    return-object v5

    .line 228
    :cond_10
    const/4 v2, 0x0

    .line 230
    .local v2, "value":Ljava/lang/Object;, "TV;"
    :try_start_11
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-static {v3}, Ljava/lang/reflect/WeakCache;->-get1(Ljava/lang/reflect/WeakCache;)Ljava/util/function/BiFunction;

    move-result-object v3

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->key:Ljava/lang/Object;

    iget-object v5, p0, Ljava/lang/reflect/WeakCache$Factory;->parameter:Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_3b

    move-result-object v2

    .line 232
    if-nez v2, :cond_2c

    .line 233
    :try_start_25
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    :cond_2c
    sget-boolean v3, Ljava/lang/reflect/WeakCache$Factory;->-assertionsDisabled:Z

    if-nez v3, :cond_44

    if-nez v2, :cond_44

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_38

    .end local v1    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_38
    move-exception v3

    monitor-exit p0

    throw v3

    .line 231
    .restart local v1    # "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_3b
    move-exception v3

    .line 233
    :try_start_3c
    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v5, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v4, v5, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    throw v3

    .line 240
    :cond_44
    new-instance v0, Ljava/lang/reflect/WeakCache$CacheValue;

    invoke-direct {v0, v2}, Ljava/lang/reflect/WeakCache$CacheValue;-><init>(Ljava/lang/Object;)V

    .line 243
    .local v0, "cacheValue":Ljava/lang/reflect/WeakCache$CacheValue;, "Ljava/lang/reflect/WeakCache$CacheValue<TV;>;"
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->valuesMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v4, p0, Ljava/lang/reflect/WeakCache$Factory;->subKey:Ljava/lang/Object;

    invoke-interface {v3, v4, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 245
    iget-object v3, p0, Ljava/lang/reflect/WeakCache$Factory;->this$0:Ljava/lang/reflect/WeakCache;

    invoke-static {v3}, Ljava/lang/reflect/WeakCache;->-get0(Ljava/lang/reflect/WeakCache;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_3c .. :try_end_5e} :catchall_38

    monitor-exit p0

    .line 252
    return-object v2

    .line 247
    :cond_60
    :try_start_60
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Should not reach here"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_38
.end method
