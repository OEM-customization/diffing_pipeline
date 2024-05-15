.class Lsun/nio/fs/UnixFileSystemProvider$1;
.super Lsun/nio/fs/AbstractFileTypeDetector;
.source "UnixFileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixFileSystemProvider;->getFileTypeDetector()Ljava/nio/file/spi/FileTypeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixFileSystemProvider;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixFileSystemProvider;)V
    .registers 2
    .param p1, "this$0"    # Lsun/nio/fs/UnixFileSystemProvider;

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/UnixFileSystemProvider$1;->this$0:Lsun/nio/fs/UnixFileSystemProvider;

    .line 509
    invoke-direct {p0}, Lsun/nio/fs/AbstractFileTypeDetector;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 3
    .param p1, "file"    # Ljava/nio/file/Path;

    .prologue
    .line 512
    const/4 v0, 0x0

    return-object v0
.end method
