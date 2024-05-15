.class Lsun/nio/fs/UnixFileStoreAttributes;
.super Ljava/lang/Object;
.source "UnixFileStoreAttributes.java"


# instance fields
.field private f_bavail:J

.field private f_bfree:J

.field private f_blocks:J

.field private f_frsize:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static get(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/UnixFileStoreAttributes;
    .registers 2
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lsun/nio/fs/UnixFileStoreAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileStoreAttributes;-><init>()V

    .line 39
    .local v0, "attrs":Lsun/nio/fs/UnixFileStoreAttributes;
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->statvfs(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileStoreAttributes;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method availableBlocks()J
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_bavail:J

    return-wide v0
.end method

.method blockSize()J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_frsize:J

    return-wide v0
.end method

.method freeBlocks()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_bfree:J

    return-wide v0
.end method

.method totalBlocks()J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lsun/nio/fs/UnixFileStoreAttributes;->f_blocks:J

    return-wide v0
.end method
