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
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2

    .prologue
    .line 572
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 574
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 578
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_8

    .line 589
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 590
    :cond_8
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v2, Ljava/util/LinkedHashMap;->modCount:I

    .line 592
    .local v1, "mc":I
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v2, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_10
    if-eqz v0, :cond_20

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v1, :cond_20

    .line 593
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 592
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_10

    .line 594
    :cond_20
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2c

    .line 595
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 596
    :cond_2c
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedKeyIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedKeyIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 580
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/util/LinkedHashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    move-result-object v0

    if-eqz v0, :cond_11

    :goto_10
    return v5

    :cond_11
    move v5, v4

    goto :goto_10
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 573
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedKeySet;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedKeySet;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedKeySet;"
    const/16 v0, 0x51

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
