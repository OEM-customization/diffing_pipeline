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
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$1:Ljava/util/IdentityHashMap$EntryIterator;


# direct methods
.method static synthetic -get0(Ljava/util/IdentityHashMap$EntryIterator$Entry;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .prologue
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return v0
.end method

.method static synthetic -set0(Ljava/util/IdentityHashMap$EntryIterator$Entry;I)I
    .registers 2
    .param p0, "-this"    # Ljava/util/IdentityHashMap$EntryIterator$Entry;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    return p1
.end method

.method private constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;I)V
    .registers 3
    .param p2, "index"    # I

    .prologue
    .line 857
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "this$1":Ljava/util/IdentityHashMap$EntryIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput p2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    .line 859
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap$EntryIterator;ILjava/util/IdentityHashMap$EntryIterator$Entry;)V
    .registers 4
    .param p1, "this$1"    # Ljava/util/IdentityHashMap$EntryIterator;
    .param p2, "index"    # I
    .param p3, "-this2"    # Ljava/util/IdentityHashMap$EntryIterator$Entry;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    invoke-direct {p0, p1, p2}, Ljava/util/IdentityHashMap$EntryIterator$Entry;-><init>(Ljava/util/IdentityHashMap$EntryIterator;I)V

    return-void
.end method

.method private checkIndexForEntryUse()V
    .registers 3

    .prologue
    .line 912
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    iget v0, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v0, :cond_d

    .line 913
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Entry was removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    const/4 v1, 0x0

    .line 885
    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    if-gez v2, :cond_a

    .line 886
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 888
    :cond_a
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_f

    .line 889
    return v1

    :cond_f
    move-object v0, p1

    .line 890
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

    if-ne v2, v3, :cond_35

    .line 892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v3, v3, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v4, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    if-ne v2, v3, :cond_35

    const/4 v1, 0x1

    .line 891
    :cond_35
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
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

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
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

.method public hashCode()I
    .registers 4

    .prologue
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

    .line 900
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 899
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "this":Ljava/util/IdentityHashMap$EntryIterator$Entry;, "Ljava/util/IdentityHashMap<TK;TV;>.EntryIterator.Entry;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/util/IdentityHashMap$EntryIterator$Entry;->checkIndexForEntryUse()V

    .line 876
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

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

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
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

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 908
    iget-object v1, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->this$1:Ljava/util/IdentityHashMap$EntryIterator;

    iget-object v1, v1, Ljava/util/IdentityHashMap$EntryIterator;->traversalTable:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$EntryIterator$Entry;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
