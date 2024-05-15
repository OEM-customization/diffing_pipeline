.class final Ljava/util/LinkedHashMap$LinkedValues;
.super Ljava/util/AbstractCollection;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 629
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api clear()V
    .registers 2

    .line 631
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 635
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 641
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_27

    .line 643
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 645
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v1, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_a
    if-eqz v1, :cond_1a

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v0, :cond_1a

    .line 646
    iget-object v2, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 645
    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_a

    .line 647
    .end local v1    # "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :cond_1a
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_21

    .line 649
    return-void

    .line 648
    :cond_21
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 642
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
            "TV;>;"
        }
    .end annotation

    .line 633
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedValueIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedValueIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final whitelist test-api size()I
    .registers 2

    .line 630
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 637
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    const/16 v0, 0x50

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
