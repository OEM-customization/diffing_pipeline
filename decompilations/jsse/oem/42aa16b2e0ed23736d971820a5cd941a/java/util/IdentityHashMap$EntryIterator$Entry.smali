.class Ljava/util/IdentityHashMap$EntryIterator$Entry;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap$EntryIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o index:I

.field final synthetic blacklist this$1:Ljava/util/IdentityHashMap$EntryIterator;


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap$EntryIterator;I)V
    .registers 3
    .param p2, "index"    # I

    .line 857
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput p2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    .line 859
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/util/IdentityHashMap$EntryIterator;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/IdentityHashMap$1;

    .line 854
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;I)V

    return-void
.end method

.method static synthetic blacklist access$400(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .line 854
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return v0
.end method

.method static synthetic blacklist access$402(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)I
    .registers 2
    .param p0, "x0"    # Ljava/util/IdentityHashMap$EntryIterator$Entry;
    .param p1, "x1"    # I

    .line 854
    iput p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return p1
.end method

.method private greylist-max-o checkIndexForEntryUse()V
    .registers 3

    .line 912
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-ltz v0, :cond_5

    .line 914
    return-void

    .line 913
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 885
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 886
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 888
    :cond_9
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 889
    return v1

    .line 890
    :cond_f
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 891
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_36

    .line 892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v5, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/2addr v5, v4

    aget-object v3, v3, v5

    if-ne v2, v3, :cond_36

    move v1, v4

    goto :goto_37

    :cond_36
    nop

    .line 891
    :goto_37
    return v1
.end method

.method public whitelist core-platform-api test-api getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 863
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 864
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 869
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 870
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 896
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->lastReturnedIndex:I

    if-gez v0, :cond_b

    .line 897
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    .line 899
    :cond_b
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 900
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 899
    return v0
.end method

.method public whitelist core-platform-api test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 875
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 876
    iget-object v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v0, v0, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    .line 877
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aput-object p1, v1, v2

    .line 879
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, v2, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    if-eq v1, v2, :cond_32

    .line 880
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v2, v2, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :cond_32
    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 904
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_9

    .line 905
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 907
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/IdentityHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
