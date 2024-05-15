.class final Ljava/util/concurrent/atomic/Striped64$Cell;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o VALUE:J


# instance fields
.field volatile greylist-max-o value:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 138
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    .line 142
    :try_start_6
    const-class v1, Ljava/util/concurrent/atomic/Striped64$Cell;

    const-string v2, "value"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 146
    nop

    .line 147
    return-void

    .line 144
    :catch_16
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "x"    # J

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/atomic/Striped64$Cell;->value:J

    return-void
.end method


# virtual methods
.method final greylist-max-o cas(JJ)Z
    .registers 13
    .param p1, "cmp"    # J
    .param p3, "val"    # J

    .line 128
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final greylist-max-o reset()V
    .registers 7

    .line 131
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 132
    return-void
.end method

.method final greylist-max-o reset(J)V
    .registers 9
    .param p1, "identity"    # J

    .line 134
    sget-object v0, Ljava/util/concurrent/atomic/Striped64$Cell;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/Striped64$Cell;->VALUE:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 135
    return-void
.end method
