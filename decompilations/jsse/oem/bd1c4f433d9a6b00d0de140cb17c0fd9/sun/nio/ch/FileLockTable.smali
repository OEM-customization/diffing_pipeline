.class abstract Lsun/nio/ch/FileLockTable;
.super Ljava/lang/Object;
.source "FileLockTable.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;
    .registers 3
    .param p0, "channel"    # Ljava/nio/channels/Channel;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lsun/nio/ch/SharedFileLockTable;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/SharedFileLockTable;-><init>(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public abstract add(Ljava/nio/channels/FileLock;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/nio/channels/FileLock;)V
.end method

.method public abstract removeAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end method

.method public abstract replace(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)V
.end method