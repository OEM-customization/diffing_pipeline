.class final Ljava/util/LinkedHashMap$LinkedEntrySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2

    .prologue
    .line 673
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 675
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    const/4 v3, 0x0

    .line 680
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_6

    .line 681
    return v3

    :cond_6
    move-object v1, p1

    .line 682
    check-cast v1, Ljava/util/Map$Entry;

    .line 683
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 684
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v0

    .line 685
    .local v0, "candidate":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1d

    invoke-virtual {v0, v1}, Ljava/util/HashMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_1d
    return v3
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_8

    .line 703
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 704
    :cond_8
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v2, Ljava/util/LinkedHashMap;->modCount:I

    .line 706
    .local v1, "mc":I
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v2, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_10
    if-eqz v0, :cond_1e

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v2, :cond_1e

    .line 707
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 706
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_10

    .line 708
    :cond_1e
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2a

    .line 709
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 710
    :cond_2a
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntryIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedEntryIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 688
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_21

    move-object v6, p1

    .line 689
    check-cast v6, Ljava/util/Map$Entry;

    .line 690
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 691
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 692
    .local v3, "value":Ljava/lang/Object;
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_1f

    :goto_1e
    return v4

    :cond_1f
    move v4, v7

    goto :goto_1e

    .line 694
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_21
    return v7
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 674
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
