.class Lsun/nio/fs/UnixFileSystemProvider$2;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "UnixFileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystemProvider;->chain([Lsun/nio/fs/AbstractFileTypeDetector;)Ljava/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixFileSystemProvider;

.field final synthetic val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileSystemProvider;[Lsun/nio/fs/AbstractFileTypeDetector;)V
    .registers 3
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystemProvider;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->this$0:Lsun/nio/fs/UnixFileSystemProvider;

    iput-object p2, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;

    .line 524
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 9
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 527
    iget-object v3, p0, Lsun/nio/fs/UnixFileSystemProvider$2;->val$detectors:[Lsun/nio/fs/AbstractFileTypeDetector;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_5
    if-ge v2, v4, :cond_1b

    aget-object v0, v3, v2

    .line 528
    .local v0, "detector":Lsun/nio/fs/AbstractFileTypeDetector;
    invoke-virtual {v0, p1}, Lsun/nio/fs/AbstractFileTypeDetector;->implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_18

    .line 530
    return-object v1

    .line 527
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 533
    .end local v0    # "detector":Lsun/nio/fs/AbstractFileTypeDetector;
    .end local v1    # "result":Ljava/lang/String;
    :cond_1b
    return-object v6
.end method
