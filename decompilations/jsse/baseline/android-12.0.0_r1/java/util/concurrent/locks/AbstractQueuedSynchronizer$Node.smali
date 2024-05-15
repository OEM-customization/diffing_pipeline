.class final Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final greylist-max-o CANCELLED:I = 0x1

.field static final greylist-max-o CONDITION:I = -0x2

.field static final greylist-max-o EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field private static final greylist-max-o NEXT:J

.field static final greylist-max-o PREV:J

.field static final greylist-max-o PROPAGATE:I = -0x3

.field static final greylist-max-o SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field static final greylist-max-o SIGNAL:I = -0x1

.field private static final greylist-max-o THREAD:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o WAITSTATUS:J


# instance fields
.field volatile greylist-max-o next:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field greylist-max-o nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field volatile greylist-max-o prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

.field volatile greylist-max-o thread:Ljava/lang/Thread;

.field volatile greylist-max-o waitStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 382
    const-class v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    new-instance v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    invoke-direct {v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 384
    const/4 v1, 0x0

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 527
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    .line 534
    :try_start_12
    const-string v2, "next"

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->NEXT:J

    .line 536
    const-string v2, "prev"

    .line 537
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->PREV:J

    .line 538
    const-string v2, "thread"

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->THREAD:J

    .line 540
    const-string v2, "waitStatus"

    .line 541
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->WAITSTATUS:J
    :try_end_42
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_12 .. :try_end_42} :catch_44

    .line 544
    nop

    .line 545
    return-void

    .line 542
    :catch_44
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .registers 6
    .param p1, "waitStatus"    # I

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->WAITSTATUS:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 514
    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->THREAD:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 515
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)V
    .registers 6
    .param p1, "nextWaiter"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 508
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->THREAD:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 509
    return-void
.end method


# virtual methods
.method final greylist-max-o compareAndSetNext(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;)Z
    .registers 9
    .param p1, "expect"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .param p2, "update"    # Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 524
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->NEXT:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o compareAndSetWaitStatus(II)Z
    .registers 9
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .line 519
    sget-object v0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->WAITSTATUS:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o isShared()Z
    .registers 3

    .line 484
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method final greylist-max-o predecessor()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;

    .line 496
    .local v0, "p":Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
    if-eqz v0, :cond_5

    .line 499
    return-object v0

    .line 497
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method
