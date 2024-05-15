.class Ljava/util/Collections$EmptyMap;
.super Ljava/util/AbstractMap;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x593614855adce7d0L


# direct methods
.method private constructor greylist <init>()V
    .registers 1

    .line 4625
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Collections$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Collections$1;

    .line 4625
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Collections$EmptyMap;-><init>()V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 4709
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4698
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 4686
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4692
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 4633
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 4634
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4638
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 4641
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4655
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4656
    return-void
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4635
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 4650
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    return-object p2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 4644
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 4632
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4636
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 4704
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4665
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 4670
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4680
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4675
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 4660
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4661
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 4631
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4637
    .local p0, "this":Ljava/util/Collections$EmptyMap;, "Ljava/util/Collections$EmptyMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
