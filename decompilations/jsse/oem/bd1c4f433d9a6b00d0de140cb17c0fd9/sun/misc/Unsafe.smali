.class public final Lsun/misc/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field public static final INVALID_FIELD_OFFSET:I = -0x1

.field private static final THE_ONE:Lsun/misc/Unsafe;

.field private static final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lsun/misc/Unsafe;

    invoke-direct {v0}, Lsun/misc/Unsafe;-><init>()V

    sput-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    .line 45
    sget-object v0, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    sput-object v0, Lsun/misc/Unsafe;->theUnsafe:Lsun/misc/Unsafe;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native getArrayIndexScaleForComponentType(Ljava/lang/Class;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .prologue
    .line 62
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 63
    .local v0, "calling":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_17

    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_17

    .line 64
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Unsafe access denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_17
    sget-object v1, Lsun/misc/Unsafe;->THE_ONE:Lsun/misc/Unsafe;

    return-object v1
.end method


# virtual methods
.method public native addressSize()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public native allocateMemory(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .registers 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_20

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Valid for array classes only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_20
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayBaseOffsetForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .registers 6
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_20

    .line 109
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Valid for array classes only: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_20
    invoke-static {v0}, Lsun/misc/Unsafe;->getArrayIndexScaleForComponentType(Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method public native compareAndSwapInt(Ljava/lang/Object;JII)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native compareAndSwapLong(Ljava/lang/Object;JJJ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native copyMemory(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native copyMemoryFromPrimitiveArray(Ljava/lang/Object;JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native copyMemoryToPrimitiveArray(JLjava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native freeMemory(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native fullFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final getAndAddInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # I

    .prologue
    .line 471
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 472
    .local v4, "v":I
    add-int v5, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    return v4
.end method

.method public final getAndAddLong(Ljava/lang/Object;JJ)J
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # J

    .prologue
    .line 491
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 492
    .local v4, "v":J
    add-long v6, v4, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    return-wide v4
.end method

.method public final getAndSetInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # I

    .prologue
    .line 511
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .local v4, "v":I
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .line 512
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    return v4
.end method

.method public final getAndSetLong(Ljava/lang/Object;JJ)J
    .registers 14
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # J

    .prologue
    .line 531
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v4

    .local v4, "v":J
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v6, p4

    .line 532
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    return-wide v4
.end method

.method public final getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 551
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .local v4, "v":Ljava/lang/Object;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    .line 552
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    return-object v4
.end method

.method public native getBoolean(Ljava/lang/Object;J)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getByte(J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getByte(Ljava/lang/Object;J)B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getChar(J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getChar(Ljava/lang/Object;J)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getDouble(J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getDouble(Ljava/lang/Object;J)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getFloat(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getFloat(Ljava/lang/Object;J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getInt(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getInt(Ljava/lang/Object;J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getIntVolatile(Ljava/lang/Object;J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getLong(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getLong(Ljava/lang/Object;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getLongVolatile(Ljava/lang/Object;J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getShort(J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native getShort(Ljava/lang/Object;J)S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native loadFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valid for instance fields only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_13
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getOffset()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public native pageSize()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public park(ZJ)V
    .registers 6
    .param p1, "absolute"    # Z
    .param p2, "time"    # J

    .prologue
    .line 355
    if-eqz p1, :cond_a

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkUntil$(J)V

    .line 360
    :goto_9
    return-void

    .line 358
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->parkFor$(J)V

    goto :goto_9
.end method

.method public native putBoolean(Ljava/lang/Object;JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putByte(JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putByte(Ljava/lang/Object;JB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putChar(JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putChar(Ljava/lang/Object;JC)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putDouble(JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putDouble(Ljava/lang/Object;JD)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putFloat(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putFloat(Ljava/lang/Object;JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putInt(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putInt(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putIntVolatile(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putLong(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putLong(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putLongVolatile(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putOrderedInt(Ljava/lang/Object;JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putOrderedLong(Ljava/lang/Object;JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putShort(JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native putShort(Ljava/lang/Object;JS)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native setMemory(JJB)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public native storeFence()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public unpark(Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 371
    instance-of v0, p1, Ljava/lang/Thread;

    if-eqz v0, :cond_a

    .line 372
    check-cast p1, Ljava/lang/Thread;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Thread;->unpark$()V

    .line 376
    return-void

    .line 374
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "valid for Threads only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
