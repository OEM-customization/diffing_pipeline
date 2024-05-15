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
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field index:I

.field indexValid:Z

.field lastReturnedIndex:I

.field final synthetic this$0:Ljava/util/IdentityHashMap;

.field traversalTable:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .registers 4

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    .local p1, "this$0":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 712
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->size:I

    if-eqz v1, :cond_1e

    :goto_c
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 714
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 715
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 717
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 712
    return-void

    .line 713
    :cond_1e
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_c
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap$IdentityHashMapIterator;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/IdentityHashMap;
    .param p2, "-this1"    # Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    const/4 v4, 0x1

    .line 720
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 721
    .local v2, "tab":[Ljava/lang/Object;
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .local v0, "i":I
    :goto_5
    array-length v3, v2

    if-ge v0, v3, :cond_14

    .line 722
    aget-object v1, v2, v0

    .line 723
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_11

    .line 724
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 725
    iput-boolean v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    return v4

    .line 721
    :cond_11
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 728
    .end local v1    # "key":Ljava/lang/Object;
    :cond_14
    array-length v3, v2

    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 729
    const/4 v3, 0x0

    return v3
.end method

.method protected nextIndex()I
    .registers 3

    .prologue
    .line 733
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->modCount:I

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-eq v0, v1, :cond_e

    .line 734
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 735
    :cond_e
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    .line 736
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 738
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    .line 739
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 740
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 741
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    return v0
.end method

.method public remove()V
    .registers 16

    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$IdentityHashMapIterator;, "Ljava/util/IdentityHashMap<TK;TV;>.IdentityHashMapIterator<TT;>;"
    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 745
    iget v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    if-ne v10, v14, :cond_d

    .line 746
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10}, Ljava/lang/IllegalStateException;-><init>()V

    throw v10

    .line 747
    :cond_d
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v10, v10, Ljava/util/IdentityHashMap;->modCount:I

    iget v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    if-eq v10, v11, :cond_1b

    .line 748
    new-instance v10, Ljava/util/ConcurrentModificationException;

    invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v10

    .line 750
    :cond_1b
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v11, v10, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Ljava/util/IdentityHashMap;->modCount:I

    iput v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 751
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 752
    .local v1, "deletedSlot":I
    iput v14, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastReturnedIndex:I

    .line 754
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 755
    iput-boolean v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->indexValid:Z

    .line 769
    iget-object v9, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 770
    .local v9, "tab":[Ljava/lang/Object;
    array-length v5, v9

    .line 772
    .local v5, "len":I
    move v0, v1

    .line 773
    .local v0, "d":I
    aget-object v4, v9, v1

    .line 774
    .local v4, "key":Ljava/lang/Object;
    aput-object v12, v9, v1

    .line 775
    add-int/lit8 v10, v1, 0x1

    aput-object v12, v9, v10

    .line 779
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v10, v10, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    if-eq v9, v10, :cond_4b

    .line 780
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    invoke-virtual {v10, v4}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v10, v10, Ljava/util/IdentityHashMap;->modCount:I

    iput v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 782
    return-void

    .line 785
    :cond_4b
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget v11, v10, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Ljava/util/IdentityHashMap;->size:I

    .line 788
    invoke-static {v1, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    move-result v2

    .local v2, "i":I
    :goto_57
    aget-object v3, v9, v2

    .local v3, "item":Ljava/lang/Object;
    if-eqz v3, :cond_97

    .line 790
    invoke-static {v3, v5}, Ljava/util/IdentityHashMap;->-wrap2(Ljava/lang/Object;I)I

    move-result v7

    .line 792
    .local v7, "r":I
    if-ge v2, v7, :cond_92

    if-le v7, v0, :cond_65

    if-gt v0, v2, :cond_92

    .line 802
    :cond_65
    :goto_65
    if-ge v2, v1, :cond_7c

    if-lt v0, v1, :cond_7c

    .line 803
    iget-object v10, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    iget-object v11, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->this$0:Ljava/util/IdentityHashMap;

    iget-object v11, v11, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    if-ne v10, v11, :cond_7c

    .line 804
    sub-int v8, v5, v1

    .line 805
    .local v8, "remaining":I
    new-array v6, v8, [Ljava/lang/Object;

    .line 806
    .local v6, "newTable":[Ljava/lang/Object;
    invoke-static {v9, v1, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    iput-object v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->traversalTable:[Ljava/lang/Object;

    .line 809
    iput v13, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->index:I

    .line 812
    .end local v6    # "newTable":[Ljava/lang/Object;
    .end local v8    # "remaining":I
    :cond_7c
    aput-object v3, v9, v0

    .line 813
    add-int/lit8 v10, v0, 0x1

    add-int/lit8 v11, v2, 0x1

    aget-object v11, v9, v11

    aput-object v11, v9, v10

    .line 814
    aput-object v12, v9, v2

    .line 815
    add-int/lit8 v10, v2, 0x1

    aput-object v12, v9, v10

    .line 816
    move v0, v2

    .line 789
    :cond_8d
    invoke-static {v2, v5}, Ljava/util/IdentityHashMap;->-wrap3(II)I

    move-result v2

    goto :goto_57

    .line 793
    :cond_92
    if-gt v7, v0, :cond_8d

    if-gt v0, v2, :cond_8d

    goto :goto_65

    .line 819
    .end local v7    # "r":I
    :cond_97
    return-void
.end method
