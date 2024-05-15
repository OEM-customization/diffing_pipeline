.class public interface abstract Ljava/util/List;
.super Ljava/lang/Object;
.source "List.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public static whitelist core-platform-api test-api of()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 809
    invoke-static {}, Ljava/util/ImmutableCollections$List0;->instance()Ljava/util/ImmutableCollections$List0;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 825
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$List1;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$List1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 842
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$List2;

    invoke-direct {v0, p0, p1}, Ljava/util/ImmutableCollections$List2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 860
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 879
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 899
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 920
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 943
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 967
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 992
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    .local p8, "e9":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;TE;TE;TE;TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1018
    .local p0, "e1":Ljava/lang/Object;, "TE;"
    .local p1, "e2":Ljava/lang/Object;, "TE;"
    .local p2, "e3":Ljava/lang/Object;, "TE;"
    .local p3, "e4":Ljava/lang/Object;, "TE;"
    .local p4, "e5":Ljava/lang/Object;, "TE;"
    .local p5, "e6":Ljava/lang/Object;, "TE;"
    .local p6, "e7":Ljava/lang/Object;, "TE;"
    .local p7, "e8":Ljava/lang/Object;, "TE;"
    .local p8, "e9":Ljava/lang/Object;, "TE;"
    .local p9, "e10":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    aput-object p8, v1, v2

    const/16 v2, 0x9

    aput-object p9, v1, v2

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs whitelist core-platform-api test-api of([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1050
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    if-eqz v0, :cond_22

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    .line 1058
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 1056
    :cond_10
    new-instance v0, Ljava/util/ImmutableCollections$List2;

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ljava/util/ImmutableCollections$List2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1054
    :cond_1a
    new-instance v0, Ljava/util/ImmutableCollections$List1;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$List1;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 1052
    :cond_22
    invoke-static {}, Ljava/util/ImmutableCollections$List0;->instance()Ljava/util/ImmutableCollections$List0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api add(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api addAll(ILjava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api addAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api clear()V
.end method

.method public abstract whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist core-platform-api test-api containsAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist core-platform-api test-api get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api hashCode()I
.end method

.method public abstract whitelist core-platform-api test-api indexOf(Ljava/lang/Object;)I
.end method

.method public abstract whitelist core-platform-api test-api isEmpty()Z
.end method

.method public abstract whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api lastIndexOf(Ljava/lang/Object;)I
.end method

.method public abstract whitelist core-platform-api test-api listIterator()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
.end method

.method public abstract whitelist core-platform-api test-api removeAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api replaceAll(Ljava/util/function/UnaryOperator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 433
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 435
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 436
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_7

    .line 438
    :cond_19
    return-void
.end method

.method public abstract whitelist core-platform-api test-api retainAll(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api size()I
.end method

.method public whitelist core-platform-api test-api sort(Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 523
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "a":[Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 525
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 526
    .local v1, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    .line 527
    .local v4, "e":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 528
    invoke-interface {v1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 526
    .end local v4    # "e":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 530
    :cond_1a
    return-void
.end method

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 791
    .local p0, "this":Ljava/util/List;, "Ljava/util/List<TE;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    .line 792
    new-instance v0, Ljava/util/AbstractList$RandomAccessSpliterator;

    invoke-direct {v0, p0}, Ljava/util/AbstractList$RandomAccessSpliterator;-><init>(Ljava/util/List;)V

    return-object v0

    .line 794
    :cond_a
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist core-platform-api test-api subList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist core-platform-api test-api toArray()[Ljava/lang/Object;
.end method

.method public abstract whitelist core-platform-api test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation
.end method
