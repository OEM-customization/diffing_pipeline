.class Lsun/nio/fs/LinuxWatchService;
.super Lsun/nio/fs/AbstractWatchService;
.source "LinuxWatchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/LinuxWatchService$LinuxWatchKey;,
        Lsun/nio/fs/LinuxWatchService$Poller;
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final poller:Lsun/nio/fs/LinuxWatchService$Poller;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/LinuxWatchService;)Lsun/nio/fs/LinuxWatchService$Poller;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/LinuxWatchService;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    return-object v0
.end method

.method static synthetic -get1()Lsun/misc/Unsafe;
    .registers 1

    sget-object v0, Lsun/nio/fs/LinuxWatchService;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method

.method static synthetic -wrap0()[I
    .registers 1

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->eventOffsets()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()I
    .registers 1

    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->eventSize()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(IJI)I
    .registers 5
    .param p0, "fd"    # I
    .param p1, "pathAddress"    # J
    .param p3, "mask"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lsun/nio/fs/LinuxWatchService;->inotifyAddWatch(IJI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(II)I
    .registers 3
    .param p0, "fd1"    # I
    .param p1, "fd2"    # I

    .prologue
    invoke-static {p0, p1}, Lsun/nio/fs/LinuxWatchService;->poll(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(II)V
    .registers 2
    .param p0, "fd"    # I
    .param p1, "wd"    # I

    .prologue
    invoke-static {p0, p1}, Lsun/nio/fs/LinuxWatchService;->inotifyRmWatch(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/LinuxWatchService;->unsafe:Lsun/misc/Unsafe;

    .line 56
    return-void
.end method

.method constructor <init>(Lsun/nio/fs/UnixFileSystem;)V
    .registers 8
    .param p1, "fs"    # Lsun/nio/fs/UnixFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lsun/nio/fs/AbstractWatchService;-><init>()V

    .line 66
    const/4 v0, -0x1

    .line 68
    .local v0, "ifd":I
    :try_start_4
    invoke-static {}, Lsun/nio/fs/LinuxWatchService;->inotifyInit()I
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_4 .. :try_end_7} :catch_26

    move-result v0

    .line 78
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 80
    .local v2, "sp":[I
    const/4 v4, 0x0

    :try_start_c
    invoke-static {v0, v4}, Lsun/nio/fs/LinuxWatchService;->configureBlocking(IZ)V

    .line 81
    invoke-static {v2}, Lsun/nio/fs/LinuxWatchService;->socketpair([I)V

    .line 82
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lsun/nio/fs/LinuxWatchService;->configureBlocking(IZ)V
    :try_end_19
    .catch Lsun/nio/fs/UnixException; {:try_start_c .. :try_end_19} :catch_3d

    .line 88
    new-instance v4, Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-direct {v4, p1, p0, v0, v2}, Lsun/nio/fs/LinuxWatchService$Poller;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/LinuxWatchService;I[I)V

    iput-object v4, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    .line 89
    iget-object v4, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v4}, Lsun/nio/fs/LinuxWatchService$Poller;->start()V

    .line 90
    return-void

    .line 69
    .end local v2    # "sp":[I
    :catch_26
    move-exception v3

    .line 70
    .local v3, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->EMFILE:I

    if-ne v4, v5, :cond_38

    .line 71
    const-string/jumbo v1, "User limit of inotify instances reached or too many open files"

    .line 73
    .local v1, "msg":Ljava/lang/String;
    :goto_32
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    .end local v1    # "msg":Ljava/lang/String;
    :cond_38
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_32

    .line 83
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    .restart local v2    # "sp":[I
    :catch_3d
    move-exception v3

    .line 84
    .restart local v3    # "x":Lsun/nio/fs/UnixException;
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 85
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static native configureBlocking(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native eventOffsets()[I
.end method

.method private static native eventSize()I
.end method

.method private static native inotifyAddWatch(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native inotifyInit()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native inotifyRmWatch(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native poll(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native socketpair([I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method


# virtual methods
.method implClose()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v0}, Lsun/nio/fs/LinuxWatchService$Poller;->close()V

    .line 106
    return-void
.end method

.method varargs register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .registers 5
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p3, "modifiers"    # [Ljava/nio/file/WatchEvent$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind",
            "<*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "events":[Ljava/nio/file/WatchEvent$Kind;, "[Ljava/nio/file/WatchEvent$Kind<*>;"
    iget-object v0, p0, Lsun/nio/fs/LinuxWatchService;->poller:Lsun/nio/fs/LinuxWatchService$Poller;

    invoke-virtual {v0, p1, p2, p3}, Lsun/nio/fs/LinuxWatchService$Poller;->register(Ljava/nio/file/Path;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object v0

    return-object v0
.end method
