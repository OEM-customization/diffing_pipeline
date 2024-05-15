.class final Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SNode"
.end annotation


# static fields
.field private static final greylist-max-o MATCH:J

.field private static final greylist-max-o NEXT:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field greylist-max-o item:Ljava/lang/Object;

.field volatile greylist-max-o match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field greylist-max-o mode:I

.field volatile greylist-max-o next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

.field volatile greylist-max-o waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 286
    const-class v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    .line 292
    :try_start_8
    const-string v2, "match"

    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->MATCH:J

    .line 294
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    const-string v2, "next"

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->NEXT:J
    :try_end_22
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_22} :catch_24

    .line 298
    nop

    .line 299
    return-void

    .line 296
    :catch_24
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "item"    # Ljava/lang/Object;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    .line 246
    return-void
.end method


# virtual methods
.method greylist-max-o casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .registers 10
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 249
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne p1, v0, :cond_13

    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->NEXT:J

    .line 250
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

    .line 249
    :goto_14
    return v0
.end method

.method greylist-max-o isCancelled()Z
    .registers 2

    .line 282
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method greylist-max-o tryCancel()V
    .registers 7

    .line 278
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->MATCH:J

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method greylist-max-o tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .registers 10
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    .line 262
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->MATCH:J

    const/4 v6, 0x0

    .line 263
    move-object v3, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 264
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    .line 265
    .local v0, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_1c

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    .line 267
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 269
    :cond_1c
    return v1

    .line 271
    .end local v0    # "w":Ljava/lang/Thread;
    :cond_1d
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    if-ne v0, p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method
