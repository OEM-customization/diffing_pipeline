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
        "Ljava/util/TreeMap",
        "<TK;TV;>.PrivateEntryIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1297
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    .local p1, "this$0":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "first":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iput-object p1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    .line 1298
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$PrivateEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1299
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeyIterator;->prevEntry()Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingKeyIterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeyIterator;"
    const/4 v2, 0x0

    .line 1304
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    if-nez v0, :cond_b

    .line 1305
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1306
    :cond_b
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iget v1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1b

    .line 1307
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1308
    :cond_1b
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    invoke-static {v0, v1}, Ljava/util/TreeMap;->-wrap0(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;)V

    .line 1309
    iput-object v2, p0, Ljava/util/TreeMap$DescendingKeyIterator;->lastReturned:Ljava/util/TreeMap$TreeMapEntry;

    .line 1310
    iget-object v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->this$0:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v0

    iput v0, p0, Ljava/util/TreeMap$DescendingKeyIterator;->expectedModCount:I

    .line 1311
    return-void
.end method