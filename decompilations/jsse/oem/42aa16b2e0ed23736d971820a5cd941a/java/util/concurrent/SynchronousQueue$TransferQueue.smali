.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/SynchronousQueue$Transferer<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CLEANME:J

.field private static final greylist-max-o HEAD:J

.field private static final greylist-max-o TAIL:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field volatile transient greylist-max-o cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient greylist-max-o head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient greylist-max-o tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 820
    const-class v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    .line 826
    :try_start_8
    const-string v2, "head"

    .line 827
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->HEAD:J

    .line 828
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    const-string v2, "tail"

    .line 829
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->TAIL:J

    .line 830
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    const-string v2, "cleanMe"

    .line 831
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->CLEANME:J
    :try_end_30
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_30} :catch_32

    .line 834
    nop

    .line 835
    return-void

    .line 832
    :catch_32
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>()V
    .registers 4

    .line 605
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    .line 606
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 607
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 608
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 609
    return-void
.end method


# virtual methods
.method greylist-max-o advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 10
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 616
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne p1, v0, :cond_13

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->HEAD:J

    .line 617
    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 618
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 619
    :cond_13
    return-void
.end method

.method greylist-max-o advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 10
    .param p1, "t"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nt"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 625
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_e

    .line 626
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->TAIL:J

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 627
    :cond_e
    return-void
.end method

.method greylist-max-o awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 15
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p3, "timed"    # Z
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;",
            "TE;ZJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 737
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const-wide/16 v0, 0x0

    if-eqz p3, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, p4

    goto :goto_b

    :cond_a
    move-wide v2, v0

    .line 738
    .local v2, "deadline":J
    :goto_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 739
    .local v4, "w":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    iget-object v5, v5, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v5, p1, :cond_1d

    .line 740
    if-eqz p3, :cond_1a

    sget v5, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    goto :goto_1e

    :cond_1a
    sget v5, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    goto :goto_1e

    .line 741
    :cond_1d
    const/4 v5, 0x0

    :goto_1e
    nop

    .line 743
    .local v5, "spins":I
    :goto_1f
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 744
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    .line 745
    :cond_28
    iget-object v6, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 746
    .local v6, "x":Ljava/lang/Object;
    if-eq v6, p2, :cond_2d

    .line 747
    return-object v6

    .line 748
    :cond_2d
    if-eqz p3, :cond_3d

    .line 749
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long p4, v2, v7

    .line 750
    cmp-long v7, p4, v0

    if-gtz v7, :cond_3d

    .line 751
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    .line 752
    goto :goto_1f

    .line 755
    :cond_3d
    if-lez v5, :cond_42

    .line 756
    add-int/lit8 v5, v5, -0x1

    goto :goto_58

    .line 757
    :cond_42
    iget-object v7, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    if-nez v7, :cond_49

    .line 758
    iput-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    goto :goto_58

    .line 759
    :cond_49
    if-nez p3, :cond_4f

    .line 760
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_58

    .line 761
    :cond_4f
    const-wide/16 v7, 0x3e8

    cmp-long v7, p4, v7

    if-lez v7, :cond_58

    .line 762
    invoke-static {p0, p4, p5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 763
    .end local v6    # "x":Ljava/lang/Object;
    :cond_58
    :goto_58
    goto :goto_1f
.end method

.method greylist-max-o casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .registers 10
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 633
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_13

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->CLEANME:J

    .line 634
    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 633
    :goto_14
    return v0
.end method

.method greylist-max-o clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 12
    .param p1, "pred"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 770
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 779
    :goto_3
    iget-object v1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v1, p2, :cond_65

    .line 780
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 781
    .local v1, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 782
    .local v2, "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 783
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 784
    goto :goto_3

    .line 786
    :cond_17
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 787
    .local v3, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v3, v1, :cond_1c

    .line 788
    return-void

    .line 789
    :cond_1c
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 790
    .local v4, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-eq v3, v5, :cond_23

    .line 791
    goto :goto_3

    .line 792
    :cond_23
    if-eqz v4, :cond_29

    .line 793
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 794
    goto :goto_3

    .line 796
    :cond_29
    if-eq p2, v3, :cond_36

    .line 797
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 798
    .local v5, "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_35

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 799
    :cond_35
    return-void

    .line 801
    .end local v5    # "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_36
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 802
    .local v5, "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v5, :cond_5c

    .line 803
    iget-object v6, v5, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 805
    .local v6, "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v6, :cond_55

    if-eq v6, v5, :cond_55

    .line 807
    invoke-virtual {v6}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_55

    if-eq v6, v3, :cond_58

    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    move-object v8, v7

    .local v8, "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v7, :cond_58

    if-eq v8, v6, :cond_58

    .line 811
    invoke-virtual {v5, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 812
    .end local v8    # "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_55
    invoke-virtual {p0, v5, v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    .line 813
    :cond_58
    if-ne v5, p1, :cond_5b

    .line 814
    return-void

    .line 813
    .end local v6    # "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5b
    goto :goto_63

    .line 815
    :cond_5c
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 816
    return-void

    .line 815
    :cond_63
    :goto_63
    nop

    .line 817
    .end local v1    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v2    # "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v3    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v5    # "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    goto :goto_3

    .line 818
    :cond_65
    return-void
.end method

.method greylist-max-o transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 19
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    .line 667
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    move-object v6, p0

    move-object v7, p1

    const/4 v0, 0x0

    .line 668
    .local v0, "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v7, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    move v8, v3

    .line 671
    .local v8, "isData":Z
    :cond_b
    :goto_b
    iget-object v9, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 672
    .local v9, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v10, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 673
    .local v10, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_b

    if-nez v10, :cond_14

    .line 674
    goto :goto_b

    .line 676
    :cond_14
    if-eq v10, v9, :cond_4c

    iget-boolean v3, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    if-ne v3, v8, :cond_1b

    goto :goto_4c

    .line 707
    :cond_1b
    iget-object v3, v10, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 708
    .local v3, "m":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v4, :cond_b

    if-eqz v3, :cond_b

    iget-object v4, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-eq v10, v4, :cond_28

    .line 709
    goto :goto_b

    .line 711
    :cond_28
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 712
    .local v4, "x":Ljava/lang/Object;
    if-eqz v4, :cond_2e

    move v5, v1

    goto :goto_2f

    :cond_2e
    move v5, v2

    :goto_2f
    if-eq v8, v5, :cond_48

    if-eq v4, v3, :cond_48

    .line 714
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_48

    .line 719
    :cond_3a
    invoke-virtual {p0, v10, v3}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 720
    iget-object v1, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 721
    if-eqz v4, :cond_46

    move-object v1, v4

    goto :goto_47

    :cond_46
    move-object v1, v7

    :goto_47
    return-object v1

    .line 715
    :cond_48
    :goto_48
    invoke-virtual {p0, v10, v3}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 716
    goto :goto_b

    .line 677
    .end local v3    # "m":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4    # "x":Ljava/lang/Object;
    :cond_4c
    :goto_4c
    iget-object v11, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 678
    .local v11, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v3, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-eq v9, v3, :cond_53

    .line 679
    goto :goto_b

    .line 680
    :cond_53
    if-eqz v11, :cond_59

    .line 681
    invoke-virtual {p0, v9, v11}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 682
    goto :goto_b

    .line 684
    :cond_59
    const/4 v12, 0x0

    if-eqz p2, :cond_63

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gtz v3, :cond_63

    .line 685
    return-object v12

    .line 686
    :cond_63
    if-nez v0, :cond_6d

    .line 687
    new-instance v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-direct {v3, p1, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v3

    move-object v13, v0

    goto :goto_6e

    .line 686
    :cond_6d
    move-object v13, v0

    .line 688
    .end local v0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .local v13, "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :goto_6e
    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 689
    move-object v0, v13

    goto :goto_b

    .line 691
    :cond_76
    invoke-virtual {p0, v9, v13}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 692
    move-object v0, p0

    move-object v1, v13

    move-object v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v0

    .line 693
    .local v0, "x":Ljava/lang/Object;
    if-ne v0, v13, :cond_8a

    .line 694
    invoke-virtual {p0, v9, v13}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 695
    return-object v12

    .line 698
    :cond_8a
    invoke-virtual {v13}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    move-result v1

    if-nez v1, :cond_99

    .line 699
    invoke-virtual {p0, v9, v13}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 700
    if-eqz v0, :cond_97

    .line 701
    iput-object v13, v13, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 702
    :cond_97
    iput-object v12, v13, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 704
    :cond_99
    if-eqz v0, :cond_9d

    move-object v1, v0

    goto :goto_9e

    :cond_9d
    move-object v1, v7

    :goto_9e
    return-object v1
.end method
