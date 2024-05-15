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
        "Ljava/util/concurrent/SynchronousQueue$Transferer",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final CLEANME:J

.field private static final HEAD:J

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field volatile transient cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 820
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    .line 826
    :try_start_6
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    .line 827
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    const-string/jumbo v3, "head"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 826
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->HEAD:J

    .line 828
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    .line 829
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    const-string/jumbo v3, "tail"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 828
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->TAIL:J

    .line 830
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    .line 831
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    const-string/jumbo v3, "cleanMe"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 830
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->CLEANME:J
    :try_end_39
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_39} :catch_3a

    .line 525
    return-void

    .line 832
    :catch_3a
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 4

    .prologue
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
.method advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 9
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .line 616
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne p1, v0, :cond_13

    .line 617
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->HEAD:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 616
    if-eqz v0, :cond_13

    .line 618
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 619
    :cond_13
    return-void
.end method

.method advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 9
    .param p1, "t"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nt"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .line 625
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_e

    .line 626
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->TAIL:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 627
    :cond_e
    return-void
.end method

.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 14
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

    .prologue
    .line 737
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-eqz p3, :cond_24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v0, v6, p4

    .line 738
    .local v0, "deadline":J
    :goto_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 739
    .local v3, "w":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    iget-object v5, v5, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v5, p1, :cond_2a

    .line 740
    if-eqz p3, :cond_27

    sget v2, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    .line 743
    .local v2, "spins":I
    :cond_16
    :goto_16
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 744
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    .line 745
    :cond_1f
    iget-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 746
    .local v4, "x":Ljava/lang/Object;
    if-eq v4, p2, :cond_2c

    .line 747
    return-object v4

    .line 737
    .end local v0    # "deadline":J
    .end local v2    # "spins":I
    .end local v3    # "w":Ljava/lang/Thread;
    .end local v4    # "x":Ljava/lang/Object;
    :cond_24
    const-wide/16 v0, 0x0

    .restart local v0    # "deadline":J
    goto :goto_8

    .line 740
    .restart local v3    # "w":Ljava/lang/Thread;
    :cond_27
    sget v2, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    .restart local v2    # "spins":I
    goto :goto_16

    .line 741
    .end local v2    # "spins":I
    :cond_2a
    const/4 v2, 0x0

    .restart local v2    # "spins":I
    goto :goto_16

    .line 748
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_2c
    if-eqz p3, :cond_3e

    .line 749
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long p4, v0, v6

    .line 750
    const-wide/16 v6, 0x0

    cmp-long v5, p4, v6

    if-gtz v5, :cond_3e

    .line 751
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    goto :goto_16

    .line 755
    :cond_3e
    if-lez v2, :cond_43

    .line 756
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 757
    :cond_43
    iget-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    if-nez v5, :cond_4a

    .line 758
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    goto :goto_16

    .line 759
    :cond_4a
    if-nez p3, :cond_50

    .line 760
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_16

    .line 761
    :cond_50
    const-wide/16 v6, 0x3e8

    cmp-long v5, p4, v6

    if-lez v5, :cond_16

    .line 762
    invoke-static {p0, p4, p5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_16
.end method

.method casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .line 633
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_10

    .line 634
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->CLEANME:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 633
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .registers 13
    .param p1, "pred"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    const/4 v9, 0x0

    .line 770
    iput-object v9, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 779
    :cond_3
    :goto_3
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v8, p2, :cond_63

    .line 780
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 781
    .local v3, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 782
    .local v4, "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 783
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_3

    .line 786
    :cond_17
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 787
    .local v6, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v6, v3, :cond_1c

    .line 788
    return-void

    .line 789
    :cond_1c
    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 790
    .local v7, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v8, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v8, :cond_3

    .line 792
    if-eqz v7, :cond_28

    .line 793
    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_3

    .line 796
    :cond_28
    if-eq p2, v6, :cond_35

    .line 797
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 798
    .local v5, "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_34

    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 799
    :cond_34
    return-void

    .line 801
    .end local v5    # "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_35
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 802
    .local v2, "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_5c

    .line 803
    iget-object v0, v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 805
    .local v0, "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v0, :cond_3f

    .line 806
    if-ne v0, v2, :cond_45

    .line 812
    :cond_3f
    :goto_3f
    invoke-virtual {p0, v2, v9}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    .line 813
    :cond_42
    if-ne v2, p1, :cond_3

    .line 814
    return-void

    .line 807
    :cond_45
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 805
    if-nez v8, :cond_3f

    .line 808
    if-eq v0, v6, :cond_42

    .line 809
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .local v1, "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v1, :cond_42

    .line 810
    if-eq v1, v0, :cond_42

    .line 811
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    .line 805
    if-eqz v8, :cond_42

    goto :goto_3f

    .line 815
    .end local v0    # "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v1    # "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5c
    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 816
    return-void

    .line 818
    .end local v2    # "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v3    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4    # "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v6    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_63
    return-void
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 18
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue$TransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 668
    .local v1, "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz p1, :cond_1e

    const/4 v7, 0x1

    .line 671
    .end local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .local v7, "isData":Z
    :cond_4
    :goto_4
    iget-object v9, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 672
    .local v9, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 673
    .local v6, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    .line 676
    if-eq v6, v9, :cond_12

    iget-boolean v0, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    if-ne v0, v7, :cond_60

    .line 677
    :cond_12
    iget-object v10, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 678
    .local v10, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_4

    .line 680
    if-eqz v10, :cond_20

    .line 681
    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_4

    .line 668
    .end local v6    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7    # "isData":Z
    .end local v9    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_1e
    const/4 v7, 0x0

    .restart local v7    # "isData":Z
    goto :goto_4

    .line 684
    .end local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v6    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v9    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_20
    if-eqz p2, :cond_2a

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gtz v0, :cond_2a

    .line 685
    const/4 v0, 0x0

    return-object v0

    .line 686
    :cond_2a
    if-nez v1, :cond_31

    .line 687
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-direct {v1, p1, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    .line 688
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 691
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    .line 692
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v11

    .line 693
    .local v11, "x":Ljava/lang/Object;
    if-ne v11, v1, :cond_4b

    .line 694
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 695
    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_4b
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 699
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 700
    if-eqz v11, :cond_58

    .line 701
    iput-object v1, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 702
    :cond_58
    const/4 v0, 0x0

    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    .line 704
    :cond_5b
    if-eqz v11, :cond_5e

    .end local v11    # "x":Ljava/lang/Object;
    :goto_5d
    return-object v11

    .restart local v11    # "x":Ljava/lang/Object;
    :cond_5e
    move-object v11, p1

    goto :goto_5d

    .line 707
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v11    # "x":Ljava/lang/Object;
    :cond_60
    iget-object v8, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 708
    .local v8, "m":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v9, v0, :cond_4

    if-eqz v8, :cond_4

    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v6, v0, :cond_4

    .line 711
    iget-object v11, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 712
    .restart local v11    # "x":Ljava/lang/Object;
    if-eqz v11, :cond_79

    const/4 v0, 0x1

    :goto_71
    if-eq v7, v0, :cond_75

    .line 713
    if-ne v11, v8, :cond_7b

    .line 715
    :cond_75
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    goto :goto_4

    .line 712
    :cond_79
    const/4 v0, 0x0

    goto :goto_71

    .line 714
    :cond_7b
    invoke-virtual {v8, v11, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 712
    if-nez v0, :cond_75

    .line 719
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    .line 720
    iget-object v0, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 721
    if-eqz v11, :cond_8e

    .end local v11    # "x":Ljava/lang/Object;
    :goto_8d
    return-object v11

    .restart local v11    # "x":Ljava/lang/Object;
    :cond_8e
    move-object v11, p1

    goto :goto_8d
.end method
