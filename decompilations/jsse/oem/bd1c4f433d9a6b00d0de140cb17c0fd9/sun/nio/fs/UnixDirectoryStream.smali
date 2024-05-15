.class Lsun/nio/fs/UnixDirectoryStream;
.super Ljava/lang/Object;
.source "UnixDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final dir:Lsun/nio/fs/UnixPath;

.field private final dp:J

.field private final filter:Ljava/nio/file/DirectoryStream$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final guard:Ldalvik/system/CloseGuard;

.field private volatile isClosed:Z

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/UnixDirectoryStream;)Lsun/nio/fs/UnixPath;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/UnixDirectoryStream;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->dir:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/fs/UnixDirectoryStream;)J
    .registers 3
    .param p0, "-this"    # Lsun/nio/fs/UnixDirectoryStream;

    .prologue
    iget-wide v0, p0, Lsun/nio/fs/UnixDirectoryStream;->dp:J

    return-wide v0
.end method

.method static synthetic -get2(Lsun/nio/fs/UnixDirectoryStream;)Ljava/nio/file/DirectoryStream$Filter;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/UnixDirectoryStream;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->filter:Ljava/nio/file/DirectoryStream$Filter;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V
    .registers 7
    .param p1, "dir"    # Lsun/nio/fs/UnixPath;
    .param p2, "dp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "J",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 55
    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 65
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    .line 71
    iput-object p1, p0, Lsun/nio/fs/UnixDirectoryStream;->dir:Lsun/nio/fs/UnixPath;

    .line 72
    iput-wide p2, p0, Lsun/nio/fs/UnixDirectoryStream;->dp:J

    .line 73
    iput-object p4, p0, Lsun/nio/fs/UnixDirectoryStream;->filter:Ljava/nio/file/DirectoryStream$Filter;

    .line 76
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 118
    :try_start_7
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->closeImpl()Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_12

    .line 120
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    return-void

    .line 119
    :catchall_12
    move-exception v0

    .line 120
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    throw v0
.end method

.method protected final closeImpl()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 96
    iget-boolean v1, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    if-nez v1, :cond_1d

    .line 97
    iput-boolean v4, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    .line 99
    :try_start_7
    iget-wide v2, p0, Lsun/nio/fs/UnixDirectoryStream;->dp:J

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->closedir(J)V
    :try_end_c
    .catch Lsun/nio/fs/UnixException; {:try_start_7 .. :try_end_c} :catch_12

    .line 105
    iget-object v1, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 106
    return v4

    .line 100
    :catch_12
    move-exception v0

    .line 101
    .local v0, "x":Lsun/nio/fs/UnixException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    .end local v0    # "x":Lsun/nio/fs/UnixException;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method

.method protected final directory()Lsun/nio/fs/UnixPath;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->dir:Lsun/nio/fs/UnixPath;

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 246
    :cond_9
    invoke-virtual {p0}, Lsun/nio/fs/UnixDirectoryStream;->close()V

    .line 247
    return-void
.end method

.method protected final isOpen()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0, p0}, Lsun/nio/fs/UnixDirectoryStream;->iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected final iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/DirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "ds":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    iget-boolean v0, p0, Lsun/nio/fs/UnixDirectoryStream;->isClosed:Z

    if-eqz v0, :cond_d

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Directory stream is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_d
    monitor-enter p0

    .line 129
    :try_start_e
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1e

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Iterator already obtained"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1b

    .line 128
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_1e
    :try_start_1e
    new-instance v0, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;

    invoke-direct {v0, p0, p1}, Lsun/nio/fs/UnixDirectoryStream$UnixDirectoryIterator;-><init>(Lsun/nio/fs/UnixDirectoryStream;Ljava/nio/file/DirectoryStream;)V

    iput-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->iterator:Ljava/util/Iterator;

    .line 132
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->iterator:Ljava/util/Iterator;
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_1b

    monitor-exit p0

    return-object v0
.end method

.method protected final readLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method protected final writeLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lsun/nio/fs/UnixDirectoryStream;->streamLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method
