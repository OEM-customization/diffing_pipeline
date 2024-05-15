.class final Lsun/nio/fs/UnixCopyFile$1;
.super Lsun/nio/fs/Cancellable;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/fs/UnixCopyFile;->copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attrsToCopy:Lsun/nio/fs/UnixFileAttributes;

.field final synthetic val$flags:Lsun/nio/fs/UnixCopyFile$Flags;

.field final synthetic val$source:Lsun/nio/fs/UnixPath;

.field final synthetic val$target:Lsun/nio/fs/UnixPath;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lsun/nio/fs/UnixCopyFile$1;->val$source:Lsun/nio/fs/UnixPath;

    iput-object p2, p0, Lsun/nio/fs/UnixCopyFile$1;->val$attrsToCopy:Lsun/nio/fs/UnixFileAttributes;

    iput-object p3, p0, Lsun/nio/fs/UnixCopyFile$1;->val$target:Lsun/nio/fs/UnixPath;

    iput-object p4, p0, Lsun/nio/fs/UnixCopyFile$1;->val$flags:Lsun/nio/fs/UnixCopyFile$Flags;

    .line 587
    invoke-direct {p0}, Lsun/nio/fs/Cancellable;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public implRun()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lsun/nio/fs/UnixCopyFile$1;->val$source:Lsun/nio/fs/UnixPath;

    iget-object v1, p0, Lsun/nio/fs/UnixCopyFile$1;->val$attrsToCopy:Lsun/nio/fs/UnixFileAttributes;

    iget-object v2, p0, Lsun/nio/fs/UnixCopyFile$1;->val$target:Lsun/nio/fs/UnixPath;

    iget-object v3, p0, Lsun/nio/fs/UnixCopyFile$1;->val$flags:Lsun/nio/fs/UnixCopyFile$Flags;

    .line 590
    invoke-virtual {p0}, Lsun/nio/fs/UnixCopyFile$1;->addressToPollForCancel()J

    move-result-wide v4

    .line 589
    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->-wrap0(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    .line 591
    return-void
.end method
