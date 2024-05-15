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
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2

    .prologue
    .line 626
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "this$0":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 628
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 632
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-nez p1, :cond_8

    .line 639
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 640
    :cond_8
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v2, Ljava/util/LinkedHashMap;->modCount:I

    .line 642
    .local v1, "mc":I
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v2, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    :goto_10
    if-eqz v0, :cond_20

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v2, v1, :cond_20

    .line 643
    iget-object v2, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 642
    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_10

    .line 644
    :cond_20
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    if-eq v2, v1, :cond_2c

    .line 645
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 646
    :cond_2c
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    new-instance v0, Ljava/util/LinkedHashMap$LinkedValueIterator;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap$LinkedValueIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 627
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedValues;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->size:I

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedValues;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedValues;"
    const/16 v0, 0x50

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
