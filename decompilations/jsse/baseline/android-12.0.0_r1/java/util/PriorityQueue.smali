.class public Ljava/util/PriorityQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/PriorityQueue$PriorityQueueSpliterator;,
        Ljava/util/PriorityQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final whitelist serialVersionUID:J = -0x6b25cf4b04c07d4fL


# instance fields
.field private final greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient greylist modCount:I

.field transient greylist queue:[Ljava/lang/Object;

.field greylist size:I


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 122
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 123
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 135
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 136
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/util/Comparator;)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 166
    const/4 v0, 0x1

    if-lt p1, v0, :cond_d

    .line 168
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 169
    iput-object p2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 170
    return-void

    .line 167
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 190
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_14

    .line 191
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 192
    .local v0, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 193
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 194
    .end local v0    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    goto :goto_2b

    .line 195
    :cond_14
    instance-of v0, p1, Ljava/util/PriorityQueue;

    if-eqz v0, :cond_25

    .line 196
    move-object v0, p1

    check-cast v0, Ljava/util/PriorityQueue;

    .line 197
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 198
    invoke-direct {p0, v0}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 199
    .end local v0    # "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    goto :goto_2b

    .line 201
    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 202
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    .line 204
    :goto_2b
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 149
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/PriorityQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "+TE;>;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 222
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 223
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromPriorityQueue(Ljava/util/PriorityQueue;)V

    .line 224
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/SortedSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 240
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    .line 242
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 243
    return-void
.end method

.method private greylist-max-o grow(I)V
    .registers 5
    .param p1, "minCapacity"    # I

    .line 292
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v0, v0

    .line 294
    .local v0, "oldCapacity":I
    const/16 v1, 0x40

    if-ge v0, v1, :cond_a

    .line 295
    add-int/lit8 v1, v0, 0x2

    goto :goto_c

    .line 296
    :cond_a
    shr-int/lit8 v1, v0, 0x1

    :goto_c
    add-int/2addr v1, v0

    .line 298
    .local v1, "newCapacity":I
    const v2, 0x7ffffff7

    sub-int v2, v1, v2

    if-lez v2, :cond_18

    .line 299
    invoke-static {p1}, Ljava/util/PriorityQueue;->hugeCapacity(I)I

    move-result v1

    .line 300
    :cond_18
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 301
    return-void
.end method

.method private greylist-max-o heapify()V
    .registers 3

    .line 735
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_12

    .line 736
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 735
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 737
    .end local v0    # "i":I
    :cond_12
    return-void
.end method

.method private static greylist-max-o hugeCapacity(I)I
    .registers 2
    .param p0, "minCapacity"    # I

    .line 304
    if-ltz p0, :cond_d

    .line 306
    const v0, 0x7ffffff7

    if-le p0, v0, :cond_b

    .line 307
    const v0, 0x7fffffff

    goto :goto_c

    .line 308
    :cond_b
    nop

    .line 306
    :goto_c
    return v0

    .line 305
    :cond_d
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0
.end method

.method private greylist-max-o indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 354
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    if-eqz p1, :cond_15

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_15

    .line 356
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 357
    return v0

    .line 355
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 359
    .end local v0    # "i":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o initElementsFromCollection(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 257
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-eq v1, v2, :cond_13

    .line 258
    array-length v1, v0

    const-class v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 259
    :cond_13
    array-length v1, v0

    .line 260
    .local v1, "len":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2c

    .line 261
    :cond_1b
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 262
    .local v4, "e":Ljava/lang/Object;
    if-eqz v4, :cond_26

    .line 261
    .end local v4    # "e":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 263
    .restart local v4    # "e":Ljava/lang/Object;
    :cond_26
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 264
    .end local v4    # "e":Ljava/lang/Object;
    :cond_2c
    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 265
    array-length v2, v0

    iput v2, p0, Ljava/util/PriorityQueue;->size:I

    .line 266
    return-void
.end method

.method private greylist-max-o initFromCollection(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 274
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initElementsFromCollection(Ljava/util/Collection;)V

    .line 275
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 276
    return-void
.end method

.method private greylist-max-o initFromPriorityQueue(Ljava/util/PriorityQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "+TE;>;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<+TE;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/PriorityQueue;

    if-ne v0, v1, :cond_15

    .line 247
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    goto :goto_18

    .line 250
    :cond_15
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->initFromCollection(Ljava/util/Collection;)V

    .line 252
    :goto_18
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 786
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 789
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 791
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    .line 794
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1c

    .line 795
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 799
    .end local v0    # "i":I
    :cond_1c
    invoke-direct {p0}, Ljava/util/PriorityQueue;->heapify()V

    .line 800
    return-void
.end method

.method private greylist-max-o siftDown(ILjava/lang/Object;)V
    .registers 4
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 686
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_8

    .line 687
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownUsingComparator(ILjava/lang/Object;)V

    goto :goto_b

    .line 689
    :cond_8
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftDownComparable(ILjava/lang/Object;)V

    .line 690
    :goto_b
    return-void
.end method

.method private greylist-max-o siftDownComparable(ILjava/lang/Object;)V
    .registers 10
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 694
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    .line 695
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TE;>;"
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v1, v1, 0x1

    .line 696
    .local v1, "half":I
    :goto_7
    if-ge p1, v1, :cond_34

    .line 697
    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 698
    .local v2, "child":I
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 699
    .local v4, "c":Ljava/lang/Object;
    add-int/lit8 v5, v2, 0x1

    .line 700
    .local v5, "right":I
    iget v6, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v5, v6, :cond_27

    move-object v6, v4

    check-cast v6, Ljava/lang/Comparable;

    aget-object v3, v3, v5

    .line 701
    invoke-interface {v6, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_27

    .line 702
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move v2, v5

    aget-object v4, v3, v5

    .line 703
    :cond_27
    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_2e

    .line 704
    goto :goto_34

    .line 705
    :cond_2e
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v4, v3, p1

    .line 706
    move p1, v2

    .line 707
    .end local v2    # "child":I
    .end local v4    # "c":Ljava/lang/Object;
    .end local v5    # "right":I
    goto :goto_7

    .line 708
    :cond_34
    :goto_34
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 709
    return-void
.end method

.method private greylist-max-o siftDownUsingComparator(ILjava/lang/Object;)V
    .registers 9
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 713
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    ushr-int/lit8 v0, v0, 0x1

    .line 714
    .local v0, "half":I
    :goto_4
    if-ge p1, v0, :cond_32

    .line 715
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 716
    .local v1, "child":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 717
    .local v3, "c":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    .line 718
    .local v4, "right":I
    iget v5, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v4, v5, :cond_23

    iget-object v5, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    aget-object v2, v2, v4

    .line 719
    invoke-interface {v5, v3, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_23

    .line 720
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    move v1, v4

    aget-object v3, v2, v4

    .line 721
    :cond_23
    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2c

    .line 722
    goto :goto_32

    .line 723
    :cond_2c
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v3, v2, p1

    .line 724
    move p1, v1

    .line 725
    .end local v1    # "child":I
    .end local v3    # "c":Ljava/lang/Object;
    .end local v4    # "right":I
    goto :goto_4

    .line 726
    :cond_32
    :goto_32
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 727
    return-void
.end method

.method private greylist-max-o siftUp(ILjava/lang/Object;)V
    .registers 4
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 644
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_8

    .line 645
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpUsingComparator(ILjava/lang/Object;)V

    goto :goto_b

    .line 647
    :cond_8
    invoke-direct {p0, p1, p2}, Ljava/util/PriorityQueue;->siftUpComparable(ILjava/lang/Object;)V

    .line 648
    :goto_b
    return-void
.end method

.method private greylist-max-o siftUpComparable(ILjava/lang/Object;)V
    .registers 7
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 652
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    .line 653
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TE;>;"
    :goto_3
    if-lez p1, :cond_1a

    .line 654
    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 655
    .local v1, "parent":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 656
    .local v2, "e":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_14

    .line 657
    goto :goto_1a

    .line 658
    :cond_14
    iget-object v3, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 659
    move p1, v1

    .line 660
    .end local v1    # "parent":I
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_3

    .line 661
    :cond_1a
    :goto_1a
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 662
    return-void
.end method

.method private greylist-max-o siftUpUsingComparator(ILjava/lang/Object;)V
    .registers 6
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 666
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    :goto_0
    if-lez p1, :cond_19

    .line 667
    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x1

    .line 668
    .local v0, "parent":I
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 669
    .local v1, "e":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    invoke-interface {v2, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_13

    .line 670
    goto :goto_19

    .line 671
    :cond_13
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 672
    move p1, v0

    .line 673
    .end local v0    # "parent":I
    .end local v1    # "e":Ljava/lang/Object;
    goto :goto_0

    .line 674
    :cond_19
    :goto_19
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 675
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 767
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_1e

    .line 771
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 772
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 321
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 4

    .line 579
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_13

    .line 581
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 582
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 583
    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 749
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 409
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 484
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/PriorityQueue$Itr;-><init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$1;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_24

    .line 336
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 337
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 338
    .local v0, "i":I
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_14

    .line 339
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Ljava/util/PriorityQueue;->grow(I)V

    .line 340
    :cond_14
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/util/PriorityQueue;->size:I

    .line 341
    if-nez v0, :cond_20

    .line 342
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_23

    .line 344
    :cond_20
    invoke-direct {p0, v0, p1}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    .line 345
    :goto_23
    return v1

    .line 335
    .end local v0    # "i":I
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_b
    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 587
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 588
    return-object v1

    .line 589
    :cond_6
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 590
    .local v0, "s":I
    iget v2, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 591
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 592
    .local v4, "result":Ljava/lang/Object;, "TE;"
    aget-object v5, v2, v0

    .line 593
    .local v5, "x":Ljava/lang/Object;, "TE;"
    aput-object v1, v2, v0

    .line 594
    if-eqz v0, :cond_1e

    .line 595
    invoke-direct {p0, v3, v5}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 596
    :cond_1e
    return-object v4
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 374
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 375
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 376
    const/4 v1, 0x0

    return v1

    .line 378
    :cond_9
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    .line 379
    const/4 v1, 0x1

    return v1
.end method

.method greylist-max-o removeAt(I)Ljava/lang/Object;
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 614
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/PriorityQueue;->modCount:I

    .line 615
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 616
    .local v0, "s":I
    const/4 v1, 0x0

    if-ne v0, p1, :cond_14

    .line 617
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aput-object v1, v2, p1

    goto :goto_2d

    .line 619
    :cond_14
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 620
    .local v3, "moved":Ljava/lang/Object;, "TE;"
    aput-object v1, v2, v0

    .line 621
    invoke-direct {p0, p1, v3}, Ljava/util/PriorityQueue;->siftDown(ILjava/lang/Object;)V

    .line 622
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-ne v2, v3, :cond_2d

    .line 623
    invoke-direct {p0, p1, v3}, Ljava/util/PriorityQueue;->siftUp(ILjava/lang/Object;)V

    .line 624
    iget-object v2, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v2, v2, p1

    if-eq v2, v3, :cond_2d

    .line 625
    return-object v3

    .line 628
    .end local v3    # "moved":Ljava/lang/Object;, "TE;"
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method greylist-max-o removeEq(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 391
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    if-ge v0, v1, :cond_13

    .line 392
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_10

    .line 393
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->removeAt(I)Ljava/lang/Object;

    .line 394
    const/4 v1, 0x1

    return v1

    .line 391
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 571
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    return v0
.end method

.method public final whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 816
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    new-instance v0, Ljava/util/PriorityQueue$PriorityQueueSpliterator;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2, v1}, Ljava/util/PriorityQueue$PriorityQueueSpliterator;-><init>(Ljava/util/PriorityQueue;III)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 3

    .line 426
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    iget-object v0, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/PriorityQueue;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 467
    .local p0, "this":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget v0, p0, Ljava/util/PriorityQueue;->size:I

    .line 468
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_10

    .line 470
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 471
    :cond_10
    iget-object v1, p0, Ljava/util/PriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    array-length v1, p1

    if-le v1, v0, :cond_1c

    .line 473
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 474
    :cond_1c
    return-object p1
.end method
