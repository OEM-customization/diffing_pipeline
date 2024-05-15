.class Ljava/math/BigDecimal$UnsafeHolder;
.super Ljava/lang/Object;
.source "BigDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsafeHolder"
.end annotation


# static fields
.field private static final blacklist intCompactOffset:J

.field private static final blacklist intValOffset:J

.field private static final blacklist unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3752
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Lsun/misc/Unsafe;

    .line 3753
    const-class v1, Ljava/math/BigDecimal;

    const-string v2, "intCompact"

    .line 3754
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/math/BigDecimal$UnsafeHolder;->intCompactOffset:J

    .line 3755
    const-class v1, Ljava/math/BigDecimal;

    const-string v2, "intVal"

    .line 3756
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigDecimal$UnsafeHolder;->intValOffset:J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 3759
    nop

    .line 3760
    return-void

    .line 3757
    :catch_24
    move-exception v0

    .line 3758
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 3746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist setIntCompactVolatile(Ljava/math/BigDecimal;J)V
    .registers 9
    .param p0, "bd"    # Ljava/math/BigDecimal;
    .param p1, "val"    # J

    .line 3762
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/math/BigDecimal$UnsafeHolder;->intCompactOffset:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 3763
    return-void
.end method

.method static blacklist setIntValVolatile(Ljava/math/BigDecimal;Ljava/math/BigInteger;)V
    .registers 5
    .param p0, "bd"    # Ljava/math/BigDecimal;
    .param p1, "val"    # Ljava/math/BigInteger;

    .line 3766
    sget-object v0, Ljava/math/BigDecimal$UnsafeHolder;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/math/BigDecimal$UnsafeHolder;->intValOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 3767
    return-void
.end method
