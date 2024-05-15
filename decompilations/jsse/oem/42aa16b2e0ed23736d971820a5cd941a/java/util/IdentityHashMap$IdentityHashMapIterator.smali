.class abstract Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "IdentityHashMapIterator"
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
.field greylist-max-o expectedModCount:I

.field greylist-max-o index:I

.field greylist-max-o indexValid:Z

.field greylist-max-o lastReturnedIndex:I

.field final synthetic blacklist this$0:Ljava/util/IdentityHashMap;

.field greylist-max-o traversalTable:[Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Ljava/util/IdentityHashMap;)V
    .registers 2

    .line 712
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iget-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget p1, p1, Ljava/util/IdentityHashMap;->size:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    goto :goto_12

    :cond_d
    iget-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length p1, p1

    :goto_12
    iput p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 714
    iget-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget p1, p1, Ljava/util/IdentityHashMap;->modCount:I

    iput p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 715
    const/4 p1, -0x1

    iput p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 717
    iget-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object p1, p1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/IdentityHashMap;
    .param p2, "x1"    # Ljava/util/IdentityHashMap$1;

    .line 712
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 5

    .line 720
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 721
    .local v0, "tab":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 722
    aget-object v2, v0, v1

    .line 723
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_11

    .line 724
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 725
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    return v3

    .line 721
    .end local v2    # "key":Ljava/lang/Object;
    :cond_11
    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    .line 728
    .end local v1    # "i":I
    :cond_14
    array-length v1, v0

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 729
    const/4 v1, 0x0

    return v1
.end method

.method protected greylist-max-o nextIndex()I
    .registers 3

    .line 733
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-ne v0, v1, :cond_25

    .line 735
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_19

    .line 736
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 738
    :cond_19
    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    .line 739
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 740
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 741
    return v0

    .line 734
    :cond_25
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 13

    .line 745
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    .line 747
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-ne v0, v2, :cond_8c

    .line 750
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v2, v0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ljava/util/IdentityHashMap;->modCount:I

    iput v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 751
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 752
    .local v0, "deletedSlot":I
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 754
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 755
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    .line 769
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 770
    .local v2, "tab":[Ljava/lang/Object;
    array-length v3, v2

    .line 772
    .local v3, "len":I
    move v4, v0

    .line 773
    .local v4, "d":I
    aget-object v5, v2, v4

    .line 774
    .local v5, "key":Ljava/lang/Object;
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 775
    add-int/lit8 v7, v4, 0x1

    aput-object v6, v2, v7

    .line 779
    iget-object v7, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v7, v7, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    if-eq v2, v7, :cond_3f

    .line 780
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v5}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->modCount:I

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 782
    return-void

    .line 785
    :cond_3f
    iget-object v7, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v8, v7, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Ljava/util/IdentityHashMap;->size:I

    .line 788
    # invokes: Ljava/util/IdentityHashMap;->nextKeyIndex(II)I
    invoke-static {v4, v3}, Ljava/util/IdentityHashMap;->access$000(II)I

    move-result v7

    .local v7, "i":I
    :goto_4b
    aget-object v8, v2, v7

    move-object v9, v8

    .local v9, "item":Ljava/lang/Object;
    if-eqz v8, :cond_8b

    .line 790
    # invokes: Ljava/util/IdentityHashMap;->hash(Ljava/lang/Object;I)I
    invoke-static {v9, v3}, Ljava/util/IdentityHashMap;->access$100(Ljava/lang/Object;I)I

    move-result v8

    .line 792
    .local v8, "r":I
    if-ge v7, v8, :cond_5a

    if-le v8, v4, :cond_5e

    if-le v4, v7, :cond_5e

    :cond_5a
    if-gt v8, v4, :cond_86

    if-gt v4, v7, :cond_86

    .line 802
    :cond_5e
    if-ge v7, v0, :cond_75

    if-lt v4, v0, :cond_75

    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v11, v11, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    if-ne v10, v11, :cond_75

    .line 804
    sub-int v10, v3, v0

    .line 805
    .local v10, "remaining":I
    new-array v11, v10, [Ljava/lang/Object;

    .line 806
    .local v11, "newTable":[Ljava/lang/Object;
    invoke-static {v2, v0, v11, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iput-object v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 809
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 812
    .end local v10    # "remaining":I
    .end local v11    # "newTable":[Ljava/lang/Object;
    :cond_75
    aput-object v9, v2, v4

    .line 813
    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v11, v7, 0x1

    aget-object v11, v2, v11

    aput-object v11, v2, v10

    .line 814
    aput-object v6, v2, v7

    .line 815
    add-int/lit8 v10, v7, 0x1

    aput-object v6, v2, v10

    .line 816
    move v4, v7

    .line 789
    .end local v8    # "r":I
    :cond_86
    # invokes: Ljava/util/IdentityHashMap;->nextKeyIndex(II)I
    invoke-static {v7, v3}, Ljava/util/IdentityHashMap;->access$000(II)I

    move-result v7

    goto :goto_4b

    .line 819
    .end local v7    # "i":I
    :cond_8b
    return-void

    .line 748
    .end local v0    # "deletedSlot":I
    .end local v2    # "tab":[Ljava/lang/Object;
    .end local v3    # "len":I
    .end local v4    # "d":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v9    # "item":Ljava/lang/Object;
    :cond_8c
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 746
    :cond_92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
