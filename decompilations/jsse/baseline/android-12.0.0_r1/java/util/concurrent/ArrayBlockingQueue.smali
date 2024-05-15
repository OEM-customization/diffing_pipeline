.class public Ljava/util/concurrent/ArrayBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ArrayBlockingQueue$Itr;,
        Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
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
.field private static final whitelist serialVersionUID:J = -0xb59ce4be1ef907aL


# instance fields
.field greylist-max-o count:I

.field final greylist-max-o items:[Ljava/lang/Object;

.field transient greylist-max-o itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "TE;>.Itrs;"
        }
    .end annotation
.end field

.field final greylist-max-o lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final greylist-max-o notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final greylist-max-o notFull:Ljava/util/concurrent/locks/Condition;

.field greylist-max-o putIndex:I

.field greylist-max-o takeIndex:I


# direct methods
.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 225
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 226
    return-void
.end method

.method public constructor whitelist test-api <init>(IZ)V
    .registers 5
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    .line 238
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 239
    if-lez p1, :cond_1d

    .line 241
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 244
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 245
    return-void

    .line 240
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(IZLjava/util/Collection;)V
    .registers 10
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p3, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 267
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 268
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 270
    const/4 v1, 0x0

    .line 272
    .local v1, "i":I
    :try_start_9
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "e":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_19} :catch_35
    .catchall {:try_start_9 .. :try_end_19} :catchall_33

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    :try_start_1b
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v3, v4, v1
    :try_end_20
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b .. :try_end_20} :catch_22
    .catchall {:try_start_1b .. :try_end_20} :catchall_33

    move v1, v5

    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_d

    .line 274
    :catch_22
    move-exception v1

    goto :goto_38

    .line 276
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_24
    nop

    .line 277
    :try_start_25
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 278
    if-ne v1, p1, :cond_2b

    const/4 v2, 0x0

    goto :goto_2c

    :cond_2b
    move v2, v1

    :goto_2c
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_33

    .line 280
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_33
    move-exception v1

    goto :goto_3e

    .line 274
    .restart local v1    # "i":I
    :catch_35
    move-exception v2

    move v5, v1

    move-object v1, v2

    .line 275
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v5    # "i":I
    :goto_38
    :try_start_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .end local p1    # "capacity":I
    .end local p2    # "fair":Z
    .end local p3    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_33

    .line 280
    .end local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "i":I
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .restart local p1    # "capacity":I
    .restart local p2    # "fair":Z
    .restart local p3    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :goto_3e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 281
    throw v1
.end method

.method private greylist-max-o dequeue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 167
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 169
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    aget-object v2, v0, v1

    .line 170
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    array-length v3, v0

    if-ne v1, v3, :cond_13

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 172
    :cond_13
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 173
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v1, :cond_20

    .line 174
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    .line 175
    :cond_20
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 176
    return-object v2
.end method

.method private greylist-max-o enqueue(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "x":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 154
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    aput-object p1, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    array-length v2, v0

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 156
    :cond_10
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 157
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 158
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

    .line 296
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 7

    .line 625
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 626
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 628
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 629
    .local v1, "k":I
    if-lez v1, :cond_38

    .line 630
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 631
    .local v2, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 632
    .local v3, "putIndex":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 634
    .local v4, "i":I
    :cond_f
    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 635
    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    if-ne v4, v5, :cond_18

    const/4 v4, 0x0

    .line 636
    :cond_18
    if-ne v4, v3, :cond_f

    .line 637
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 638
    const/4 v5, 0x0

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 639
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v5, :cond_26

    .line 640
    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    .line 641
    :cond_26
    :goto_26
    if-lez v1, :cond_38

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 642
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_3d

    .line 641
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 645
    .end local v1    # "k":I
    .end local v2    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    .end local v4    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    nop

    .line 647
    return-void

    .line 645
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    throw v1
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 509
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 510
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 511
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 513
    :try_start_9
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v2, :cond_29

    .line 514
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 515
    .local v2, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 516
    .local v3, "putIndex":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 518
    .local v4, "i":I
    :cond_13
    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_2e

    if-eqz v5, :cond_21

    .line 519
    nop

    .line 525
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_21
    add-int/lit8 v4, v4, 0x1

    :try_start_23
    array-length v5, v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_2e

    if-ne v4, v5, :cond_27

    const/4 v4, 0x0

    .line 521
    :cond_27
    if-ne v4, v3, :cond_13

    .line 523
    .end local v2    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    .end local v4    # "i":I
    :cond_29
    nop

    .line 525
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    return v0

    .line 525
    :catchall_2e
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 526
    throw v0
.end method

.method final greylist-max-o dec(I)I
    .registers 3
    .param p1, "i"    # I

    .line 135
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    if-nez p1, :cond_6

    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 656
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 11
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 666
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    if-eq p1, p0, :cond_8e

    .line 669
    if-gtz p2, :cond_9

    .line 670
    const/4 v0, 0x0

    return v0

    .line 671
    :cond_9
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 672
    .local v0, "items":[Ljava/lang/Object;
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 673
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 675
    :try_start_10
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 676
    .local v2, "n":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_89

    .line 677
    .local v3, "take":I
    const/4 v4, 0x0

    .line 679
    .local v4, "i":I
    :goto_19
    if-ge v4, v2, :cond_5a

    .line 681
    :try_start_1b
    aget-object v5, v0, v3

    .line 682
    .local v5, "x":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 683
    const/4 v6, 0x0

    aput-object v6, v0, v3

    .line 684
    add-int/lit8 v3, v3, 0x1

    array-length v6, v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2d

    if-ne v3, v6, :cond_29

    const/4 v3, 0x0

    .line 685
    :cond_29
    nop

    .end local v5    # "x":Ljava/lang/Object;, "TE;"
    add-int/lit8 v4, v4, 0x1

    .line 686
    goto :goto_19

    .line 690
    :catchall_2d
    move-exception v5

    if-lez v4, :cond_58

    .line 691
    :try_start_30
    iget v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v6, v4

    iput v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 692
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 693
    iget-object v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v7, :cond_46

    .line 694
    if-nez v6, :cond_41

    .line 695
    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    goto :goto_46

    .line 696
    :cond_41
    if-le v4, v3, :cond_46

    .line 697
    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    .line 699
    :cond_46
    :goto_46
    if-lez v4, :cond_58

    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 700
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 699
    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    .line 702
    :cond_58
    nop

    .end local v0    # "items":[Ljava/lang/Object;
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .end local p2    # "maxElements":I
    throw v5

    .line 687
    .restart local v0    # "items":[Ljava/lang/Object;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p0    # "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .restart local p2    # "maxElements":I
    :cond_5a
    nop

    .line 690
    if-lez v4, :cond_85

    .line 691
    iget v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    sub-int/2addr v5, v4

    iput v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 692
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 693
    iget-object v6, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v6, :cond_73

    .line 694
    if-nez v5, :cond_6e

    .line 695
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->queueIsEmpty()V

    goto :goto_73

    .line 696
    :cond_6e
    if-le v4, v3, :cond_73

    .line 697
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->takeIndexWrapped()V

    .line 699
    :cond_73
    :goto_73
    if-lez v4, :cond_85

    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/locks/ReentrantLock;->hasWaiters(Ljava/util/concurrent/locks/Condition;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 700
    iget-object v5, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_82
    .catchall {:try_start_30 .. :try_end_82} :catchall_89

    .line 699
    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    .line 704
    :cond_85
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 687
    return v2

    .line 704
    .end local v2    # "n":I
    .end local v3    # "take":I
    .end local v4    # "i":I
    :catchall_89
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 705
    throw v2

    .line 668
    .end local v0    # "items":[Ljava/lang/Object;
    .end local v1    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method final greylist-max-o itemAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 143
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 718
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;-><init>(Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 309
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 311
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 313
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_1c

    if-ne v1, v2, :cond_14

    .line 314
    const/4 v1, 0x0

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    return v1

    .line 316
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    .line 317
    const/4 v1, 0x1

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 317
    return v1

    .line 320
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    throw v1
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 10
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 355
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 357
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 358
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 360
    :goto_c
    :try_start_c
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v4, v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_2e

    if-ne v3, v4, :cond_26

    .line 361
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1e

    .line 362
    const/4 v3, 0x0

    .line 368
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    return v3

    .line 363
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_c

    .line 365
    :cond_26
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_2e

    .line 366
    const/4 v3, 0x1

    .line 368
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 366
    return v3

    .line 368
    :catchall_2e
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 369
    throw v3
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 411
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 412
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->itemAt(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    .line 416
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 414
    return-object v1

    .line 416
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 417
    throw v1
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 373
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 374
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 376
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    .line 378
    :goto_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 376
    return-object v1

    .line 378
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 379
    throw v1
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
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

    .line 395
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 396
    .local v0, "nanos":J
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 397
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 399
    :goto_9
    :try_start_9
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_28

    if-nez v3, :cond_20

    .line 400
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_18

    .line 401
    const/4 v3, 0x0

    .line 406
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 401
    return-object v3

    .line 402
    :cond_18
    :try_start_18
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_9

    .line 404
    :cond_20
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_28

    .line 406
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 404
    return-object v3

    .line 406
    :catchall_28
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 407
    throw v3
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 334
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 336
    :goto_8
    :try_start_8
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 337
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_8

    .line 338
    :cond_15
    invoke-direct {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1d

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    throw v1
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 4

    .line 451
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 452
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    sub-int/2addr v1, v2

    .line 456
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 454
    return v1

    .line 456
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 457
    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 478
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 479
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 480
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 482
    :try_start_9
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-lez v2, :cond_2c

    .line 483
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 484
    .local v2, "items":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 485
    .local v3, "putIndex":I
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 487
    .local v4, "i":I
    :cond_13
    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 488
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_31

    .line 489
    nop

    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 489
    const/4 v0, 0x1

    return v0

    .line 491
    :cond_24
    add-int/lit8 v4, v4, 0x1

    :try_start_26
    array-length v5, v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_31

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x0

    .line 492
    :cond_2a
    if-ne v4, v3, :cond_13

    .line 494
    .end local v2    # "items":[Ljava/lang/Object;
    .end local v3    # "putIndex":I
    .end local v4    # "i":I
    :cond_2c
    nop

    .line 496
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    return v0

    .line 496
    :catchall_31
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 497
    throw v0
.end method

.method greylist-max-o removeAt(I)V
    .registers 8
    .param p1, "removeIndex"    # I

    .line 188
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 189
    .local v0, "items":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_21

    .line 191
    aput-object v2, v0, v1

    .line 192
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    array-length v2, v0

    if-ne v1, v2, :cond_13

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    .line 193
    :cond_13
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 194
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v1, :cond_3f

    .line 195
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->elementDequeued()V

    goto :goto_3f

    .line 200
    :cond_21
    move v1, p1

    .local v1, "i":I
    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 201
    .local v3, "putIndex":I
    :goto_24
    move v4, v1

    .line 202
    .local v4, "pred":I
    add-int/lit8 v1, v1, 0x1

    array-length v5, v0

    if-ne v1, v5, :cond_2b

    const/4 v1, 0x0

    .line 203
    :cond_2b
    if-ne v1, v3, :cond_45

    .line 204
    aput-object v2, v0, v4

    .line 205
    iput v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    .line 206
    nop

    .line 210
    .end local v1    # "i":I
    .end local v3    # "putIndex":I
    .end local v4    # "pred":I
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 211
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->itrs:Ljava/util/concurrent/ArrayBlockingQueue$Itrs;

    if-eqz v1, :cond_3f

    .line 212
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue$Itrs;->removedAt(I)V

    .line 214
    :cond_3f
    :goto_3f
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 215
    return-void

    .line 208
    .restart local v1    # "i":I
    .restart local v3    # "putIndex":I
    .restart local v4    # "pred":I
    :cond_45
    aget-object v5, v0, v1

    aput-object v5, v0, v4

    .line 209
    .end local v4    # "pred":I
    goto :goto_24
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 428
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 429
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 431
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    .line 433
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 431
    return v1

    .line 433
    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    throw v1
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1363
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    nop

    .line 1364
    const/16 v0, 0x1110

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    .line 1363
    return-object v0
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 3
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

    .line 383
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 384
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 386
    :goto_5
    :try_start_5
    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    if-nez v1, :cond_f

    .line 387
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5

    .line 388
    :cond_f
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->dequeue()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 388
    return-object v1

    .line 390
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 9

    .line 543
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 544
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 547
    .local v1, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    add-int/2addr v3, v2

    .line 548
    .local v3, "end":I
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    .line 549
    .local v2, "a":[Ljava/lang/Object;
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    if-eq v3, v4, :cond_1c

    .line 550
    const/4 v5, 0x0

    array-length v6, v1

    iget v7, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v6, v7

    invoke-static {v1, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_21

    .line 551
    :cond_1c
    nop

    .line 553
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 551
    return-object v2

    .line 553
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v3    # "end":I
    :catchall_21
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 554
    throw v1
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 594
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 595
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 597
    :try_start_5
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue;->items:[Ljava/lang/Object;

    .line 598
    .local v1, "items":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue;->count:I

    .line 599
    .local v2, "count":I
    array-length v3, v1

    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 600
    .local v3, "firstLeg":I
    array-length v4, p1

    const/4 v5, 0x0

    if-ge v4, v2, :cond_23

    .line 601
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    add-int v6, v4, v2

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 601
    invoke-static {v1, v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    goto :goto_2e

    .line 604
    :cond_23
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->takeIndex:I

    invoke-static {v1, v4, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    array-length v4, p1

    if-le v4, v2, :cond_2e

    .line 606
    const/4 v4, 0x0

    aput-object v4, p1, v2

    .line 608
    :cond_2e
    :goto_2e
    if-ge v3, v2, :cond_35

    .line 609
    iget v4, p0, Ljava/util/concurrent/ArrayBlockingQueue;->putIndex:I

    invoke-static {v1, v5, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_3a

    .line 610
    :cond_35
    nop

    .line 612
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 610
    return-object p1

    .line 612
    .end local v1    # "items":[Ljava/lang/Object;
    .end local v2    # "count":I
    .end local v3    # "firstLeg":I
    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 613
    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 617
    .local p0, "this":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TE;>;"
    invoke-static {p0}, Ljava/util/concurrent/Helpers;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
