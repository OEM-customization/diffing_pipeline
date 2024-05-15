.class Ljava/math/BigInteger$UnsafeHolder;
.super Ljava/lang/Object;
.source "BigInteger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/math/BigInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsafeHolder"
.end annotation


# static fields
.field private static final blacklist magOffset:J

.field private static final blacklist signumOffset:J

.field private static final blacklist unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 4664
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Lsun/misc/Unsafe;

    .line 4665
    const-class v1, Ljava/math/BigInteger;

    const-string v2, "signum"

    .line 4666
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava/math/BigInteger$UnsafeHolder;->signumOffset:J

    .line 4667
    const-class v1, Ljava/math/BigInteger;

    const-string v2, "mag"

    .line 4668
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/math/BigInteger$UnsafeHolder;->magOffset:J
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 4671
    nop

    .line 4672
    return-void

    .line 4669
    :catch_24
    move-exception v0

    .line 4670
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 4658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist putMag(Ljava/math/BigInteger;[I)V
    .registers 5
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "magnitude"    # [I

    .line 4679
    sget-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/math/BigInteger$UnsafeHolder;->magOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 4680
    return-void
.end method

.method static blacklist putSign(Ljava/math/BigInteger;I)V
    .registers 5
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "sign"    # I

    .line 4675
    sget-object v0, Ljava/math/BigInteger$UnsafeHolder;->unsafe:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/math/BigInteger$UnsafeHolder;->signumOffset:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 4676
    return-void
.end method
