.class final Ljava/util/concurrent/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final greylist-max-o ITEM:J

.field private static final greylist-max-o NEXT:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o WAITER:J

.field private static final whitelist serialVersionUID:J = -0x2ed9e3cc4e71ccaaL


# instance fields
.field final greylist-max-o isData:Z

.field volatile greylist-max-o item:Ljava/lang/Object;

.field volatile greylist-max-o next:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field volatile greylist-max-o waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 541
    const-class v0, Ljava/util/concurrent/LinkedTransferQueue$Node;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    .line 547
    :try_start_8
    const-string v2, "item"

    .line 548
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    .line 549
    const-string v2, "next"

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    .line 551
    const-string v2, "waiter"

    .line 552
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->WAITER:J
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_2c} :catch_2e

    .line 555
    nop

    .line 556
    return-void

    .line 553
    :catch_2e
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 473
    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 474
    return-void
.end method


# virtual methods
.method final greylist-max-o cannotPrecede(Z)Z
    .registers 7
    .param p1, "haveData"    # Z

    .line 520
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 522
    .local v0, "d":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_13

    iget-object v3, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "x":Ljava/lang/Object;
    if-eq v3, p0, :cond_13

    if-eqz v4, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    if-ne v3, v0, :cond_13

    goto :goto_14

    .end local v4    # "x":Ljava/lang/Object;
    :cond_13
    move v1, v2

    :goto_14
    return v1
.end method

.method final greylist-max-o casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .line 464
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .line 459
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o forgetContents()V
    .registers 5

    .line 494
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->WAITER:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    return-void
.end method

.method final greylist-max-o forgetNext()V
    .registers 4

    .line 481
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    invoke-virtual {v0, p0, v1, v2, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 482
    return-void
.end method

.method final greylist-max-o isMatched()Z
    .registers 6

    .line 503
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 504
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_f

    if-nez v0, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v3, v4, :cond_10

    :cond_f
    move v1, v2

    :cond_10
    return v1
.end method

.method final greylist-max-o isUnmatchedRequest()Z
    .registers 2

    .line 511
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method final greylist-max-o tryMatchData()Z
    .registers 3

    .line 530
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 531
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 532
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 533
    const/4 v1, 0x1

    return v1

    .line 535
    :cond_14
    const/4 v1, 0x0

    return v1
.end method
