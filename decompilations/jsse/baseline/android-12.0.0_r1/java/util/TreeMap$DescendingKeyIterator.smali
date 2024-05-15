.class final Ljava/util/TreeMap$DescendingKeyIterator;
.super Ljava/util/TreeMap$PrivateEntryIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DescendingKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeMap<",
        "TK;TV;>.PrivateEntryIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/util/TreeMap;


# direct methods
.method constructor blacklist <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1271
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    .line 1272
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1273
    return-void
.end method


# virtual methods
.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1275
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeyIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1278
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v0, :cond_27

    .line 1280
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->expectedModCount:I

    if-ne v0, v1, :cond_21

    .line 1282
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    # invokes: Ljava/util/TreeMap;->deleteEntry(Ljava/util/TreeMap$TreeMapEntry;)V
    invoke-static {v0, v1}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1283
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1284
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    # getter for: Ljava/util/TreeMap;->modCount:I
    invoke-static {v0}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->expectedModCount:I

    .line 1285
    return-void

    .line 1281
    :cond_21
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1279
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
