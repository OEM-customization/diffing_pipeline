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
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 673
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api clear()V
    .registers 2

    .line 675
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 680
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 681
    return v1

    .line 682
    :cond_6
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 683
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 684
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->getNode(ILjava/lang/Object;)Ljava/util/HashMap$Node;

    move-result-object v3

    .line 685
    .local v3, "candidate":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_20

    invoke-virtual {v3, v0}, Ljava/util/HashMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public final whitelist core-platform-api test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 702
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_25

    .line 704
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 706
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v1, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_a
    if-eqz v1, :cond_18

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v0, v2, :cond_18

    .line 707
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 706
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_a

    .line 708
    .end local v1    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_18
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_1f

    .line 710
    return-void

    .line 709
    :cond_1f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 703
    .end local v0    # "mc":I
    :cond_25
    const/4 v0, 0x0

    throw v0
.end method

.method public final whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedEntryIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedEntryIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;

    .line 688
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 689
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 690
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 691
    .local v8, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 692
    .local v9, "value":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v8

    move-object v5, v9

    invoke-virtual/range {v2 .. v7}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 694
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "key":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_22
    return v1
.end method

.method public final whitelist core-platform-api test-api size()I
    .registers 2

    .line 674
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedEntrySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 697
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedEntrySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedEntrySet;"
    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
