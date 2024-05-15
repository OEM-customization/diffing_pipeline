.class public Lsun/nio/ch/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/Util$1;,
        Lsun/nio/ch/Util$BufferCache;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final TEMP_BUF_POOL_SIZE:I

.field private static bufferCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lsun/nio/ch/Util$BufferCache;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile bugLevel:Ljava/lang/String;

.field private static pageSize:I

.field private static unsafe:Lsun/misc/Unsafe;


# direct methods
.method static synthetic -get0()I
    .registers 1

    sget v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    .line 42
    sget v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    sput v0, Lsun/nio/ch/Util;->TEMP_BUF_POOL_SIZE:I

    .line 46
    new-instance v0, Lsun/nio/ch/Util$1;

    invoke-direct {v0}, Lsun/nio/ch/Util$1;-><init>()V

    .line 45
    sput-object v0, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    .line 269
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    .line 287
    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/Util;->pageSize:I

    .line 296
    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _get(J)B
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 272
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method private static _put(JB)V
    .registers 5
    .param p0, "a"    # J
    .param p2, "b"    # B

    .prologue
    .line 276
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 277
    return-void
.end method

.method static atBugLevel(Ljava/lang/String;)Z
    .registers 4
    .param p0, "bl"    # Ljava/lang/String;

    .prologue
    .line 299
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    if-nez v1, :cond_1e

    .line 300
    invoke-static {}, Lsun/misc/VM;->isBooted()Z

    move-result v1

    if-nez v1, :cond_c

    .line 301
    const/4 v1, 0x0

    return v1

    .line 303
    :cond_c
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.nio.ch.bugLevel"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_25

    .end local v0    # "value":Ljava/lang/String;
    :goto_1c
    sput-object v0, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    .line 306
    :cond_1e
    sget-object v1, Lsun/nio/ch/Util;->bugLevel:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 304
    .restart local v0    # "value":Ljava/lang/String;
    :cond_25
    const-string/jumbo v0, ""

    goto :goto_1c
.end method

.method static erase(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 280
    sget-object v1, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    move-object v0, p0

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 281
    return-void
.end method

.method private static free(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 212
    check-cast p0, Lsun/nio/ch/DirectBuffer;

    .end local p0    # "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Lsun/nio/ch/DirectBuffer;->cleaner()Lsun/misc/Cleaner;

    move-result-object v0

    .line 213
    .local v0, "cleaner":Lsun/misc/Cleaner;
    if-eqz v0, :cond_b

    .line 214
    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 216
    :cond_b
    return-void
.end method

.method public static getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "size"    # I

    .prologue
    .line 156
    sget-object v2, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/Util$BufferCache;

    .line 157
    .local v1, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v1, p0}, Lsun/nio/ch/Util$BufferCache;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    .local v0, "buf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_f

    .line 159
    return-object v0

    .line 164
    :cond_f
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 165
    invoke-virtual {v1}, Lsun/nio/ch/Util$BufferCache;->removeFirst()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 168
    :cond_1c
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2
.end method

.method static offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 185
    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 186
    :cond_c
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 187
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerFirst(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 189
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 191
    :cond_1d
    return-void
.end method

.method static offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 200
    sget-boolean v1, Lsun/nio/ch/Util;->-assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 201
    :cond_c
    sget-object v1, Lsun/nio/ch/Util;->bufferCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/nio/ch/Util$BufferCache;

    .line 202
    .local v0, "cache":Lsun/nio/ch/Util$BufferCache;
    invoke-virtual {v0, p0}, Lsun/nio/ch/Util$BufferCache;->offerLast(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 204
    invoke-static {p0}, Lsun/nio/ch/Util;->free(Ljava/nio/ByteBuffer;)V

    .line 206
    :cond_1d
    return-void
.end method

.method static pageSize()I
    .registers 2

    .prologue
    .line 290
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 291
    invoke-static {}, Lsun/nio/ch/Util;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Lsun/nio/ch/Util;->pageSize:I

    .line 292
    :cond_f
    sget v0, Lsun/nio/ch/Util;->pageSize:I

    return v0
.end method

.method public static releaseTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V
    .registers 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 176
    invoke-static {p0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 177
    return-void
.end method

.method static subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;
    .registers 7
    .param p0, "bs"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 222
    if-nez p1, :cond_6

    array-length v3, p0

    if-ne p2, v3, :cond_6

    .line 223
    return-object p0

    .line 224
    :cond_6
    move v2, p2

    .line 225
    .local v2, "n":I
    new-array v0, p2, [Ljava/nio/ByteBuffer;

    .line 226
    .local v0, "bs2":[Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, p2, :cond_15

    .line 227
    add-int v3, p1, v1

    aget-object v3, p0, v3

    aput-object v3, v0, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 228
    :cond_15
    return-object v0
.end method

.method static ungrowableSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lsun/nio/ch/Util$2;

    invoke-direct {v0, p0}, Lsun/nio/ch/Util$2;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static unsafe()Lsun/misc/Unsafe;
    .registers 1

    .prologue
    .line 284
    sget-object v0, Lsun/nio/ch/Util;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
