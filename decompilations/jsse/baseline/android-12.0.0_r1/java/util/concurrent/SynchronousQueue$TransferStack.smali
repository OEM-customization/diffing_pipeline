.class final Ljava/util/concurrent/SynchronousQueue$TransferStack;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
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
.field static final greylist-max-o DATA:I = 0x1

.field static final greylist-max-o FULFILLING:I = 0x2

.field private static final greylist-max-o HEAD:J

.field static final greylist-max-o REQUEST:I

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field volatile greylist-max-o head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 512
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    .line 516
    :try_start_6
    const-class v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    const-string v2, "head"

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->HEAD:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 520
    nop

    .line 521
    return-void

    .line 518
    :catch_16
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 213
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    return-void
.end method

.method static greylist-max-o isFulfilling(I)Z
    .registers 2
    .param p0, "m"    # I

    .line 231
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static greylist-max-o snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .registers 5
    .param p0, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "next"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p3, "mode"    # I

    .line 318
    if-nez p0, :cond_8

    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-direct {v0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    .line 319
    :cond_8
    iput p3, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    .line 320
    iput-object p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 321
    return-object p0
.end method


# virtual methods
.method greylist-max-o awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .registers 15
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J

    .line 436
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, p3

    goto :goto_b

    :cond_a
    move-wide v2, v0

    .line 437
    .local v2, "deadline":J
    :goto_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 438
    .local v4, "w":Ljava/lang/Thread;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1e

    .line 439
    if-eqz p2, :cond_1b

    sget v5, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    goto :goto_1f

    :cond_1b
    sget v5, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    goto :goto_1f

    .line 440
    :cond_1e
    move v5, v6

    :goto_1f
    nop

    .line 442
    .local v5, "spins":I
    :goto_20
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 443
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    .line 444
    :cond_29
    iget-object v7, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 445
    .local v7, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v7, :cond_2e

    .line 446
    return-object v7

    .line 447
    :cond_2e
    if-eqz p2, :cond_3e

    .line 448
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long p3, v2, v8

    .line 449
    cmp-long v8, p3, v0

    if-gtz v8, :cond_3e

    .line 450
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    .line 451
    goto :goto_20

    .line 454
    :cond_3e
    if-lez v5, :cond_4c

    .line 455
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v8

    if-eqz v8, :cond_49

    add-int/lit8 v8, v5, -0x1

    goto :goto_4a

    :cond_49
    move v8, v6

    :goto_4a
    move v5, v8

    goto :goto_62

    .line 456
    :cond_4c
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    if-nez v8, :cond_53

    .line 457
    iput-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    goto :goto_62

    .line 458
    :cond_53
    if-nez p2, :cond_59

    .line 459
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_62

    .line 460
    :cond_59
    const-wide/16 v8, 0x3e8

    cmp-long v8, p3, v8

    if-lez v8, :cond_62

    .line 461
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 462
    .end local v7    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_62
    :goto_62
    goto :goto_20
.end method

.method greylist-max-o casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .registers 10
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 306
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_13

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferStack;->HEAD:J

    .line 307
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

    .line 306
    :goto_14
    return v0
.end method

.method greylist-max-o clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V
    .registers 6
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 478
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    .line 479
    iput-object v0, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    .line 492
    iget-object v0, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 493
    .local v0, "past":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 494
    iget-object v0, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 498
    :cond_11
    :goto_11
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v1, :cond_24

    if-eq v2, v0, :cond_24

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 499
    iget-object v1, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_11

    .line 502
    :cond_24
    :goto_24
    if-eqz v2, :cond_3a

    if-eq v2, v0, :cond_3a

    .line 503
    iget-object v1, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 504
    .local v1, "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v1, :cond_38

    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 505
    iget-object v3, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_39

    .line 507
    :cond_38
    move-object v2, v1

    .line 508
    .end local v1    # "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :goto_39
    goto :goto_24

    .line 509
    :cond_3a
    return-void
.end method

.method greylist-max-o shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .registers 4
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 470
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 471
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eq v0, p1, :cond_11

    if-eqz v0, :cond_11

    iget v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method greylist-max-o transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 12
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue$TransferStack<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 351
    .local v0, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez p1, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    :cond_5
    const/4 v1, 0x1

    .line 354
    .local v1, "mode":I
    :goto_6
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 355
    .local v2, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    const/4 v3, 0x0

    if-eqz v2, :cond_6b

    iget v4, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    if-ne v4, v1, :cond_10

    goto :goto_6b

    .line 371
    :cond_10
    iget v4, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    invoke-static {v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    move-result v4

    if-nez v4, :cond_53

    .line 372
    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 373
    iget-object v3, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto/16 :goto_ad

    .line 374
    :cond_25
    or-int/lit8 v4, v1, 0x2

    invoke-static {v0, p1, v2, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {p0, v2, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 376
    :goto_32
    iget-object v4, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 377
    .local v4, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v4, :cond_3c

    .line 378
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 379
    const/4 v0, 0x0

    .line 380
    goto/16 :goto_ad

    .line 382
    :cond_3c
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 383
    .local v5, "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v4, v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 384
    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 385
    if-nez v1, :cond_4c

    iget-object v3, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_4e

    :cond_4c
    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    :goto_4e
    return-object v3

    .line 387
    :cond_4f
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 388
    .end local v4    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v5    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    goto :goto_32

    .line 391
    :cond_53
    iget-object v4, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 392
    .restart local v4    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v4, :cond_5b

    .line 393
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_ad

    .line 395
    :cond_5b
    iget-object v3, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 396
    .local v3, "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v4, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 397
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_ad

    .line 399
    :cond_67
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_ad

    .line 356
    .end local v3    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v4    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_6b
    :goto_6b
    if-eqz p2, :cond_82

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gtz v4, :cond_82

    .line 357
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 358
    iget-object v3, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    goto :goto_ad

    .line 360
    :cond_81
    return-object v3

    .line 361
    :cond_82
    invoke-static {v0, p1, v2, v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {p0, v2, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 362
    invoke-virtual {p0, v0, p2, p3, p4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-result-object v4

    .line 363
    .restart local v4    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-ne v4, v0, :cond_97

    .line 364
    invoke-virtual {p0, v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V

    .line 365
    return-object v3

    .line 367
    :cond_97
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    move-object v2, v3

    if-eqz v3, :cond_a5

    iget-object v3, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v3, v0, :cond_a5

    .line 368
    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    .line 369
    :cond_a5
    if-nez v1, :cond_aa

    iget-object v3, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    goto :goto_ac

    :cond_aa
    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    :goto_ac
    return-object v3

    .line 402
    .end local v2    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v4    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_ad
    :goto_ad
    goto/16 :goto_6
.end method
