.class abstract Ljava/util/LinkedHashMap$LinkedHashIterator;
.super Ljava/lang/Object;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LinkedHashIterator"
.end annotation


# instance fields
.field greylist-max-o current:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o expectedModCount:I

.field greylist-max-o next:Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/LinkedHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/LinkedHashMap;

    .line 744
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iget-object v0, p1, Ljava/util/LinkedHashMap;->head:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 746
    iget v0, p1, Ljava/util/LinkedHashMap;->modCount:I

    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 747
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 748
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 751
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final greylist-max-o nextNode()Ljava/util/LinkedHashMap$LinkedHashMapEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 755
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 756
    .local v0, "e":Ljava/util/LinkedHashMap$LinkedHashMapEntry;, "Ljava/util/LinkedHashMap$LinkedHashMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-ne v1, v2, :cond_19

    .line 758
    if-eqz v0, :cond_13

    .line 760
    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 761
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->after:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 762
    return-object v0

    .line 759
    :cond_13
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 757
    :cond_19
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public final whitelist core-platform-api test-api remove()V
    .registers 9

    .line 766
    .local p0, "this":Ljava/util/LinkedHashMap$LinkedHashIterator;, "Ljava/util/LinkedHashMap<TK;TV;>.LinkedHashIterator;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 767
    .local v0, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_2b

    .line 769
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-ne v1, v2, :cond_25

    .line 771
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->current:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 772
    iget-object v1, v0, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .line 773
    .local v1, "key":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/LinkedHashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 774
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v2, v2, Ljava/util/LinkedHashMap;->modCount:I

    iput v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 775
    return-void

    .line 770
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_25
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 768
    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method