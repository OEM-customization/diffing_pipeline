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
.field private static final ITEM:J

.field private static final NEXT:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final WAITER:J

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 541
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    .line 547
    :try_start_6
    sget-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    .line 548
    const-class v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    const-string/jumbo v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 547
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    .line 549
    sget-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    .line 550
    const-class v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    const-string/jumbo v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 549
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    .line 551
    sget-object v1, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    .line 552
    const-class v2, Ljava/util/concurrent/LinkedTransferQueue$Node;

    const-string/jumbo v3, "waiter"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 551
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->WAITER:J
    :try_end_39
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_39} :catch_3a

    .line 451
    return-void

    .line 553
    :catch_3a
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 7
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 473
    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 474
    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .registers 7
    .param p1, "haveData"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 520
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    .line 522
    .local v0, "d":Z
    if-eq v0, p1, :cond_12

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .local v1, "x":Ljava/lang/Object;
    if-eq v1, p0, :cond_12

    if-eqz v1, :cond_10

    move v4, v2

    :goto_d
    if-ne v4, v0, :cond_12

    .end local v1    # "x":Ljava/lang/Object;
    :goto_f
    return v2

    .restart local v1    # "x":Ljava/lang/Object;
    :cond_10
    move v4, v3

    goto :goto_d

    .end local v1    # "x":Ljava/lang/Object;
    :cond_12
    move v2, v3

    goto :goto_f
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
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

.method final casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .registers 9
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    .prologue
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

.method final forgetContents()V
    .registers 5

    .prologue
    .line 494
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->ITEM:J

    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->WAITER:J

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 496
    return-void
.end method

.method final forgetNext()V
    .registers 5

    .prologue
    .line 481
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->NEXT:J

    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 482
    return-void
.end method

.method final isMatched()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 503
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 504
    .local v0, "x":Ljava/lang/Object;
    if-eq v0, p0, :cond_d

    if-nez v0, :cond_e

    move v1, v2

    :goto_9
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-ne v1, v4, :cond_10

    :cond_d
    :goto_d
    return v2

    :cond_e
    move v1, v3

    goto :goto_9

    :cond_10
    move v2, v3

    goto :goto_d
.end method

.method final isUnmatchedRequest()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 511
    iget-boolean v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method final tryMatchData()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    .line 531
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

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
