.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# static fields
.field private static final greylist-max-o ITEM:J

.field private static final greylist-max-o NEXT:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field final greylist-max-o isData:Z

.field volatile greylist-max-o item:Ljava/lang/Object;

.field volatile greylist-max-o next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile greylist-max-o waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 578
    const-class v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    .line 584
    :try_start_8
    const-string v2, "item"

    .line 585
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->ITEM:J

    .line 586
    const-string v2, "next"

    .line 587
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->NEXT:J
    :try_end_20
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_20} :catch_22

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catch_22
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;Z)V
    .registers 3
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    .line 544
    iput-boolean p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    .line 545
    return-void
.end method


# virtual methods
.method greylist-max-o casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    if-ne v0, p1, :cond_13

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->ITEM:J

    .line 554
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

    .line 553
    :goto_14
    return v0
.end method

.method greylist-max-o casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .registers 10
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    .line 548
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p1, :cond_13

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->NEXT:J

    .line 549
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

    .line 548
    :goto_14
    return v0
.end method

.method greylist-max-o isCancelled()Z
    .registers 2

    .line 565
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o isOffList()Z
    .registers 2

    .line 574
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o tryCancel(Ljava/lang/Object;)V
    .registers 8
    .param p1, "cmp"    # Ljava/lang/Object;

    .line 561
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->ITEM:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 562
    return-void
.end method
