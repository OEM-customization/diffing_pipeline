.class public Ljava/util/concurrent/LinkedTransferQueue;
.super Ljava/util/AbstractQueue;
.source "LinkedTransferQueue.java"

# interfaces
.implements Ljava/util/concurrent/TransferQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;,
        Ljava/util/concurrent/LinkedTransferQueue$Itr;,
        Ljava/util/concurrent/LinkedTransferQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/TransferQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final greylist-max-o ASYNC:I = 0x1

.field private static final greylist-max-o CHAINED_SPINS:I = 0x40

.field private static final greylist-max-o FRONT_SPINS:I = 0x80

.field private static final greylist-max-o HEAD:J

.field private static final greylist-max-o MP:Z

.field private static final greylist-max-o NOW:I = 0x0

.field private static final greylist-max-o SWEEPVOTES:J

.field static final greylist-max-o SWEEP_THRESHOLD:I = 0x20

.field private static final greylist-max-o SYNC:I = 0x2

.field private static final greylist-max-o TAIL:J

.field private static final greylist-max-o TIMED:I = 0x3

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = -0x2cbacc91e0a3c166L


# instance fields
.field volatile transient greylist-max-o head:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field private volatile transient greylist-max-o sweepVotes:I

.field private volatile transient greylist-max-o tail:Ljava/util/concurrent/LinkedTransferQueue$Node;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 415
    const-class v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    sput-boolean v2, Ljava/util/concurrent/LinkedTransferQueue;->MP:Z

    .line 1567
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/LinkedTransferQueue;->U:Lsun/misc/Unsafe;

    .line 1573
    :try_start_17
    const-string v2, "head"

    .line 1574
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->HEAD:J

    .line 1575
    const-string v2, "tail"

    .line 1576
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue;->TAIL:J

    .line 1577
    const-string v2, "sweepVotes"

    .line 1578
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/LinkedTransferQueue;->SWEEPVOTES:J
    :try_end_3b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_17 .. :try_end_3b} :catch_3f

    .line 1581
    nop

    .line 1585
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1586
    return-void

    .line 1579
    :catch_3f
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 1225
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 1226
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 1238
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    .line 1239
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->addAll(Ljava/util/Collection;)Z

    .line 1240
    return-void
.end method

.method private greylist-max-o awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 23
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

    .line 694
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p3, "e":Ljava/lang/Object;, "TE;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    if-eqz p4, :cond_13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v6, v6, p5

    goto :goto_14

    :cond_13
    move-wide v6, v4

    .line 695
    .local v6, "deadline":J
    :goto_14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 696
    .local v8, "w":Ljava/lang/Thread;
    const/4 v9, -0x1

    .line 697
    .local v9, "spins":I
    const/4 v10, 0x0

    move v11, v9

    move-object v12, v10

    move-wide/from16 v9, p5

    .line 700
    .end local p5    # "nanos":J
    .local v9, "nanos":J
    .local v11, "spins":I
    .local v12, "randomYields":Ljava/util/concurrent/ThreadLocalRandom;
    :goto_1e
    iget-object v13, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 701
    .local v13, "item":Ljava/lang/Object;
    if-eq v13, v3, :cond_27

    .line 703
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetContents()V

    .line 704
    move-object v4, v13

    .line 705
    .local v4, "itemE":Ljava/lang/Object;, "TE;"
    return-object v4

    .line 707
    .end local v4    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_27
    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v14

    if-nez v14, :cond_6f

    if-eqz p4, :cond_34

    cmp-long v14, v9, v4

    if-gtz v14, :cond_34

    goto :goto_6f

    .line 712
    :cond_34
    if-gez v11, :cond_44

    .line 713
    iget-boolean v14, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    invoke-static {v2, v14}, Ljava/util/concurrent/LinkedTransferQueue;->spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I

    move-result v14

    move v11, v14

    if-lez v14, :cond_79

    .line 714
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v12

    goto :goto_79

    .line 716
    :cond_44
    if-lez v11, :cond_54

    .line 717
    add-int/lit8 v11, v11, -0x1

    .line 718
    const/16 v14, 0x40

    invoke-virtual {v12, v14}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_79

    .line 719
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_79

    .line 721
    :cond_54
    iget-object v14, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    if-nez v14, :cond_5b

    .line 722
    iput-object v8, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    goto :goto_79

    .line 724
    :cond_5b
    if-eqz p4, :cond_6b

    .line 725
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long v9, v6, v14

    .line 726
    cmp-long v14, v9, v4

    if-lez v14, :cond_79

    .line 727
    invoke-static {v0, v9, v10}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_79

    .line 730
    :cond_6b
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_79

    .line 708
    :cond_6f
    :goto_6f
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 709
    invoke-virtual {v1, v3, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_79

    .line 710
    return-object v3

    .line 732
    .end local v13    # "item":Ljava/lang/Object;
    :cond_79
    :goto_79
    goto :goto_1e
.end method

.method private greylist-max-o casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

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

.method private greylist-max-o casSweepVotes(II)Z
    .registers 9
    .param p1, "cmp"    # I
    .param p2, "val"    # I

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

.method private greylist-max-o casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

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

.method private greylist-max-o countOfMode(Z)I
    .registers 6
    .param p1, "data"    # Z

    .line 791
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :goto_0
    const/4 v0, 0x0

    .line 792
    .local v0, "count":I
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_3
    if-eqz v1, :cond_21

    .line 793
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_19

    .line 794
    iget-boolean v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eq v2, p1, :cond_11

    .line 795
    const/4 v2, 0x0

    return v2

    .line 796
    :cond_11
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_19

    .line 797
    goto :goto_21

    .line 799
    :cond_19
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v2

    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v1, v2, :cond_1f

    .line 800
    goto :goto_0

    .line 799
    :cond_1f
    move-object v1, v3

    goto :goto_3

    .line 802
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_21
    :goto_21
    return v0
.end method

.method private greylist-max-o findAndRemove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "e"    # Ljava/lang/Object;

    .line 1200
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_2f

    .line 1201
    const/4 v0, 0x0

    .local v0, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_5
    if-eqz v1, :cond_2f

    .line 1202
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1203
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v3, :cond_22

    .line 1204
    if-eqz v2, :cond_25

    if-eq v2, v1, :cond_25

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1205
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->tryMatchData()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1206
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue;->unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V

    .line 1207
    const/4 v3, 0x1

    return v3

    .line 1210
    :cond_22
    if-nez v2, :cond_25

    .line 1211
    goto :goto_2f

    .line 1212
    :cond_25
    move-object v0, v1

    .line 1213
    iget-object v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v3

    if-ne v3, v0, :cond_2e

    .line 1214
    const/4 v0, 0x0

    .line 1215
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1217
    .end local v2    # "item":Ljava/lang/Object;
    :cond_2e
    goto :goto_5

    .line 1219
    .end local v0    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v1    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1554
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1557
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1558
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_b

    .line 1559
    nop

    .line 1563
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 1561
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->offer(Ljava/lang/Object;)Z

    .line 1562
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_3
.end method

.method private static greylist-max-o spinsFor(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)I
    .registers 3
    .param p0, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p1, "haveData"    # Z

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

.method private greylist-max-o sweep()V
    .registers 5

    .line 1182
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-eqz v0, :cond_20

    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v2, v1

    .local v2, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v1, :cond_20

    .line 1183
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1185
    move-object v0, v2

    goto :goto_2

    .line 1186
    :cond_11
    iget-object v1, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v1

    .local v3, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v1, :cond_17

    .line 1187
    goto :goto_20

    .line 1188
    :cond_17
    if-ne v2, v3, :cond_1c

    .line 1190
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_2

    .line 1192
    :cond_1c
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    goto :goto_2

    .line 1194
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v3    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_20
    :goto_20
    return-void
.end method

.method private greylist-max-o toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .param p1, "a"    # [Ljava/lang/Object;

    .line 837
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    move-object v0, p1

    .line 839
    .local v0, "x":[Ljava/lang/Object;
    :goto_1
    const/4 v1, 0x0

    .line 840
    .local v1, "size":I
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_4
    if-eqz v2, :cond_32

    .line 841
    iget-object v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 842
    .local v3, "item":Ljava/lang/Object;
    iget-boolean v4, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v4, :cond_27

    .line 843
    if-eqz v3, :cond_2a

    if-eq v3, v2, :cond_2a

    .line 844
    if-nez v0, :cond_16

    .line 845
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    goto :goto_21

    .line 846
    :cond_16
    array-length v4, v0

    if-ne v1, v4, :cond_21

    .line 847
    add-int/lit8 v4, v1, 0x4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 848
    :cond_21
    :goto_21
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "size":I
    .local v4, "size":I
    aput-object v3, v0, v1

    move v1, v4

    goto :goto_2a

    .line 850
    .end local v4    # "size":I
    .restart local v1    # "size":I
    :cond_27
    if-nez v3, :cond_2a

    .line 851
    goto :goto_32

    .line 852
    :cond_2a
    :goto_2a
    iget-object v4, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v5, v4

    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v5, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v2, v4, :cond_30

    .line 853
    goto :goto_1

    .line 854
    .end local v3    # "item":Ljava/lang/Object;
    :cond_30
    move-object v2, v5

    goto :goto_4

    .line 855
    .end local v5    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_32
    :goto_32
    const/4 v2, 0x0

    if-nez v0, :cond_38

    .line 856
    new-array v2, v2, [Ljava/lang/Object;

    return-object v2

    .line 857
    :cond_38
    if-eqz p1, :cond_49

    array-length v3, p1

    if-gt v1, v3, :cond_49

    .line 858
    if-eq p1, v0, :cond_42

    .line 859
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 860
    :cond_42
    array-length v2, p1

    if-ge v1, v2, :cond_48

    .line 861
    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 862
    :cond_48
    return-object p1

    .line 864
    :cond_49
    array-length v2, v0

    if-ne v1, v2, :cond_4e

    move-object v2, v0

    goto :goto_52

    :cond_4e
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :goto_52
    return-object v2
.end method

.method private greylist-max-o tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .registers 9
    .param p1, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "haveData"    # Z

    .line 656
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "t":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v1, v0

    .line 658
    .local v1, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_3
    const/4 v2, 0x0

    if-nez v1, :cond_12

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v3

    if-nez v3, :cond_12

    .line 659
    invoke-direct {p0, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 660
    return-object p1

    .line 662
    :cond_12
    invoke-virtual {v1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;->cannotPrecede(Z)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 663
    return-object v2

    .line 664
    :cond_19
    iget-object v3, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v4, v3

    .local v4, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v3, :cond_2d

    .line 665
    if-eq v1, v0, :cond_28

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v5, v3

    .local v5, "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v0, v3, :cond_28

    move-object v0, v5

    move-object v2, v5

    goto :goto_2b

    .line 666
    .end local v5    # "u":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_28
    if-eq v1, v4, :cond_2b

    move-object v2, v4

    :cond_2b
    :goto_2b
    move-object v1, v2

    goto :goto_35

    .line 667
    :cond_2d
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 668
    iget-object v1, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 678
    .end local v4    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_35
    :goto_35
    goto :goto_3

    .line 670
    .restart local v4    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_36
    if-eq v1, v0, :cond_54

    .line 671
    :goto_38
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v2, v0, :cond_42

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->casTail(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v2

    if-nez v2, :cond_54

    :cond_42
    iget-object v2, p0, Ljava/util/concurrent/LinkedTransferQueue;->tail:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v0, v2

    if-eqz v2, :cond_54

    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object p1, v2

    if-eqz v2, :cond_54

    iget-object v2, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object p1, v2

    if-eqz v2, :cond_54

    if-eq p1, v0, :cond_54

    .line 674
    goto :goto_38

    .line 676
    :cond_54
    return-object v1
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1538
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1539
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1540
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_7

    .line 1542
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1543
    return-void
.end method

.method private greylist-max-o xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;
    .registers 19
    .param p2, "haveData"    # Z
    .param p3, "how"    # I
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZIJ)TE;"
        }
    .end annotation

    .line 600
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object v7, p0

    move-object v8, p1

    move v9, p2

    move/from16 v10, p3

    if-eqz v9, :cond_10

    if-eqz v8, :cond_a

    goto :goto_10

    .line 601
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 602
    :cond_10
    :goto_10
    const/4 v0, 0x0

    .line 607
    .local v0, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_11
    iget-object v1, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v1, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_14
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6a

    .line 608
    iget-boolean v5, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 609
    .local v5, "isData":Z
    iget-object v6, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 610
    .local v6, "item":Ljava/lang/Object;
    if-eq v6, v2, :cond_5f

    if-eqz v6, :cond_22

    move v11, v4

    goto :goto_23

    :cond_22
    move v11, v3

    :goto_23
    if-ne v11, v5, :cond_5f

    .line 611
    if-ne v5, v9, :cond_28

    .line 612
    goto :goto_6a

    .line 613
    :cond_28
    invoke-virtual {v2, v6, p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 614
    move-object v3, v2

    .local v3, "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2f
    if-eq v3, v1, :cond_58

    .line 615
    iget-object v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 616
    .local v4, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v11, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v11, v1, :cond_46

    if-nez v4, :cond_3b

    move-object v11, v3

    goto :goto_3c

    :cond_3b
    move-object v11, v4

    :goto_3c
    invoke-direct {p0, v1, v11}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v11

    if-eqz v11, :cond_46

    .line 617
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    .line 618
    goto :goto_58

    .line 620
    :cond_46
    iget-object v11, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v11

    if-eqz v11, :cond_58

    iget-object v11, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v11

    if-eqz v11, :cond_58

    .line 621
    invoke-virtual {v3}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v11

    if-nez v11, :cond_57

    .line 622
    goto :goto_58

    .line 623
    .end local v4    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_57
    goto :goto_2f

    .line 624
    .end local v3    # "q":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_58
    :goto_58
    iget-object v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 625
    move-object v3, v6

    .line 626
    .local v3, "itemE":Ljava/lang/Object;, "TE;"
    return-object v3

    .line 629
    .end local v3    # "itemE":Ljava/lang/Object;, "TE;"
    :cond_5f
    iget-object v3, v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 630
    .local v3, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v2, v3, :cond_65

    move-object v4, v3

    goto :goto_68

    :cond_65
    iget-object v4, v7, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v1, v4

    :goto_68
    move-object v2, v4

    .line 631
    .end local v3    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v5    # "isData":Z
    .end local v6    # "item":Ljava/lang/Object;
    goto :goto_14

    .line 633
    .end local v1    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_6a
    :goto_6a
    if-eqz v10, :cond_92

    .line 634
    if-nez v0, :cond_76

    .line 635
    new-instance v1, Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-direct {v1, p1, p2}, Ljava/util/concurrent/LinkedTransferQueue$Node;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    move-object v11, v0

    goto :goto_77

    .line 634
    :cond_76
    move-object v11, v0

    .line 636
    .end local v0    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v11, "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_77
    invoke-direct {p0, v11, p2}, Ljava/util/concurrent/LinkedTransferQueue;->tryAppend(Ljava/util/concurrent/LinkedTransferQueue$Node;Z)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v12

    .line 637
    .local v12, "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v12, :cond_7f

    .line 638
    move-object v0, v11

    goto :goto_11

    .line 639
    :cond_7f
    if-eq v10, v4, :cond_91

    .line 640
    const/4 v0, 0x3

    if-ne v10, v0, :cond_85

    goto :goto_86

    :cond_85
    move v4, v3

    :goto_86
    move-object v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, p1

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/LinkedTransferQueue;->awaitMatch(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 639
    :cond_91
    move-object v0, v11

    .line 642
    .end local v11    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v12    # "pred":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .restart local v0    # "s":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_92
    return-object v8
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1288
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1289
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1502
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    if-eqz p1, :cond_20

    .line 1503
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_4
    if-eqz v0, :cond_20

    .line 1504
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1505
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_18

    .line 1506
    if-eqz v1, :cond_1b

    if-eq v1, v0, :cond_1b

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1507
    const/4 v2, 0x1

    return v2

    .line 1509
    :cond_18
    if-nez v1, :cond_1b

    .line 1510
    goto :goto_20

    .line 1503
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1b
    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    goto :goto_4

    .line 1513
    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 1371
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_19

    .line 1373
    if-eq p1, p0, :cond_13

    .line 1375
    const/4 v0, 0x0

    .line 1376
    .local v0, "n":I
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_12

    .line 1377
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1378
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1380
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_12
    return v0

    .line 1374
    .end local v0    # "n":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1372
    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api drainTo(Ljava/util/Collection;I)I
    .registers 6
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 1388
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-eqz p1, :cond_1b

    .line 1390
    if-eq p1, p0, :cond_15

    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, "n":I
    :goto_5
    if-ge v0, p2, :cond_14

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-eqz v1, :cond_14

    .line 1394
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1397
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_14
    return v0

    .line 1391
    .end local v0    # "n":I
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1389
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method final greylist-max-o firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;
    .registers 5

    .line 770
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-eqz v0, :cond_1a

    .line 771
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 772
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_f

    .line 773
    if-eqz v1, :cond_12

    if-eq v1, v0, :cond_12

    .line 774
    return-object v0

    .line 776
    :cond_f
    if-nez v1, :cond_12

    .line 777
    goto :goto_1a

    .line 778
    :cond_12
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v2

    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v0, v2, :cond_18

    .line 779
    goto :goto_0

    .line 780
    .end local v1    # "item":Ljava/lang/Object;
    :cond_18
    move-object v0, v3

    goto :goto_2

    .line 781
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getWaitingConsumerCount()I
    .registers 2

    .line 1475
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasWaitingConsumer()Z
    .registers 5

    .line 1443
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-eqz v0, :cond_1b

    .line 1444
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1445
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_f

    .line 1446
    if-eqz v1, :cond_13

    if-eq v1, v0, :cond_13

    .line 1447
    goto :goto_1b

    .line 1449
    :cond_f
    if-nez v1, :cond_13

    .line 1450
    const/4 v2, 0x1

    return v2

    .line 1451
    :cond_13
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v2

    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v0, v2, :cond_19

    .line 1452
    goto :goto_0

    .line 1453
    .end local v1    # "item":Ljava/lang/Object;
    :cond_19
    move-object v0, v3

    goto :goto_2

    .line 1454
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1438
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedTransferQueue;->firstDataNode()Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

    .line 1410
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$Itr;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1275
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1276
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
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

    .line 1263
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1264
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1415
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v0, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_2
    if-eqz v0, :cond_1b

    .line 1416
    iget-object v1, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 1417
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v2, :cond_10

    .line 1418
    if-eqz v1, :cond_13

    if-eq v1, v0, :cond_13

    .line 1419
    move-object v2, v1

    .line 1420
    .local v2, "e":Ljava/lang/Object;, "TE;"
    return-object v2

    .line 1423
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_10
    if-nez v1, :cond_13

    .line 1424
    goto :goto_1b

    .line 1425
    :cond_13
    iget-object v2, v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v3, v2

    .end local v0    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v0, v2, :cond_19

    .line 1426
    goto :goto_0

    .line 1427
    .end local v1    # "item":Ljava/lang/Object;
    :cond_19
    move-object v0, v3

    goto :goto_2

    .line 1428
    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1363
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
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

    .line 1356
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1357
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1b

    .line 1359
    :cond_15
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 1358
    :cond_1b
    :goto_1b
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1249
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    .line 1250
    return-void
.end method

.method public whitelist test-api remainingCapacity()I
    .registers 2

    .line 1525
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1490
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->findAndRemove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1471
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->countOfMode(Z)I

    move-result v0

    return v0
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

    .line 1122
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/LinkedTransferQueue$LTQSpliterator;-><init>(Ljava/util/concurrent/LinkedTransferQueue;)V

    return-object v0
.end method

.method final greylist-max-o succ(Ljava/util/concurrent/LinkedTransferQueue$Node;)Ljava/util/concurrent/LinkedTransferQueue$Node;
    .registers 4
    .param p1, "p"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 759
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 760
    .local v0, "next":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne p1, v0, :cond_7

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    goto :goto_8

    :cond_7
    move-object v1, v0

    :goto_8
    return-object v1
.end method

.method public whitelist test-api take()Ljava/lang/Object;
    .registers 7
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

    .line 1348
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    .line 1349
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_d

    .line 1350
    return-object v0

    .line 1351
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1352
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 882
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 922
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_7

    .line 923
    invoke-direct {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->toArrayInternal([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 922
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 807
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    .line 809
    .local v0, "a":[Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    .line 810
    .local v1, "charLength":I
    const/4 v2, 0x0

    .line 811
    .local v2, "size":I
    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .local v3, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :goto_5
    if-eqz v3, :cond_3d

    .line 812
    iget-object v4, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 813
    .local v4, "item":Ljava/lang/Object;
    iget-boolean v5, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-eqz v5, :cond_32

    .line 814
    if-eqz v4, :cond_35

    if-eq v4, v3, :cond_35

    .line 815
    if-nez v0, :cond_17

    .line 816
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/String;

    goto :goto_23

    .line 817
    :cond_17
    array-length v5, v0

    if-ne v2, v5, :cond_23

    .line 818
    mul-int/lit8 v5, v2, 0x2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    .line 819
    :cond_23
    :goto_23
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, "s":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "size":I
    .local v6, "size":I
    aput-object v5, v0, v2

    .line 821
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 822
    .end local v5    # "s":Ljava/lang/String;
    move v2, v6

    goto :goto_35

    .line 823
    .end local v6    # "size":I
    .restart local v2    # "size":I
    :cond_32
    if-nez v4, :cond_35

    .line 824
    goto :goto_3d

    .line 825
    :cond_35
    :goto_35
    iget-object v5, v3, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    move-object v6, v5

    .end local v3    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .local v6, "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-ne v3, v5, :cond_3b

    .line 826
    goto :goto_1

    .line 827
    .end local v4    # "item":Ljava/lang/Object;
    :cond_3b
    move-object v3, v6

    goto :goto_5

    .line 829
    .end local v6    # "p":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_3d
    :goto_3d
    if-nez v2, :cond_42

    .line 830
    const-string v3, "[]"

    return-object v3

    .line 832
    :cond_42
    invoke-static {v0, v2, v1}, Ljava/util/concurrent/Helpers;->toString([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api transfer(Ljava/lang/Object;)V
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

    .line 1318
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1322
    return-void

    .line 1319
    :cond_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1320
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryTransfer(Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1303
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api tryTransfer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
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

    .line 1340
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    const/4 v2, 0x1

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/LinkedTransferQueue;->xfer(Ljava/lang/Object;ZIJ)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1341
    const/4 v0, 0x1

    return v0

    .line 1342
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1343
    const/4 v0, 0x0

    return v0

    .line 1344
    :cond_18
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final greylist-max-o unsplice(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)V
    .registers 7
    .param p1, "pred"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "s"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1136
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    .line 1144
    if-eqz p1, :cond_62

    if-eq p1, p2, :cond_62

    iget-object v0, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-ne v0, p2, :cond_62

    .line 1145
    iget-object v0, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1146
    .local v0, "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eqz v0, :cond_1d

    if-eq v0, p2, :cond_62

    .line 1147
    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1149
    :cond_1d
    :goto_1d
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->head:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1150
    .local v1, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-eq v1, p1, :cond_61

    if-eq v1, p2, :cond_61

    if-nez v1, :cond_26

    goto :goto_61

    .line 1152
    :cond_26
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->isMatched()Z

    move-result v2

    if-nez v2, :cond_50

    .line 1153
    nop

    .line 1160
    .end local v1    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    iget-object v1, p1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v1, p1, :cond_62

    iget-object v1, p2, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    if-eq v1, p2, :cond_62

    .line 1162
    :goto_35
    iget v1, p0, Ljava/util/concurrent/LinkedTransferQueue;->sweepVotes:I

    .line 1163
    .local v1, "v":I
    const/16 v2, 0x20

    if-ge v1, v2, :cond_44

    .line 1164
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1165
    goto :goto_62

    .line 1167
    :cond_44
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/LinkedTransferQueue;->casSweepVotes(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1168
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;->sweep()V

    .line 1169
    goto :goto_62

    .line 1171
    .end local v1    # "v":I
    :cond_4f
    goto :goto_35

    .line 1154
    .local v1, "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_50
    iget-object v2, v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->next:Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 1155
    .local v2, "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    if-nez v2, :cond_55

    .line 1156
    return-void

    .line 1157
    :cond_55
    if-eq v2, v1, :cond_60

    invoke-direct {p0, v1, v2}, Ljava/util/concurrent/LinkedTransferQueue;->casHead(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 1158
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->forgetNext()V

    .line 1159
    .end local v1    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v2    # "hn":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_60
    goto :goto_1d

    .line 1151
    .restart local v1    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_61
    :goto_61
    return-void

    .line 1175
    .end local v0    # "n":Ljava/util/concurrent/LinkedTransferQueue$Node;
    .end local v1    # "h":Ljava/util/concurrent/LinkedTransferQueue$Node;
    :cond_62
    :goto_62
    return-void
.end method
