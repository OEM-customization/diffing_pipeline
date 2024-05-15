.class Lsun/nio/ch/EPoll;
.super Ljava/lang/Object;
.source "EPoll.java"


# static fields
.field static final EPOLLONESHOT:I = 0x40000000

.field static final EPOLL_CTL_ADD:I = 0x1

.field static final EPOLL_CTL_DEL:I = 0x2

.field static final EPOLL_CTL_MOD:I = 0x3

.field private static final OFFSETOF_EVENTS:I

.field private static final OFFSETOF_FD:I

.field private static final SIZEOF_EPOLLEVENT:I

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/EPoll;->unsafe:Lsun/misc/Unsafe;

    .line 53
    invoke-static {}, Lsun/nio/ch/EPoll;->eventSize()I

    move-result v0

    sput v0, Lsun/nio/ch/EPoll;->SIZEOF_EPOLLEVENT:I

    .line 54
    invoke-static {}, Lsun/nio/ch/EPoll;->eventsOffset()I

    move-result v0

    sput v0, Lsun/nio/ch/EPoll;->OFFSETOF_EVENTS:I

    .line 55
    invoke-static {}, Lsun/nio/ch/EPoll;->dataOffset()I

    move-result v0

    sput v0, Lsun/nio/ch/EPoll;->OFFSETOF_FD:I

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allocatePollArray(I)J
    .registers 5
    .param p0, "count"    # I

    .prologue
    .line 69
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lsun/nio/ch/EPoll;->SIZEOF_EPOLLEVENT:I

    mul-int/2addr v1, p0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native dataOffset()I
.end method

.method static native epollCreate()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native epollCtl(IIII)I
.end method

.method static native epollWait(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native eventSize()I
.end method

.method private static native eventsOffset()I
.end method

.method static freePollArray(J)V
    .registers 4
    .param p0, "address"    # J

    .prologue
    .line 76
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 77
    return-void
.end method

.method static getDescriptor(J)I
    .registers 6
    .param p0, "eventAddress"    # J

    .prologue
    .line 90
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lsun/nio/ch/EPoll;->OFFSETOF_FD:I

    int-to-long v2, v1

    add-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method static getEvent(JI)J
    .registers 5
    .param p0, "address"    # J
    .param p2, "i"    # I

    .prologue
    .line 83
    sget v0, Lsun/nio/ch/EPoll;->SIZEOF_EPOLLEVENT:I

    mul-int/2addr v0, p2

    int-to-long v0, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static getEvents(J)I
    .registers 6
    .param p0, "eventAddress"    # J

    .prologue
    .line 97
    sget-object v0, Lsun/nio/ch/EPoll;->unsafe:Lsun/misc/Unsafe;

    sget v1, Lsun/nio/ch/EPoll;->OFFSETOF_EVENTS:I

    int-to-long v2, v1

    add-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method
