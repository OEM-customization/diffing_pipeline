.class Lsun/nio/fs/NativeBuffers;
.super Ljava/lang/Object;
.source "NativeBuffers.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TEMP_BUF_POOL_SIZE:I = 0x3

.field private static threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Lsun/nio/fs/NativeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/fs/NativeBuffers;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/fs/NativeBuffers;->-assertionsDisabled:Z

    .line 37
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/NativeBuffers;->unsafe:Lsun/misc/Unsafe;

    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 40
    sput-object v0, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 48
    const/16 v0, 0x800

    if-ge p0, v0, :cond_6

    const/16 p0, 0x800

    .line 49
    :cond_6
    new-instance v0, Lsun/nio/fs/NativeBuffer;

    invoke-direct {v0, p0}, Lsun/nio/fs/NativeBuffer;-><init>(I)V

    return-object v0
.end method

.method static asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;
    .registers 3
    .param p0, "cstr"    # [B

    .prologue
    .line 144
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 145
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p0, v0}, Lsun/nio/fs/NativeBuffers;->copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V

    .line 146
    return-object v0
.end method

.method static copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V
    .registers 10
    .param p0, "cstr"    # [B
    .param p1, "buffer"    # Lsun/nio/fs/NativeBuffer;

    .prologue
    .line 131
    array-length v1, p0

    int-to-long v2, v1

    .line 132
    .local v2, "len":J
    sget-boolean v1, Lsun/nio/fs/NativeBuffers;->-assertionsDisabled:Z

    if-nez v1, :cond_18

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_18

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 133
    :cond_18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_2e

    .line 134
    sget-object v1, Lsun/nio/fs/NativeBuffers;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    aget-byte v6, p0, v0

    invoke-virtual {v1, v4, v5, v6}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 136
    :cond_2e
    sget-object v1, Lsun/nio/fs/NativeBuffers;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {p1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    add-long/2addr v4, v2

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 137
    return-void
.end method

.method static getNativeBuffer(I)Lsun/nio/fs/NativeBuffer;
    .registers 3
    .param p0, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 78
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    if-eqz v0, :cond_b

    .line 79
    invoke-virtual {v0, v1}, Lsun/nio/fs/NativeBuffer;->setOwner(Ljava/lang/Object;)V

    .line 80
    return-object v0

    .line 82
    :cond_b
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    return-object v1
.end method

.method static getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;
    .registers 6
    .param p0, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 58
    sget-object v3, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/nio/fs/NativeBuffer;

    .line 59
    .local v1, "buffers":[Lsun/nio/fs/NativeBuffer;
    if-eqz v1, :cond_1f

    .line 60
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1f

    .line 61
    aget-object v0, v1, v2

    .line 62
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v3

    if-lt v3, p0, :cond_1c

    .line 63
    aput-object v4, v1, v2

    .line 64
    return-object v0

    .line 60
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 68
    .end local v0    # "buffer":Lsun/nio/fs/NativeBuffer;
    .end local v2    # "i":I
    :cond_1f
    return-object v4
.end method

.method static releaseNativeBuffer(Lsun/nio/fs/NativeBuffer;)V
    .registers 7
    .param p0, "buffer"    # Lsun/nio/fs/NativeBuffer;

    .prologue
    const/4 v5, 0x3

    .line 92
    sget-object v3, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/nio/fs/NativeBuffer;

    .line 93
    .local v0, "buffers":[Lsun/nio/fs/NativeBuffer;
    if-nez v0, :cond_16

    .line 94
    new-array v0, v5, [Lsun/nio/fs/NativeBuffer;

    .line 95
    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 96
    sget-object v3, Lsun/nio/fs/NativeBuffers;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    return-void

    .line 100
    :cond_16
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v5, :cond_23

    .line 101
    aget-object v3, v0, v2

    if-nez v3, :cond_20

    .line 102
    aput-object p0, v0, v2

    .line 103
    return-void

    .line 100
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 107
    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-ge v2, v5, :cond_3f

    .line 108
    aget-object v1, v0, v2

    .line 109
    .local v1, "existing":Lsun/nio/fs/NativeBuffer;
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v3

    invoke-virtual {p0}, Lsun/nio/fs/NativeBuffer;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 110
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/Cleaner;->clean()V

    .line 111
    aput-object p0, v0, v2

    .line 112
    return-void

    .line 107
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 117
    .end local v1    # "existing":Lsun/nio/fs/NativeBuffer;
    :cond_3f
    invoke-virtual {p0}, Lsun/nio/fs/NativeBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v3

    invoke-virtual {v3}, Lsun/misc/Cleaner;->clean()V

    .line 118
    return-void
.end method
