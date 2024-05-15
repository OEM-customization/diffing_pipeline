.class final Ljava/util/LinkedHashMap$LinkedKeySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 575
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api clear()V
    .registers 2

    .line 577
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 581
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 591
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_27

    .line 593
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 595
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v1, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_a
    if-eqz v1, :cond_1a

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_1a

    .line 596
    iget-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 595
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_a

    .line 597
    .end local v1    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_1a
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_21

    .line 599
    return-void

    .line 598
    :cond_21
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 592
    .end local v0    # "mc":I
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 579
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedKeyIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedKeyIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;

    .line 583
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 576
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    .line 586
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
