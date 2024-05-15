.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUE:J

.field private static final serialVersionUID:J = 0x4098b70a4f3ffc33L


# instance fields
.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 52
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    .line 57
    :try_start_6
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    .line 58
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_17} :catch_18

    .line 49
    return-void

    .line 59
    :catch_18
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "initialValue"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_6
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 73
    return-void

    .line 72
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .registers 9
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 100
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    .line 101
    if-eqz p1, :cond_11

    move v4, v5

    .line 102
    :goto_9
    if-eqz p2, :cond_13

    :goto_b
    move-object v1, p0

    .line 100
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    :cond_11
    move v4, v1

    .line 101
    goto :goto_9

    :cond_13
    move v5, v1

    .line 102
    goto :goto_b
.end method

.method public final get()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget v1, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public final getAndSet(Z)Z
    .registers 4
    .param p1, "newValue"    # Z

    .prologue
    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 152
    .local v0, "prev":Z
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    return v0
.end method

.method public final lazySet(Z)V
    .registers 6
    .param p1, "newValue"    # Z

    .prologue
    .line 139
    sget-object v1, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, p0, v2, v3, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 140
    return-void

    .line 139
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final set(Z)V
    .registers 3
    .param p1, "newValue"    # Z

    .prologue
    .line 129
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 130
    return-void

    .line 129
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weakCompareAndSet(ZZ)Z
    .registers 9
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 118
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    .line 119
    if-eqz p1, :cond_11

    move v4, v5

    .line 120
    :goto_9
    if-eqz p2, :cond_13

    :goto_b
    move-object v1, p0

    .line 118
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0

    :cond_11
    move v4, v1

    .line 119
    goto :goto_9

    :cond_13
    move v5, v1

    .line 120
    goto :goto_b
.end method
