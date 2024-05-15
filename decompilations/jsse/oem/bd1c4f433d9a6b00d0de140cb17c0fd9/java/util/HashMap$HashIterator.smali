.class abstract Ljava/util/HashMap$HashIterator;
.super Ljava/lang/Object;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field current:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field next:Ljava/util/HashMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    .local p1, "this$0":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1423
    iput-object p1, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iget v1, p1, Ljava/util/HashMap;->modCount:I

    iput v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    .line 1425
    iget-object v0, p1, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1426
    .local v0, "t":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    .line 1427
    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    .line 1428
    if-eqz v0, :cond_2a

    iget v1, p1, Ljava/util/HashMap;->size:I

    if-lez v1, :cond_2a

    .line 1429
    :cond_19
    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v2, v0

    if-ge v1, v2, :cond_2a

    iget v1, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_19

    .line 1431
    :cond_2a
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 1434
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final nextNode()Ljava/util/HashMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1439
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    .line 1440
    .local v0, "e":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    iget v3, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v2, v3, :cond_10

    .line 1441
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1442
    :cond_10
    if-nez v0, :cond_18

    .line 1443
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1444
    :cond_18
    iput-object v0, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    iget-object v2, v0, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-nez v2, :cond_37

    iget-object v2, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget-object v1, v2, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .local v1, "t":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v1, :cond_37

    .line 1445
    :cond_26
    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    array-length v3, v1

    if-ge v2, v3, :cond_37

    iget v2, p0, Ljava/util/HashMap$HashIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/HashMap$HashIterator;->index:I

    aget-object v2, v1, v2

    iput-object v2, p0, Ljava/util/HashMap$HashIterator;->next:Ljava/util/HashMap$Node;

    if-eqz v2, :cond_26

    .line 1447
    .end local v1    # "t":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_37
    return-object v0
.end method

.method public final remove()V
    .registers 8

    .prologue
    .local p0, "this":Ljava/util/HashMap$HashIterator;, "Ljava/util/HashMap<TK;TV;>.HashIterator;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1451
    iget-object v6, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    .line 1452
    .local v6, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v6, :cond_c

    .line 1453
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1454
    :cond_c
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iget v1, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1a

    .line 1455
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1456
    :cond_1a
    iput-object v3, p0, Ljava/util/HashMap$HashIterator;->current:Ljava/util/HashMap$Node;

    .line 1457
    iget-object v2, v6, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .line 1458
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/util/HashMap;->hash(Ljava/lang/Object;)I

    move-result v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/HashMap;->removeNode(ILjava/lang/Object;Ljava/lang/Object;ZZ)Ljava/util/HashMap$Node;

    .line 1459
    iget-object v0, p0, Ljava/util/HashMap$HashIterator;->this$0:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/HashMap$HashIterator;->expectedModCount:I

    .line 1460
    return-void
.end method
