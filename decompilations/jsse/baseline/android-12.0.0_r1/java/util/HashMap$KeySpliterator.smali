.class final Ljava/util/HashMap$KeySpliterator;
.super Ljava/util/HashMap$HashMapSpliterator;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$HashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/HashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1522
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap$KeySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/HashMap$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    .line 1523
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 3

    .line 1584
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap$KeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/HashMap$KeySpliterator;->fence:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/util/HashMap$KeySpliterator;->est:I

    iget-object v1, p0, Ljava/util/HashMap$KeySpliterator;->map:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->size:I

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    const/16 v0, 0x40

    :goto_11
    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1534
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_50

    .line 1536
    iget-object v0, p0, Ljava/util/HashMap$KeySpliterator;->map:Ljava/util/HashMap;

    .line 1537
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    iget-object v1, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1538
    .local v1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    iget v2, p0, Ljava/util/HashMap$KeySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-gez v2, :cond_18

    .line 1539
    iget v2, v0, Ljava/util/HashMap;->modCount:I

    iput v2, p0, Ljava/util/HashMap$KeySpliterator;->expectedModCount:I

    .line 1540
    .local v2, "mc":I
    if-nez v1, :cond_13

    const/4 v4, 0x0

    goto :goto_14

    :cond_13
    array-length v4, v1

    :goto_14
    iput v4, p0, Ljava/util/HashMap$KeySpliterator;->fence:I

    move v3, v4

    goto :goto_1a

    .line 1543
    .end local v2    # "mc":I
    :cond_18
    iget v2, p0, Ljava/util/HashMap$KeySpliterator;->expectedModCount:I

    .line 1544
    .restart local v2    # "mc":I
    :goto_1a
    if-eqz v1, :cond_4f

    array-length v4, v1

    if-lt v4, v3, :cond_4f

    iget v4, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_4f

    iput v3, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    if-lt v5, v3, :cond_2c

    iget-object v4, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    if-eqz v4, :cond_4f

    .line 1546
    :cond_2c
    iget-object v4, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1547
    .local v4, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1549
    :cond_31
    if-nez v4, :cond_39

    .line 1550
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v4, v1, v5

    move v5, v6

    goto :goto_40

    .line 1552
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_39
    iget-object v6, v4, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1553
    iget-object v4, v4, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 1555
    :goto_40
    if-nez v4, :cond_31

    if-lt v5, v3, :cond_31

    .line 1556
    iget v6, v0, Ljava/util/HashMap;->modCount:I

    if-ne v6, v2, :cond_49

    goto :goto_4f

    .line 1557
    :cond_49
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 1559
    .end local v4    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v5    # "i":I
    :cond_4f
    :goto_4f
    return-void

    .line 1535
    .end local v0    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .end local v1    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v2    # "mc":I
    .end local v3    # "hi":I
    :cond_50
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 1563
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_4a

    .line 1565
    iget-object v0, p0, Ljava/util/HashMap$KeySpliterator;->map:Ljava/util/HashMap;

    iget-object v0, v0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$Node;

    .line 1566
    .local v0, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v0, :cond_48

    array-length v1, v0

    invoke-virtual {p0}, Ljava/util/HashMap$KeySpliterator;->getFence()I

    move-result v2

    move v3, v2

    .local v3, "hi":I
    if-lt v1, v2, :cond_48

    iget v1, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    if-ltz v1, :cond_48

    .line 1567
    :goto_14
    iget-object v1, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    if-nez v1, :cond_1c

    iget v1, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    if-ge v1, v3, :cond_48

    .line 1568
    :cond_1c
    iget-object v1, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    if-nez v1, :cond_2b

    .line 1569
    iget v1, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    goto :goto_14

    .line 1571
    :cond_2b
    iget-object v1, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    iget-object v1, v1, Ljava/util/HashMap$Node;->key:Ljava/lang/Object;

    .line 1572
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    iput-object v2, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    .line 1573
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1574
    iget-object v2, p0, Ljava/util/HashMap$KeySpliterator;->map:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->modCount:I

    iget v4, p0, Ljava/util/HashMap$KeySpliterator;->expectedModCount:I

    if-ne v2, v4, :cond_42

    .line 1576
    const/4 v2, 0x1

    return v2

    .line 1575
    :cond_42
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 1580
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "hi":I
    :cond_48
    const/4 v1, 0x0

    return v1

    .line 1564
    .end local v0    # "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/HashMap$KeySpliterator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1526
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$KeySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v8, v1, 0x1

    .line 1527
    .local v8, "mid":I
    if-ge v7, v8, :cond_26

    iget-object v1, p0, Ljava/util/HashMap$KeySpliterator;->current:Ljava/util/HashMap$Node;

    if-eqz v1, :cond_11

    goto :goto_26

    .line 1528
    :cond_11
    new-instance v9, Ljava/util/HashMap$KeySpliterator;

    iget-object v2, p0, Ljava/util/HashMap$KeySpliterator;->map:Ljava/util/HashMap;

    iput v8, p0, Ljava/util/HashMap$KeySpliterator;->index:I

    iget v1, p0, Ljava/util/HashMap$KeySpliterator;->est:I

    ushr-int/lit8 v5, v1, 0x1

    iput v5, p0, Ljava/util/HashMap$KeySpliterator;->est:I

    iget v6, p0, Ljava/util/HashMap$KeySpliterator;->expectedModCount:I

    move-object v1, v9

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Ljava/util/HashMap$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    goto :goto_27

    .line 1527
    :cond_26
    :goto_26
    const/4 v9, 0x0

    :goto_27
    return-object v9
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1517
    .local p0, "this":Ljava/util/HashMap$KeySpliterator;, "Ljava/util/HashMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/HashMap$KeySpliterator;->trySplit()Ljava/util/HashMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method