.class Lsun/nio/fs/LinuxFileSystem;
.super Lsun/nio/fs/UnixFileSystem;
.source "LinuxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;
    }
.end annotation


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V
    .registers 3
    .param p1, "provider"    # Lsun/nio/fs/UnixFileSystemProvider;
    .param p2, "dir"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lsun/nio/fs/UnixFileSystem;-><init>(Lsun/nio/fs/UnixFileSystemProvider;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method copyNonPosixAttributes(II)V
    .registers 3
    .param p1, "ofd"    # I
    .param p2, "nfd"    # I

    .prologue
    .line 72
    invoke-static {p1, p2}, Lsun/nio/fs/LinuxUserDefinedFileAttributeView;->copyExtendedAttributes(II)V

    .line 73
    return-void
.end method

.method getFileStore(Lsun/nio/fs/UnixMountEntry;)Ljava/nio/file/FileStore;
    .registers 3
    .param p1, "entry"    # Lsun/nio/fs/UnixMountEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Lsun/nio/fs/LinuxFileStore;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/LinuxFileStore;-><init>(Lsun/nio/fs/UnixFileSystem;Lsun/nio/fs/UnixMountEntry;)V

    return-object v0
.end method

.method getMountEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const-string/jumbo v0, "/proc/mounts"

    invoke-virtual {p0, v0}, Lsun/nio/fs/LinuxFileSystem;->getMountEntries(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method getMountEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 10
    .param p1, "fstab"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lsun/nio/fs/UnixMountEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/nio/fs/UnixMountEntry;>;"
    :try_start_5
    invoke-static {p1}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "r"

    invoke-static {v7}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Lsun/nio/fs/LinuxNativeDispatcher;->setmntent([B[B)J
    :try_end_13
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_13} :catch_2c

    move-result-wide v2

    .line 84
    .local v2, "fp":J
    :goto_14
    :try_start_14
    new-instance v1, Lsun/nio/fs/UnixMountEntry;

    invoke-direct {v1}, Lsun/nio/fs/UnixMountEntry;-><init>()V

    .line 85
    .local v1, "entry":Lsun/nio/fs/UnixMountEntry;
    invoke-static {v2, v3, v1}, Lsun/nio/fs/LinuxNativeDispatcher;->getmntent(JLsun/nio/fs/UnixMountEntry;)I
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_27

    move-result v4

    .line 86
    .local v4, "res":I
    if-gez v4, :cond_23

    .line 91
    :try_start_1f
    invoke-static {v2, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->endmntent(J)V
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_1f .. :try_end_22} :catch_2c

    .line 97
    .end local v1    # "entry":Lsun/nio/fs/UnixMountEntry;
    .end local v2    # "fp":J
    .end local v4    # "res":I
    :goto_22
    return-object v0

    .line 88
    .restart local v1    # "entry":Lsun/nio/fs/UnixMountEntry;
    .restart local v2    # "fp":J
    .restart local v4    # "res":I
    :cond_23
    :try_start_23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_14

    .line 90
    .end local v1    # "entry":Lsun/nio/fs/UnixMountEntry;
    .end local v4    # "res":I
    :catchall_27
    move-exception v6

    .line 91
    :try_start_28
    invoke-static {v2, v3}, Lsun/nio/fs/LinuxNativeDispatcher;->endmntent(J)V

    .line 90
    throw v6
    :try_end_2c
    .catch Lsun/nio/fs/UnixException; {:try_start_28 .. :try_end_2c} :catch_2c

    .line 94
    .end local v2    # "fp":J
    :catch_2c
    move-exception v5

    .local v5, "x":Lsun/nio/fs/UnixException;
    goto :goto_22
.end method

.method public newWatchService()Ljava/nio/file/WatchService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lsun/nio/fs/LinuxWatchService;

    invoke-direct {v0, p0}, Lsun/nio/fs/LinuxWatchService;-><init>(Lsun/nio/fs/UnixFileSystem;)V

    return-object v0
.end method

.method public supportedFileAttributeViews()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lsun/nio/fs/LinuxFileSystem$SupportedFileFileAttributeViewsHolder;->supportedFileAttributeViews:Ljava/util/Set;

    return-object v0
.end method
