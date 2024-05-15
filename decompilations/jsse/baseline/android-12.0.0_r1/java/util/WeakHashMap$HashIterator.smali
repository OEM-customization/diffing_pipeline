.class abstract Ljava/util/WeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o currentKey:Ljava/lang/Object;

.field private greylist-max-o entry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o expectedModCount:I

.field private greylist-max-o index:I

.field private greylist-max-o lastReturned:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o nextKey:Ljava/lang/Object;

.field final synthetic blacklist this$0:Ljava/util/WeakHashMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/WeakHashMap;)V
    .registers 3

    .line 778
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iget v0, p1, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 779
    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    goto :goto_14

    :cond_11
    iget-object p1, p1, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    array-length p1, p1

    :goto_14
    iput p1, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 780
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 5

    .line 783
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v0, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 785
    .local v0, "t":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    :goto_4
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v1, :cond_2f

    .line 786
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 787
    .local v1, "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v2, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 788
    .local v2, "i":I
    :goto_c
    if-nez v1, :cond_15

    if-lez v2, :cond_15

    .line 789
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    goto :goto_c

    .line 790
    :cond_15
    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 791
    iput v2, p0, Ljava/util/WeakHashMap$HashIterator;->index:I

    .line 792
    if-nez v1, :cond_20

    .line 793
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 794
    const/4 v3, 0x0

    return v3

    .line 796
    :cond_20
    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 797
    if-nez v3, :cond_2e

    .line 798
    iget-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iget-object v3, v3, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 799
    .end local v1    # "e":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "i":I
    :cond_2e
    goto :goto_4

    .line 800
    :cond_2f
    const/4 v1, 0x1

    return v1
.end method

.method protected greylist-max-o nextEntry()Ljava/util/WeakHashMap$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 805
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_2b

    .line 807
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_19

    .line 808
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 810
    :cond_19
    :goto_19
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 811
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->entry:Ljava/util/WeakHashMap$Entry;

    .line 812
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 814
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    return-object v0

    .line 806
    :cond_2b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 818
    .local p0, "this":Ljava/util/WeakHashMap$HashIterator;, "Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TT;>;"
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_25

    .line 820
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1f

    .line 823
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v0, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 825
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->lastReturned:Ljava/util/WeakHashMap$Entry;

    .line 826
    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentKey:Ljava/lang/Object;

    .line 827
    return-void

    .line 821
    :cond_1f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 819
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
