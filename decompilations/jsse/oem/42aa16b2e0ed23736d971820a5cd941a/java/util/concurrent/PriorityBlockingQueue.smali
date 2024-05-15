.class public Ljava/util/concurrent/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;,
        Ljava/util/concurrent/PriorityBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ALLOCATIONSPINLOCK:J

.field private static final greylist-max-o DEFAULT_INITIAL_CAPACITY:I = 0xb

.field private static final greylist-max-o MAX_ARRAY_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = 0x4da73f88e6712814L


# instance fields
.field private volatile transient greylist-max-o allocationSpinLock:I

.field private transient greylist-max-o comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final greylist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist notEmpty:Ljava/util/concurrent/locks/Condition;

.field private greylist-max-o q:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o queue:[Ljava/lang/Object;

.field private transient greylist-max-o size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1013
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    .line 1017
    :try_start_6
    const-class v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const-string v2, "allocationSpinLock"

    .line 1018
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 1021
    nop

    .line 1022
    return-void

    .line 1019
    :catch_16
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 191
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 192
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 204
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 205
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(ILjava/util/Comparator;)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 220
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 221
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1a

    .line 223
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 224
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 225
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 226
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 227
    return-void

    .line 222
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 246
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 247
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "heapify":Z
    const/4 v1, 0x1

    .line 250
    .local v1, "screen":Z
    instance-of v2, p1, Ljava/util/SortedSet;

    if-eqz v2, :cond_21

    .line 251
    move-object v2, p1

    check-cast v2, Ljava/util/SortedSet;

    .line 252
    .local v2, "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 253
    const/4 v0, 0x0

    .line 254
    .end local v2    # "ss":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TE;>;"
    goto :goto_38

    .line 255
    :cond_21
    instance-of v2, p1, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v2, :cond_38

    .line 256
    move-object v2, p1

    check-cast v2, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 258
    .local v2, "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->comparator()Ljava/util/Comparator;

    move-result-object v3

    iput-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 259
    const/4 v1, 0x0

    .line 260
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/concurrent/PriorityBlockingQueue;

    if-ne v3, v4, :cond_38

    .line 261
    const/4 v0, 0x0

    .line 263
    .end local v2    # "pq":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<+TE;>;"
    :cond_38
    :goto_38
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 264
    .local v2, "a":[Ljava/lang/Object;
    array-length v3, v2

    .line 266
    .local v3, "n":I
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, [Ljava/lang/Object;

    if-eq v4, v5, :cond_4b

    .line 267
    const-class v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 268
    :cond_4b
    if-eqz v1, :cond_60

    const/4 v4, 0x1

    if-eq v3, v4, :cond_54

    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    if-eqz v4, :cond_60

    .line 269
    :cond_54
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_55
    if-ge v4, v3, :cond_60

    .line 270
    aget-object v5, v2, v4

    if-eqz v5, :cond_5e

    .line 269
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 271
    :cond_5e
    const/4 v5, 0x0

    throw v5

    .line 273
    .end local v4    # "i":I
    :cond_60
    iput-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 274
    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 275
    if-eqz v0, :cond_69

    .line 276
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->heapify()V

    .line 277
    :cond_69
    return-void
.end method

.method private greylist dequeue()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 322
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 323
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 324
    return-object v1

    .line 326
    :cond_8
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 327
    .local v2, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    .line 328
    .local v4, "result":Ljava/lang/Object;, "TE;"
    aget-object v5, v2, v0

    .line 329
    .local v5, "x":Ljava/lang/Object;, "TE;"
    aput-object v1, v2, v0

    .line 330
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 331
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_19

    .line 332
    invoke-static {v3, v5, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    goto :goto_1c

    .line 334
    :cond_19
    invoke-static {v3, v5, v2, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 335
    :goto_1c
    iput v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 336
    return-object v4
.end method

.method private greylist-max-o heapify()V
    .registers 7

    .line 437
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 438
    .local v0, "array":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 439
    .local v1, "n":I
    ushr-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    .line 440
    .local v2, "half":I
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 441
    .local v3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v3, :cond_18

    .line 442
    move v4, v2

    .local v4, "i":I
    :goto_d
    if-ltz v4, :cond_17

    .line 443
    aget-object v5, v0, v4

    invoke-static {v4, v5, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    .line 442
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .end local v4    # "i":I
    :cond_17
    goto :goto_23

    .line 446
    :cond_18
    move v4, v2

    .restart local v4    # "i":I
    :goto_19
    if-ltz v4, :cond_23

    .line 447
    aget-object v5, v0, v4

    invoke-static {v4, v5, v0, v1, v3}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 446
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 449
    .end local v4    # "i":I
    :cond_23
    :goto_23
    return-void
.end method

.method private greylist-max-o indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 612
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    if-eqz p1, :cond_15

    .line 613
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 614
    .local v0, "array":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 615
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_15

    .line 616
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 617
    return v2

    .line 615
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 619
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_15
    const/4 v0, -0x1

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 924
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 925
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 926
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 927
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1f

    .line 929
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 930
    nop

    .line 931
    return-void

    .line 929
    :catchall_1f
    move-exception v1

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 930
    throw v1
.end method

.method private greylist-max-o removeAt(I)V
    .registers 7
    .param p1, "i"    # I

    .line 626
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 627
    .local v0, "array":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 628
    .local v1, "n":I
    const/4 v2, 0x0

    if-ne v1, p1, :cond_c

    .line 629
    aput-object v2, v0, p1

    goto :goto_28

    .line 631
    :cond_c
    aget-object v3, v0, v1

    .line 632
    .local v3, "moved":Ljava/lang/Object;, "TE;"
    aput-object v2, v0, v1

    .line 633
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 634
    .local v2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v2, :cond_18

    .line 635
    invoke-static {p1, v3, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V

    goto :goto_1b

    .line 637
    :cond_18
    invoke-static {p1, v3, v0, v1, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V

    .line 638
    :goto_1b
    aget-object v4, v0, p1

    if-ne v4, v3, :cond_28

    .line 639
    if-nez v2, :cond_25

    .line 640
    invoke-static {p1, v3, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_28

    .line 642
    :cond_25
    invoke-static {p1, v3, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 645
    .end local v2    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .end local v3    # "moved":Ljava/lang/Object;, "TE;"
    :cond_28
    :goto_28
    iput v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 646
    return-void
.end method

.method private static greylist-max-o siftDownComparable(ILjava/lang/Object;[Ljava/lang/Object;I)V
    .registers 11
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 393
    .local p1, "x":Ljava/lang/Object;, "TT;"
    if-lez p3, :cond_2e

    .line 394
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 395
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    ushr-int/lit8 v1, p3, 0x1

    .line 396
    .local v1, "half":I
    :goto_7
    if-ge p0, v1, :cond_2c

    .line 397
    shl-int/lit8 v2, p0, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 398
    .local v2, "child":I
    aget-object v3, p2, v2

    .line 399
    .local v3, "c":Ljava/lang/Object;
    add-int/lit8 v4, v2, 0x1

    .line 400
    .local v4, "right":I
    if-ge v4, p3, :cond_21

    move-object v5, v3

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, p2, v4

    .line 401
    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_21

    .line 402
    move v2, v4

    aget-object v3, p2, v4

    .line 403
    :cond_21
    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_28

    .line 404
    goto :goto_2c

    .line 405
    :cond_28
    aput-object v3, p2, p0

    .line 406
    move p0, v2

    .line 407
    .end local v2    # "child":I
    .end local v3    # "c":Ljava/lang/Object;
    .end local v4    # "right":I
    goto :goto_7

    .line 408
    :cond_2c
    :goto_2c
    aput-object v0, p2, p0

    .line 410
    .end local v0    # "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    .end local v1    # "half":I
    :cond_2e
    return-void
.end method

.method private static greylist-max-o siftDownUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;ILjava/util/Comparator;)V
    .registers 10
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 415
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p4, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-lez p3, :cond_28

    .line 416
    ushr-int/lit8 v0, p3, 0x1

    .line 417
    .local v0, "half":I
    :goto_4
    if-ge p0, v0, :cond_26

    .line 418
    shl-int/lit8 v1, p0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 419
    .local v1, "child":I
    aget-object v2, p2, v1

    .line 420
    .local v2, "c":Ljava/lang/Object;
    add-int/lit8 v3, v1, 0x1

    .line 421
    .local v3, "right":I
    if-ge v3, p3, :cond_1b

    aget-object v4, p2, v3

    invoke-interface {p4, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_1b

    .line 422
    move v1, v3

    aget-object v2, p2, v3

    .line 423
    :cond_1b
    invoke-interface {p4, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_22

    .line 424
    goto :goto_26

    .line 425
    :cond_22
    aput-object v2, p2, p0

    .line 426
    move p0, v1

    .line 427
    .end local v1    # "child":I
    .end local v2    # "c":Ljava/lang/Object;
    .end local v3    # "right":I
    goto :goto_4

    .line 428
    :cond_26
    :goto_26
    aput-object p1, p2, p0

    .line 430
    .end local v0    # "half":I
    :cond_28
    return-void
.end method

.method private static greylist-max-o siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 356
    .local p1, "x":Ljava/lang/Object;, "TT;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 357
    .local v0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TT;>;"
    :goto_3
    if-lez p0, :cond_16

    .line 358
    add-int/lit8 v1, p0, -0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 359
    .local v1, "parent":I
    aget-object v2, p2, v1

    .line 360
    .local v2, "e":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_12

    .line 361
    goto :goto_16

    .line 362
    :cond_12
    aput-object v2, p2, p0

    .line 363
    move p0, v1

    .line 364
    .end local v1    # "parent":I
    .end local v2    # "e":Ljava/lang/Object;
    goto :goto_3

    .line 365
    :cond_16
    :goto_16
    aput-object v0, p2, p0

    .line 366
    return-void
.end method

.method private static greylist-max-o siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 7
    .param p0, "k"    # I
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 370
    .local p1, "x":Ljava/lang/Object;, "TT;"
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    :goto_0
    if-lez p0, :cond_13

    .line 371
    add-int/lit8 v0, p0, -0x1

    ushr-int/lit8 v0, v0, 0x1

    .line 372
    .local v0, "parent":I
    aget-object v1, p2, v0

    .line 373
    .local v1, "e":Ljava/lang/Object;
    invoke-interface {p3, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_f

    .line 374
    goto :goto_13

    .line 375
    :cond_f
    aput-object v1, p2, p0

    .line 376
    move p0, v0

    .line 377
    .end local v0    # "parent":I
    .end local v1    # "e":Ljava/lang/Object;
    goto :goto_0

    .line 378
    :cond_13
    :goto_13
    aput-object p1, p2, p0

    .line 379
    return-void
.end method

.method private greylist-max-o tryGrow([Ljava/lang/Object;I)V
    .registers 12
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "oldCap"    # I

    .line 289
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "newArray":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    const/4 v2, 0x0

    if-nez v1, :cond_49

    sget-object v3, Ljava/util/concurrent/PriorityBlockingQueue;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/PriorityBlockingQueue;->ALLOCATIONSPINLOCK:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 292
    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 294
    const/16 v1, 0x40

    if-ge p2, v1, :cond_1f

    .line 295
    add-int/lit8 v1, p2, 0x2

    goto :goto_21

    .line 296
    :cond_1f
    shr-int/lit8 v1, p2, 0x1

    :goto_21
    add-int/2addr v1, p2

    .line 297
    .local v1, "newCap":I
    const v3, 0x7ffffff7

    sub-int v4, v1, v3

    if-lez v4, :cond_39

    .line 298
    add-int/lit8 v4, p2, 0x1

    .line 299
    .local v4, "minCap":I
    if-ltz v4, :cond_33

    if-gt v4, v3, :cond_33

    .line 301
    const v1, 0x7ffffff7

    goto :goto_39

    .line 300
    :cond_33
    :try_start_33
    new-instance v3, Ljava/lang/OutOfMemoryError;

    invoke-direct {v3}, Ljava/lang/OutOfMemoryError;-><init>()V

    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local p0    # "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .end local p1    # "array":[Ljava/lang/Object;
    .end local p2    # "oldCap":I
    throw v3

    .line 303
    .end local v4    # "minCap":I
    .restart local v0    # "newArray":[Ljava/lang/Object;
    .restart local p0    # "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .restart local p1    # "array":[Ljava/lang/Object;
    .restart local p2    # "oldCap":I
    :cond_39
    :goto_39
    if-le v1, p2, :cond_47

    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v3, p1, :cond_47

    .line 304
    new-array v3, v1, [Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_43

    move-object v0, v3

    goto :goto_47

    .line 306
    .end local v1    # "newCap":I
    :catchall_43
    move-exception v1

    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 307
    throw v1

    .line 306
    :cond_47
    :goto_47
    iput v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->allocationSpinLock:I

    .line 309
    :cond_49
    if-nez v0, :cond_4e

    .line 310
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 311
    :cond_4e
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    if-eqz v0, :cond_5e

    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    if-ne v1, p1, :cond_5e

    .line 313
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 314
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_5e
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 902
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 905
    const/4 v0, 0x0

    :try_start_6
    new-instance v1, Ljava/util/PriorityQueue;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 906
    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 907
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 909
    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 910
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    nop

    .line 912
    return-void

    .line 909
    :catchall_25
    move-exception v1

    iput-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->q:Ljava/util/PriorityQueue;

    .line 910
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 462
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api clear()V
    .registers 6

    .line 756
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 757
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 759
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 760
    .local v1, "array":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 761
    .local v2, "n":I
    const/4 v3, 0x0

    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 762
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_15

    .line 763
    const/4 v4, 0x0

    aput-object v4, v1, v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    .line 762
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 765
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_15
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 766
    nop

    .line 767
    return-void

    .line 765
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 766
    throw v1
.end method

.method public whitelist core-platform-api test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 589
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 701
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 702
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 704
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_13

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 706
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 704
    return v1

    .line 706
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 707
    throw v1
.end method

.method public whitelist core-platform-api test-api drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 721
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api drainTo(Ljava/util/Collection;I)I
    .registers 8
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 731
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_33

    .line 733
    if-eq p1, p0, :cond_2d

    .line 735
    const/4 v0, 0x0

    if-gtz p2, :cond_8

    .line 736
    return v0

    .line 737
    :cond_8
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 738
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 740
    :try_start_d
    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 741
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_23

    .line 742
    iget-object v4, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_28

    .line 741
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 745
    .end local v3    # "i":I
    :cond_23
    nop

    .line 747
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 745
    return v2

    .line 747
    .end local v2    # "n":I
    :catchall_28
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 748
    throw v0

    .line 734
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 732
    :cond_33
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 855
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;

    invoke-virtual {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue$Itr;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 477
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_34

    .line 479
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 483
    :goto_7
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    move v2, v1

    .local v2, "n":I
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    move-object v4, v3

    .local v4, "array":[Ljava/lang/Object;
    array-length v3, v3

    move v5, v3

    .local v5, "cap":I
    if-lt v1, v3, :cond_15

    .line 484
    invoke-direct {p0, v4, v5}, Ljava/util/concurrent/PriorityBlockingQueue;->tryGrow([Ljava/lang/Object;I)V

    goto :goto_7

    .line 486
    :cond_15
    :try_start_15
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->comparator:Ljava/util/Comparator;

    .line 487
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1d

    .line 488
    invoke-static {v2, p1, v4}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpComparable(ILjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_20

    .line 490
    :cond_1d
    invoke-static {v2, p1, v4, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->siftUpUsingComparator(ILjava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 491
    :goto_20
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 492
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2f

    .line 494
    .end local v1    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 495
    nop

    .line 496
    const/4 v1, 0x1

    return v1

    .line 494
    :catchall_2f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 495
    throw v1

    .line 478
    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "n":I
    .end local v4    # "array":[Ljava/lang/Object;
    .end local v5    # "cap":I
    :cond_34
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .line 529
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 570
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 571
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 573
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_10

    :cond_b
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 575
    :goto_10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 573
    return-object v1

    .line 575
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 576
    throw v1
.end method

.method public whitelist core-platform-api test-api poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 533
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 534
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 536
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 538
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 536
    return-object v1

    .line 538
    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 539
    throw v1
.end method

.method public whitelist core-platform-api test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 556
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 557
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 558
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 561
    :goto_9
    :try_start_9
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .local v4, "result":Ljava/lang/Object;, "TE;"
    if-nez v3, :cond_1e

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-lez v3, :cond_1e

    .line 562
    iget-object v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_23

    move-wide v0, v5

    goto :goto_9

    .line 564
    :cond_1e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 565
    nop

    .line 566
    return-object v4

    .line 564
    .end local v4    # "result":Ljava/lang/Object;, "TE;"
    :catchall_23
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 565
    throw v3
.end method

.method public whitelist core-platform-api test-api put(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 510
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public whitelist core-platform-api test-api remainingCapacity()I
    .registers 2

    .line 608
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 660
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 661
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_5
    invoke-direct {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_19

    .line 664
    .local v1, "i":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 665
    const/4 v2, 0x0

    .line 669
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 665
    return v2

    .line 666
    :cond_11
    :try_start_11
    invoke-direct {p0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_19

    .line 667
    const/4 v2, 0x1

    .line 669
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 667
    return v2

    .line 669
    .end local v1    # "i":I
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 670
    throw v1
.end method

.method greylist-max-o removeEQ(Ljava/lang/Object;)V
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 677
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 678
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 680
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    .line 681
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .local v3, "n":I
    :goto_a
    if-ge v2, v3, :cond_17

    .line 682
    aget-object v4, v1, v2

    if-ne p1, v4, :cond_14

    .line 683
    invoke-direct {p0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;->removeAt(I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1c

    .line 684
    goto :goto_17

    .line 681
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 688
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_17
    :goto_17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 689
    nop

    .line 690
    return-void

    .line 688
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 689
    throw v1
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 3

    .line 593
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 594
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 596
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 598
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    return v1

    .line 598
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 599
    throw v1
.end method

.method public whitelist core-platform-api test-api spliterator()Ljava/util/Spliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1009
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/concurrent/PriorityBlockingQueue$PBQSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api take()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 543
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 544
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 547
    :goto_5
    :try_start_5
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_12

    .line 548
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    goto :goto_5

    .line 550
    :cond_12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 551
    nop

    .line 552
    return-object v2

    .line 550
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 551
    throw v1
.end method

.method public whitelist core-platform-api test-api toArray()[Ljava/lang/Object;
    .registers 4

    .line 783
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 784
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 786
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    .line 788
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 786
    return-object v1

    .line 788
    :catchall_11
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 789
    throw v1
.end method

.method public whitelist core-platform-api test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 829
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 830
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 832
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    .line 833
    .local v1, "n":I
    array-length v2, p1

    if-ge v2, v1, :cond_1a

    .line 835
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    iget v3, p0, Ljava/util/concurrent/PriorityBlockingQueue;->size:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2b

    .line 841
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 835
    return-object v2

    .line 836
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Ljava/util/concurrent/PriorityBlockingQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    array-length v2, p1

    if-le v2, v1, :cond_26

    .line 838
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_2b

    .line 839
    :cond_26
    nop

    .line 841
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    return-object p1

    .line 841
    .end local v1    # "n":I
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 842
    throw v1
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 2

    .line 711
    .local p0, "this":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
