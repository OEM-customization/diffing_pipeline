.class public Lsun/nio/fs/DefaultFileTypeDetector;
.super Ljava/lang/Object;
.source "DefaultFileTypeDetector.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Ljava/nio/file/spi/FileTypeDetector;
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 37
    .local v0, "provider":Ljava/nio/file/spi/FileSystemProvider;
    check-cast v0, Lsun/nio/fs/UnixFileSystemProvider;

    .end local v0    # "provider":Ljava/nio/file/spi/FileSystemProvider;
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileSystemProvider;->getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;

    move-result-object v1

    return-object v1
.end method
