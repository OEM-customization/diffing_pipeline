.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/concurrent/TransferQueue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ASYNC:I = 0x1

.field private static final CHAINED_SPINS:I = 0x40

.field private static final FRONT_SPINS:I = 0x80

.field private static final HEAD:J

.field private static final MP:Z

.field private static final NOW:I = 0x0

.field private static final SWEEPVOTES:J

.field static final SWEEP_THRESHOLD:I = 0x20

.field private static final SYNC:I = 0x2

.field private static final TAIL:J

.field private static final TIMED:I = 0x3

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field volatile transient head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient sweepVotes:I

.field private volatile transient tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 415
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-le v3, v2, :cond_49

    .line 414
    :goto_b
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    .line 1567
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1573
    :try_start_13
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1574
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "head"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1573
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    .line 1575
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1576
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "tail"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1575
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    .line 1577
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1578
    const-class v3, Ljava/util/concurrent/LinkedTransferQueue;

    const-string/jumbo v4, "sweepVotes"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1577
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_13 .. :try_end_46} :catch_4b

    .line 1585
    const-class v1, Ljava/util/concurrent/locks/LockSupport;

    .line 88
    .local v1, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 415
    .end local v1    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    const/4 v2, 0x0

    goto :goto_b

    .line 1579
    :catch_4b
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1225
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1226
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1238
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    .line 1239
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 1240
    return-void
.end method

.method private awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 20
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "Ljava/util/concurrent/LinkedTransferQueue$Node;",
            "TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    if-eqz p4, :cond_19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    add-long v2, v10, p5

    .line 695
    .local v2, "deadline":J
    :goto_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 696
    .local v8, "w":Ljava/lang/Thread;
    const/4 v7, -0x1

    .line 697
    .local v7, "spins":I
    const/4 v6, 0x0

    .line 700
    :cond_e
    :goto_e
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 701
    .local v4, "item":Ljava/lang/Object;
    move-object/from16 v0, p3

    if-eq v4, v0, :cond_1c

    .line 703
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 704
    move-object v5, v4

    .line 705
    .local v5, "itemE":Ljava/lang/Object;, "TE;"
    return-object v4

    .line 694
    .end local v2    # "deadline":J
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "itemE":Ljava/lang/Object;, "TE;"
    .end local v7    # "spins":I
    .end local v8    # "w":Ljava/lang/Thread;
    :cond_19
    const-wide/16 v2, 0x0

    .restart local v2    # "deadline":J
    goto :goto_8

    .line 707
    .restart local v4    # "item":Ljava/lang/Object;
    .restart local v7    # "spins":I
    .restart local v8    # "w":Ljava/lang/Thread;
    :cond_1c
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_2a

    if-eqz p4, :cond_36

    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-gtz v9, :cond_36

    .line 708
    :cond_2a
    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 709
    move-object/from16 v0, p3

    invoke-virtual {p1, v0, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 710
    return-object p3

    .line 712
    :cond_36
    if-gez v7, :cond_45

    .line 713
    iget-boolean v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    invoke-static {p2, v9}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    move-result v7

    if-lez v7, :cond_e

    .line 714
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .local v6, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    goto :goto_e

    .line 716
    .end local v6    # "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :cond_45
    if-lez v7, :cond_55

    .line 717
    add-int/lit8 v7, v7, -0x1

    .line 718
    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v9

    if-nez v9, :cond_e

    .line 719
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_e

    .line 721
    :cond_55
    iget-object v9, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v9, :cond_5c

    .line 722
    iput-object v8, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_e

    .line 724
    :cond_5c
    if-eqz p4, :cond_70

    .line 725
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long p5, v2, v10

    .line 726
    const-wide/16 v10, 0x0

    cmp-long v9, p5, v10

    if-lez v9, :cond_e

    .line 727
    move-wide/from16 v0, p5

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_e

    .line 730
    :cond_70
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_e
.end method

.method private casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 574
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casSweepVotes(II)Z
    .registers 9
    .param p1, "cmp"    # I
    .param p2, "val"    # I

    .prologue
    .line 578
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 570
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private countOfMode(Z)I
    .registers 6
    .param p1, "data"    # Z

    .prologue
    .line 791
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :cond_0
    const/4 v0, 0x0

    .line 792
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_4
    if-eqz v2, :cond_19

    .line 793
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 794
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v3, p1, :cond_12

    .line 795
    const/4 v3, 0x0

    return v3

    .line 796
    :cond_12
    add-int/lit8 v0, v0, 0x1

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1a

    .line 802
    :cond_19
    return v0

    .line 799
    :cond_1a
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4
.end method

.method private findAndRemove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 1200
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_24

    .line 1201
    const/4 v2, 0x0

    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_5
    :goto_5
    if-eqz v1, :cond_24

    .line 1202
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1203
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_22

    .line 1204
    if-eqz v0, :cond_26

    if-eq v0, v1, :cond_26

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1205
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    .line 1204
    if-eqz v3, :cond_26

    .line 1206
    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1207
    const/4 v3, 0x1

    return v3

    .line 1210
    :cond_22
    if-nez v0, :cond_26

    .line 1219
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_24
    const/4 v3, 0x0

    return v3

    .line 1212
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_26
    move-object v2, v1

    .line 1213
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v1, v2, :cond_5

    .line 1214
    const/4 v2, 0x0

    .line 1215
    .local v2, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1554
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1557
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1558
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_a

    .line 1563
    return-void

    .line 1561
    :cond_a
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .registers 3
    .param p0, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

    .prologue
    .line 740
    sget-boolean v0, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    if-eqz v0, :cond_1d

    if-eqz p0, :cond_1d

    .line 741
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v0, p1, :cond_d

    .line 742
    const/16 v0, 0xc0

    return v0

    .line 743
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 744
    const/16 v0, 0x80

    return v0

    .line 745
    :cond_16
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v0, :cond_1d

    .line 746
    const/16 v0, 0x40

    return v0

    .line 748
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private sweep()V
    .registers 5

    .prologue
    .line 1182
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-eqz v1, :cond_14

    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_14

    .line 1183
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1185
    move-object v1, v2

    goto :goto_2

    .line 1186
    :cond_10
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v0, :cond_15

    .line 1194
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_14
    return-void

    .line 1188
    .restart local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_15
    if-ne v2, v0, :cond_1a

    .line 1190
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_2

    .line 1192
    :cond_1a
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_2
.end method

.method private toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 11
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 837
    move-object v5, p1

    .line 839
    .local v5, "x":[Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    .line 840
    .local v3, "size":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v4, v3

    .end local v3    # "size":I
    .local v4, "size":I
    :goto_8
    if-eqz v2, :cond_34

    .line 841
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 842
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v6, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v6, :cond_32

    .line 843
    if-eqz v0, :cond_24

    if-eq v0, v2, :cond_24

    .line 844
    if-nez v5, :cond_26

    .line 845
    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/Object;

    .line 848
    :cond_19
    :goto_19
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "size":I
    .restart local v3    # "size":I
    aput-object v0, v5, v4

    .line 852
    :goto_1d
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_3

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v4, v3

    .end local v3    # "size":I
    .restart local v4    # "size":I
    goto :goto_8

    :cond_24
    move v3, v4

    .line 843
    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_1d

    .line 846
    .end local v3    # "size":I
    .restart local v4    # "size":I
    :cond_26
    array-length v6, v5

    if-ne v4, v6, :cond_19

    .line 847
    add-int/lit8 v6, v4, 0x4

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_19

    .line 850
    :cond_32
    if-nez v0, :cond_52

    .line 855
    .end local v0    # "item":Ljava/lang/Object;
    :cond_34
    if-nez v5, :cond_39

    .line 856
    new-array v6, v8, [Ljava/lang/Object;

    return-object v6

    .line 857
    :cond_39
    if-eqz p1, :cond_49

    array-length v6, p1

    if-gt v4, v6, :cond_49

    .line 858
    if-eq p1, v5, :cond_43

    .line 859
    invoke-static {v5, v8, p1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    :cond_43
    array-length v6, p1

    if-ge v4, v6, :cond_48

    .line 861
    aput-object v7, p1, v4

    .line 862
    :cond_48
    return-object p1

    .line 864
    :cond_49
    array-length v6, v5

    if-ne v4, v6, :cond_4d

    .end local v5    # "x":[Ljava/lang/Object;
    :goto_4c
    return-object v5

    .restart local v5    # "x":[Ljava/lang/Object;
    :cond_4d
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    goto :goto_4c

    .restart local v0    # "item":Ljava/lang/Object;
    :cond_52
    move v3, v4

    .end local v4    # "size":I
    .restart local v3    # "size":I
    goto :goto_1d
.end method

.method private tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .registers 9
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v5, 0x0

    .line 656
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v2

    .line 658
    :cond_4
    :goto_4
    if-nez v1, :cond_11

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_11

    .line 659
    invoke-direct {p0, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 660
    return-object p1

    .line 662
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_11
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 663
    return-object v5

    .line 664
    :cond_18
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_2b

    .line 665
    if-eq v1, v2, :cond_25

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_25

    move-object v2, v3

    move-object v1, v3

    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4

    .line 666
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_25
    if-eq v1, v0, :cond_29

    move-object v1, v0

    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_29
    const/4 v1, 0x0

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4

    .line 667
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2b
    invoke-virtual {v1, v5, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 668
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4

    .line 670
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_34
    if-eq v1, v2, :cond_50

    .line 671
    :cond_36
    iget-object v4, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, v2, :cond_42

    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_50

    .line 672
    :cond_42
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_50

    .line 673
    iget-object p1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_50

    .line 674
    iget-object p1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz p1, :cond_50

    if-ne p1, v2, :cond_36

    .line 676
    :cond_50
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1538
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1539
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1540
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_7

    .line 1542
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1543
    return-void
.end method

.method private xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .registers 22
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p2, :cond_a

    if-nez p1, :cond_a

    .line 601
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 602
    :cond_a
    const/4 v4, 0x0

    .line 607
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v14, v2

    .local v14, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_10
    if-eqz v14, :cond_21

    .line 608
    iget-boolean v10, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 609
    .local v10, "isData":Z
    iget-object v11, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 610
    .local v11, "item":Ljava/lang/Object;
    if-eq v11, v14, :cond_8b

    if-eqz v11, :cond_4e

    const/4 v3, 0x1

    :goto_1b
    if-ne v3, v10, :cond_8b

    .line 611
    move/from16 v0, p2

    if-ne v10, v0, :cond_50

    .line 633
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    :cond_21
    if-eqz p3, :cond_9a

    .line 634
    if-nez v4, :cond_2e

    .line 635
    new-instance v4, Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    .line 636
    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v5

    .line 637
    .local v5, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v5, :cond_b

    .line 639
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_9a

    .line 640
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_98

    const/4 v7, 0x1

    :goto_43
    move-object/from16 v3, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 610
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v10    # "isData":Z
    .restart local v11    # "item":Ljava/lang/Object;
    :cond_4e
    const/4 v3, 0x0

    goto :goto_1b

    .line 613
    :cond_50
    move-object/from16 v0, p1

    invoke-virtual {v14, v11, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 614
    move-object v15, v14

    .local v15, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_59
    if-eq v15, v2, :cond_71

    .line 615
    iget-object v13, v15, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 616
    .local v13, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v3, v2, :cond_78

    if-nez v13, :cond_66

    move-object v13, v15

    .end local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_66
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 617
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    .line 624
    :cond_71
    :goto_71
    iget-object v3, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 625
    move-object v12, v11

    .line 626
    .local v12, "itemE":Ljava/lang/Object;, "TE;"
    return-object v11

    .line 620
    .end local v12    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_78
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v2, :cond_71

    .line 621
    iget-object v15, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eqz v15, :cond_71

    invoke-virtual {v15}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 620
    if-eqz v3, :cond_59

    goto :goto_71

    .line 629
    .end local v15    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_8b
    iget-object v13, v14, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 630
    .restart local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v14, v13, :cond_91

    move-object v14, v13

    goto :goto_10

    :cond_91
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v14, v2

    goto/16 :goto_10

    .line 640
    .end local v10    # "isData":Z
    .end local v11    # "item":Ljava/lang/Object;
    .end local v13    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_98
    const/4 v7, 0x0

    goto :goto_43

    .line 642
    .end local v5    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_9a
    return-object p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1288
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1289
    return v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1502
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_1a

    .line 1503
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_4
    if-eqz v1, :cond_1a

    .line 1504
    iget-object v0, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1505
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_18

    .line 1506
    if-eqz v0, :cond_1c

    if-eq v0, v1, :cond_1c

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1507
    const/4 v2, 0x1

    return v2

    .line 1509
    :cond_18
    if-nez v0, :cond_1c

    .line 1513
    .end local v0    # "item":Ljava/lang/Object;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1a
    const/4 v2, 0x0

    return v2

    .line 1503
    .restart local v0    # "item":Ljava/lang/Object;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1c
    invoke-virtual {p0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v1

    goto :goto_4
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 1371
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 1372
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1373
    :cond_8
    if-ne p1, p0, :cond_10

    .line 1374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1375
    :cond_10
    const/4 v1, 0x0

    .line 1376
    .local v1, "n":I
    :goto_11
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1d

    .line 1377
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1380
    :cond_1d
    return v1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 6
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 1388
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_8

    .line 1389
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1390
    :cond_8
    if-ne p1, p0, :cond_10

    .line 1391
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1392
    :cond_10
    const/4 v1, 0x0

    .line 1393
    .local v1, "n":I
    :goto_11
    if-ge v1, p2, :cond_1f

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_1f

    .line 1394
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1397
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1f
    return v1
.end method

.method final firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;
    .registers 6

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 770
    :cond_1
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_4
    if-eqz v2, :cond_13

    .line 771
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 772
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_11

    .line 773
    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_14

    .line 774
    return-object v2

    .line 776
    :cond_11
    if-nez v0, :cond_14

    .line 781
    .end local v0    # "item":Ljava/lang/Object;
    :cond_13
    return-object v4

    .line 778
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_14
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_1

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4
.end method

.method public getWaitingConsumerCount()I
    .registers 2

    .prologue
    .line 1475
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public hasWaitingConsumer()Z
    .registers 5

    .prologue
    .line 1443
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :cond_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_3
    if-eqz v2, :cond_f

    .line 1444
    iget-object v0, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1445
    .local v0, "item":Ljava/lang/Object;
    iget-boolean v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_11

    .line 1446
    if-eqz v0, :cond_15

    if-eq v0, v2, :cond_15

    .line 1454
    .end local v0    # "item":Ljava/lang/Object;
    :cond_f
    const/4 v3, 0x0

    return v3

    .line 1449
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_11
    if-nez v0, :cond_15

    .line 1450
    const/4 v3, 0x1

    return v3

    .line 1451
    :cond_15
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v1, :cond_0

    move-object v2, v1

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_3
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1438
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1410
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1275
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1276
    return v2
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1263
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1264
    return v2
.end method

.method public peek()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v5, 0x0

    .line 1415
    :cond_1
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v3, v2

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_4
    if-eqz v3, :cond_14

    .line 1416
    iget-object v1, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1417
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v4, :cond_12

    .line 1418
    if-eqz v1, :cond_15

    if-eq v1, v3, :cond_15

    .line 1419
    move-object v0, v1

    .line 1420
    .local v0, "e":Ljava/lang/Object;, "TE;"
    return-object v1

    .line 1423
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_12
    if-nez v1, :cond_15

    .line 1428
    .end local v1    # "item":Ljava/lang/Object;
    :cond_14
    return-object v5

    .line 1425
    .restart local v1    # "item":Ljava/lang/Object;
    :cond_15
    iget-object v2, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v3, v2, :cond_1

    move-object v3, v2

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    goto :goto_4
.end method

.method public poll()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v2, 0x0

    .line 1363
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 1356
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1357
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-nez v6, :cond_16

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 1358
    :cond_16
    return-object v6

    .line 1359
    :cond_17
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1249
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1250
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 1525
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1490
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1471
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method final succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .registers 3
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .line 759
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 760
    .local v0, "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_6

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v0    # "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6
    return-object v0
.end method

.method public take()Ljava/lang/Object;
    .registers 8
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

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    .line 1348
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v6

    .line 1349
    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_d

    .line 1350
    return-object v6

    .line 1351
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1352
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 882
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 923
    :cond_8
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    .line 807
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 809
    :cond_1
    const/4 v1, 0x0

    .line 810
    .local v1, "charLength":I
    const/4 v6, 0x0

    .line 811
    .local v6, "size":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v4, v3

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v4, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_7
    if-eqz v4, :cond_3c

    .line 812
    iget-object v2, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 813
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v8, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v8, :cond_3a

    .line 814
    if-eqz v2, :cond_2c

    if-eq v2, v4, :cond_2c

    .line 815
    if-nez v0, :cond_2e

    .line 816
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/String;

    .line 819
    :cond_18
    :goto_18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    aput-object v5, v0, v7

    .line 821
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    .line 825
    .end local v5    # "s":Ljava/lang/String;
    :goto_25
    iget-object v3, v4, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .end local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v4, v3, :cond_1

    move-object v4, v3

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v4    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_7

    :cond_2c
    move v6, v7

    .line 814
    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_25

    .line 817
    .end local v6    # "size":I
    .restart local v7    # "size":I
    :cond_2e
    array-length v8, v0

    if-ne v7, v8, :cond_18

    .line 818
    mul-int/lit8 v8, v7, 0x2

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .local v0, "a":[Ljava/lang/String;
    goto :goto_18

    .line 823
    .end local v0    # "a":[Ljava/lang/String;
    :cond_3a
    if-nez v2, :cond_47

    .line 829
    .end local v2    # "item":Ljava/lang/Object;
    :cond_3c
    if-nez v7, :cond_42

    .line 830
    const-string/jumbo v8, "[]"

    return-object v8

    .line 832
    :cond_42
    invoke-static {v0, v7, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v2    # "item":Ljava/lang/Object;
    :cond_47
    move v6, v7

    .end local v7    # "size":I
    .restart local v6    # "size":I
    goto :goto_25
.end method

.method public transfer(Ljava/lang/Object;)V
    .registers 8
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

    .prologue
    .line 1318
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1319
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1320
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1322
    :cond_15
    return-void
.end method

.method public tryTransfer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1303
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_c
    return v2

    :cond_d
    move v2, v3

    goto :goto_c
.end method

.method public tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
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

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 1340
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1341
    return v2

    .line 1342
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1343
    const/4 v0, 0x0

    return v0

    .line 1344
    :cond_17
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .registers 8
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v4, 0x0

    .line 1136
    iput-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    .line 1144
    if-eqz p1, :cond_42

    if-eq p1, p2, :cond_42

    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v4, p2, :cond_42

    .line 1145
    iget-object v2, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1146
    .local v2, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v2, :cond_1d

    .line 1147
    if-eq v2, p2, :cond_42

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    .line 1146
    if-eqz v4, :cond_42

    .line 1149
    :cond_1d
    :goto_1d
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1150
    .local v0, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, p1, :cond_23

    if-ne v0, p2, :cond_24

    .line 1151
    :cond_23
    return-void

    .line 1150
    :cond_24
    if-eqz v0, :cond_23

    .line 1152
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v4

    if-nez v4, :cond_43

    .line 1160
    iget-object v4, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p1, :cond_42

    iget-object v4, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v4, p2, :cond_42

    .line 1162
    :cond_34
    iget v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    .line 1163
    .local v3, "v":I
    const/16 v4, 0x20

    if-ge v3, v4, :cond_54

    .line 1164
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1175
    .end local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "v":I
    :cond_42
    :goto_42
    return-void

    .line 1154
    .restart local v0    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v2    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_43
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1155
    .local v1, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_48

    .line 1156
    return-void

    .line 1157
    :cond_48
    if-eq v1, v0, :cond_1d

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1158
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    goto :goto_1d

    .line 1167
    .end local v1    # "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v3    # "v":I
    :cond_54
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1168
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    goto :goto_42
.end method
