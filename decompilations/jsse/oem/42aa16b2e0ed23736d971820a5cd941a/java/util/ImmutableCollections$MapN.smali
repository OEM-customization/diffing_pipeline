.class final Ljava/util/ImmutableCollections$MapN;
.super Ljava/util/ImmutableCollections$AbstractImmutableMap;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapN"
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
.field final blacklist size:I
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field final blacklist table:[Ljava/lang/Object;
    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field


# direct methods
.method varargs constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 10
    .param p1, "input"    # [Ljava/lang/Object;

    .line 663
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/ImmutableCollections$AbstractImmutableMap;-><init>()V

    .line 664
    array-length v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_56

    .line 667
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    .line 669
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 670
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v1, -0x2

    .line 671
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    .line 673
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_55

    .line 675
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    .local v2, "k":Ljava/lang/Object;, "TK;"
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 678
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v2}, Ljava/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v4

    .line 679
    .local v4, "idx":I
    if-gez v4, :cond_3e

    .line 682
    add-int/lit8 v5, v4, 0x1

    neg-int v5, v5

    .line 683
    .local v5, "dest":I
    iget-object v6, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aput-object v2, v6, v5

    .line 684
    add-int/lit8 v7, v5, 0x1

    aput-object v3, v6, v7

    .line 673
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "idx":I
    .end local v5    # "dest":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 680
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "idx":I
    :cond_3e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 687
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "idx":I
    :cond_55
    return-void

    .line 665
    .end local v0    # "len":I
    :cond_56
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "length is odd"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist probe(Ljava/lang/Object;)I
    .registers 5
    .param p1, "pk"    # Ljava/lang/Object;

    .line 778
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Ljava/util/ImmutableCollections;->SALT:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 781
    .local v0, "idx":I
    :goto_12
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 782
    .local v1, "ek":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_1c

    .line 783
    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 784
    :cond_1c
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 785
    return v0

    .line 786
    :cond_23
    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_2b

    .line 787
    const/4 v0, 0x0

    .line 789
    .end local v1    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2b
    goto :goto_12
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

    .line 793
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "not serial proxy"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 8

    .line 797
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 798
    .local v0, "array":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v1, v1

    .line 799
    .local v1, "len":I
    const/4 v2, 0x0

    .line 800
    .local v2, "dest":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_24

    .line 801
    iget-object v4, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    aget-object v5, v4, v3

    if-eqz v5, :cond_21

    .line 802
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "dest":I
    .local v5, "dest":I
    aget-object v6, v4, v3

    aput-object v6, v0, v2

    .line 803
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "dest":I
    .restart local v2    # "dest":I
    add-int/lit8 v6, v3, 0x1

    aget-object v4, v4, v6

    aput-object v4, v0, v5

    .line 800
    :cond_21
    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 806
    .end local v3    # "i":I
    :cond_24
    new-instance v3, Ljava/util/CollSer;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v0}, Ljava/util/CollSer;-><init>(I[Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public whitelist core-platform-api test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 691
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist core-platform-api test-api containsValue(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 696
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 697
    aget-object v1, v1, v0

    .line 698
    .local v1, "v":Ljava/lang/Object;
    if-eqz v1, :cond_12

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 699
    const/4 v2, 0x1

    return v2

    .line 696
    .end local v1    # "v":Ljava/lang/Object;
    :cond_12
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 702
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 735
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    new-instance v0, Ljava/util/ImmutableCollections$MapN$1;

    invoke-direct {v0, p0}, Ljava/util/ImmutableCollections$MapN$1;-><init>(Ljava/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 720
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/ImmutableCollections$MapN;->probe(Ljava/lang/Object;)I

    move-result v0

    .line 721
    .local v0, "i":I
    if-ltz v0, :cond_d

    .line 722
    iget-object v1, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 724
    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 7

    .line 707
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    const/4 v0, 0x0

    .line 708
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 709
    aget-object v2, v2, v1

    .line 710
    .local v2, "k":Ljava/lang/Object;
    if-eqz v2, :cond_1b

    .line 711
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget-object v4, p0, Ljava/util/ImmutableCollections$MapN;->table:[Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 708
    .end local v2    # "k":Ljava/lang/Object;
    :cond_1b
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 714
    .end local v1    # "i":I
    :cond_1e
    return v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 730
    .local p0, "this":Ljava/util/ImmutableCollections$MapN;, "Ljava/util/ImmutableCollections$MapN<TK;TV;>;"
    iget v0, p0, Ljava/util/ImmutableCollections$MapN;->size:I

    return v0
.end method
