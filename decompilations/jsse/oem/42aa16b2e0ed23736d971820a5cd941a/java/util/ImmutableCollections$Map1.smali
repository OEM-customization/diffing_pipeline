.class final Ljava/util/ImmutableCollections$Map1;
.super Ljava/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Map1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ImmutableCollections$AbstractImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist k0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field private final blacklist v0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 614
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    .local p1, "k0":Ljava/lang/Object;, "TK;"
    .local p2, "v0":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    .line 615
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    .line 616
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    .line 617
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 635
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 5

    .line 639
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    new-instance v0, Ljava/util/CollSer;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 626
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 631
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    new-instance v0, Ljava/util/KeyValueHolder;

    iget-object v1, p0, Ljava/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/KeyValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 3

    .line 644
    .local p0, "this":Ljava/util/ImmutableCollections$Map1;, "Ljava/util/ImmutableCollections$Map1<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ImmutableCollections$Map1;->k0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/ImmutableCollections$Map1;->v0:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
