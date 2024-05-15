.class public Ljava/util/concurrent/atomic/AtomicBoolean;
.super Ljava/lang/Object;
.source "AtomicBoolean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o VALUE:J

.field private static final whitelist serialVersionUID:J = 0x4098b70a4f3ffc33L


# instance fields
.field private volatile greylist-max-o value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 52
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    .line 57
    :try_start_6
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, "value"

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 61
    nop

    .line 62
    return-void

    .line 59
    :catch_16
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 2
    .param p1, "initialValue"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 73
    return-void
.end method


# virtual methods
.method public final whitelist test-api compareAndSet(ZZ)Z
    .registers 9
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .line 100
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    .line 101
    nop

    .line 102
    nop

    .line 100
    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api get()Z
    .registers 2

    .line 87
    iget v0, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist test-api getAndSet(Z)Z
    .registers 4
    .param p1, "newValue"    # Z

    .line 151
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 152
    .local v0, "prev":Z
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 153
    return v0

    .line 152
    :cond_b
    goto :goto_0
.end method

.method public final whitelist test-api lazySet(Z)V
    .registers 5
    .param p1, "newValue"    # Z

    .line 139
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 140
    return-void
.end method

.method public final whitelist test-api set(Z)V
    .registers 2
    .param p1, "newValue"    # Z

    .line 129
    iput p1, p0, Ljava/util/concurrent/atomic/AtomicBoolean;->value:I

    .line 130
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 161
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api weakCompareAndSet(ZZ)Z
    .registers 9
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .line 118
    sget-object v0, Ljava/util/concurrent/atomic/AtomicBoolean;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/atomic/AtomicBoolean;->VALUE:J

    .line 119
    nop

    .line 120
    nop

    .line 118
    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method
