.class Lsun/nio/fs/UnixSecureDirectoryStream;
.super Ljava/lang/Object;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/SecureDirectoryStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;,
        Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/SecureDirectoryStream",
        "<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final dfd:I

.field private final ds:Lsun/nio/fs/UnixDirectoryStream;

.field private final guard:Ldalvik/system/CloseGuard;


# direct methods
.method static synthetic -get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/UnixSecureDirectoryStream;

    .prologue
    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    return v0
.end method

.method static synthetic -get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;
    .registers 2
    .param p0, "-this"    # Lsun/nio/fs/UnixSecureDirectoryStream;

    .prologue
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    return-object v0
.end method

.method constructor <init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V
    .registers 8
    .param p1, "dir"    # Lsun/nio/fs/UnixPath;
    .param p2, "dp"    # J
    .param p4, "dfd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "JI",
            "Ljava/nio/file/DirectoryStream$Filter",
            "<-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p5, "filter":Ljava/nio/file/DirectoryStream$Filter;, "Ljava/nio/file/DirectoryStream$Filter<-Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    .line 58
    new-instance v0, Lsun/nio/fs/UnixDirectoryStream;

    invoke-direct {v0, p1, p2, p3, p5}, Lsun/nio/fs/UnixDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JLjava/nio/file/DirectoryStream$Filter;)V

    iput-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    .line 59
    iput p4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    .line 61
    const/4 v0, -0x1

    if-eq p4, v0, :cond_1d

    .line 62
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 64
    :cond_1d
    return-void
.end method

.method private getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;
    .registers 7
    .param p1, "file"    # Lsun/nio/fs/UnixPath;
    .param p3, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/lang/Class",
            "<TV;>;Z)TV;"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v1, 0x0

    .line 286
    if-nez p2, :cond_9

    .line 287
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 288
    :cond_9
    move-object v0, p2

    .line 289
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/nio/file/attribute/BasicFileAttributeView;

    if-ne p2, v2, :cond_14

    .line 290
    new-instance v1, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;

    invoke-direct {v1, p0, p1, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-object v1

    .line 292
    :cond_14
    const-class v2, Ljava/nio/file/attribute/PosixFileAttributeView;

    if-eq p2, v2, :cond_1c

    const-class v2, Ljava/nio/file/attribute/FileOwnerAttributeView;

    if-ne p2, v2, :cond_22

    .line 293
    :cond_1c
    new-instance v1, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;

    invoke-direct {v1, p0, p1, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    return-object v1

    .line 296
    :cond_22
    check-cast v1, Ljava/nio/file/attribute/FileAttributeView;

    return-object v1
.end method

.method private getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;
    .registers 3
    .param p1, "obj"    # Ljava/nio/file/Path;

    .prologue
    .line 88
    if-nez p1, :cond_8

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_8
    instance-of v0, p1, Lsun/nio/fs/UnixPath;

    if-nez v0, :cond_12

    .line 91
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v0

    .line 92
    :cond_12
    check-cast p1, Lsun/nio/fs/UnixPath;

    .end local p1    # "obj":Ljava/nio/file/Path;
    return-object p1
.end method

.method private implDelete(Ljava/nio/file/Path;ZI)V
    .registers 10
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "haveFlags"    # Z
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 186
    .local v1, "file":Lsun/nio/fs/UnixPath;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 187
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_17

    .line 188
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v1}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->checkDelete()V

    .line 191
    :cond_17
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_20
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-nez v4, :cond_39

    .line 194
    new-instance v4, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v4}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v4
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2e

    .line 220
    :catchall_2e
    move-exception v4

    .line 221
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    throw v4

    .line 196
    :cond_39
    if-nez p2, :cond_4b

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :try_start_3c
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_42
    .catch Lsun/nio/fs/UnixException; {:try_start_3c .. :try_end_42} :catch_5e
    .catchall {:try_start_3c .. :try_end_42} :catchall_2e

    move-result-object v0

    .line 207
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_43
    :try_start_43
    invoke-virtual {v0}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_2e

    move-result v4

    if-eqz v4, :cond_63

    const/16 p3, 0x200

    .line 211
    :cond_4b
    :goto_4b
    :try_start_4b
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    invoke-static {v4, v5, p3}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat(I[BI)V
    :try_end_54
    .catch Lsun/nio/fs/UnixException; {:try_start_4b .. :try_end_54} :catch_65
    .catchall {:try_start_4b .. :try_end_54} :catchall_2e

    .line 221
    :goto_54
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 223
    return-void

    .line 204
    .restart local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_5e
    move-exception v3

    .line 205
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_5f
    invoke-virtual {v3, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_43

    .line 207
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v3    # "x":Lsun/nio/fs/UnixException;
    :cond_63
    const/4 p3, 0x0

    goto :goto_4b

    .line 212
    :catch_65
    move-exception v3

    .line 213
    .restart local v3    # "x":Lsun/nio/fs/UnixException;
    and-int/lit16 v4, p3, 0x200

    if-eqz v4, :cond_81

    .line 214
    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v4, v5, :cond_7a

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v4, v5, :cond_81

    .line 215
    :cond_7a
    new-instance v4, Ljava/nio/file/DirectoryNotEmptyException;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_81
    invoke-virtual {v3, v1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_84
    .catchall {:try_start_5f .. :try_end_84} :catchall_2e

    goto :goto_54
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
    .line 70
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_9
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->closeImpl()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 73
    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_25

    .line 76
    :cond_16
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 80
    return-void

    .line 75
    :catchall_25
    move-exception v0

    .line 76
    iget-object v1, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v1}, Lsun/nio/fs/UnixDirectoryStream;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    throw v0
.end method

.method public bridge synthetic deleteDirectory(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->deleteDirectory(Ljava/nio/file/Path;)V

    return-void
.end method

.method public deleteDirectory(Ljava/nio/file/Path;)V
    .registers 4
    .param p1, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v0, 0x1

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->implDelete(Ljava/nio/file/Path;ZI)V

    .line 233
    return-void
.end method

.method public bridge synthetic deleteFile(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->deleteFile(Ljava/nio/file/Path;)V

    return-void
.end method

.method public deleteFile(Ljava/nio/file/Path;)V
    .registers 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->implDelete(Ljava/nio/file/Path;ZI)V

    .line 228
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 575
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 578
    :cond_9
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream;->close()V

    .line 579
    return-void
.end method

.method public getFileAttributeView(Ljava/lang/Class;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 5

    .prologue
    .line 307
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    return-object v0
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .registers 7
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class",
            "<TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 316
    .local v0, "file":Lsun/nio/fs/UnixPath;
    invoke-static {p3}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 317
    .local v1, "followLinks":Z
    invoke-direct {p0, v0, p2, v1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getFileAttributeViewImpl(Lsun/nio/fs/UnixPath;Ljava/lang/Class;Z)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    return-object v2
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
    .line 84
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0, p0}, Lsun/nio/fs/UnixDirectoryStream;->iterator(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic move(Ljava/lang/Object;Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    check-cast p1, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->move(Ljava/nio/file/Path;Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)V

    return-void
.end method

.method public move(Ljava/nio/file/Path;Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)V
    .registers 13
    .param p1, "fromObj"    # Ljava/nio/file/Path;
    .param p3, "toObj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/SecureDirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "dir":Ljava/nio/file/SecureDirectoryStream;, "Ljava/nio/file/SecureDirectoryStream<Ljava/nio/file/Path;>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 243
    .local v0, "from":Lsun/nio/fs/UnixPath;
    invoke-direct {p0, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    .line 244
    .local v3, "to":Lsun/nio/fs/UnixPath;
    if-nez p2, :cond_10

    .line 245
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 246
    :cond_10
    instance-of v5, p2, Lsun/nio/fs/UnixSecureDirectoryStream;

    if-nez v5, :cond_1a

    .line 247
    new-instance v5, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v5}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v5

    :cond_1a
    move-object v2, p2

    .line 248
    check-cast v2, Lsun/nio/fs/UnixSecureDirectoryStream;

    .line 251
    .local v2, "that":Lsun/nio/fs/UnixSecureDirectoryStream;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 252
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_3d

    .line 253
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 254
    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5, v3}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v5

    invoke-virtual {v5}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 258
    :cond_3d
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 260
    :try_start_46
    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_72

    .line 262
    :try_start_4f
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_61

    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7d

    .line 263
    :cond_61
    new-instance v5, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v5}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v5
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_67

    .line 273
    :catchall_67
    move-exception v5

    .line 274
    :try_start_68
    iget-object v6, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v6}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 273
    throw v5
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_72

    .line 276
    :catchall_72
    move-exception v5

    .line 277
    iget-object v6, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v6}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    throw v5

    .line 265
    :cond_7d
    :try_start_7d
    iget v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v6

    iget v7, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lsun/nio/fs/UnixNativeDispatcher;->renameat(I[BI[B)V
    :try_end_8c
    .catch Lsun/nio/fs/UnixException; {:try_start_7d .. :try_end_8c} :catch_9f
    .catchall {:try_start_7d .. :try_end_8c} :catchall_67

    .line 274
    :goto_8c
    :try_start_8c
    iget-object v5, v2, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_72

    .line 277
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 279
    return-void

    .line 266
    :catch_9f
    move-exception v4

    .line 267
    .local v4, "x":Lsun/nio/fs/UnixException;
    :try_start_a0
    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errno()I

    move-result v5

    sget v6, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-ne v5, v6, :cond_ba

    .line 268
    new-instance v5, Ljava/nio/file/AtomicMoveNotSupportedException;

    .line 269
    invoke-virtual {v0}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v8

    .line 268
    invoke-direct {v5, v6, v7, v8}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 271
    :cond_ba
    invoke-virtual {v4, v0, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_bd
    .catchall {:try_start_a0 .. :try_end_bd} :catchall_67

    goto :goto_8c
.end method

.method public bridge synthetic newByteChannel(Ljava/lang/Object;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .registers 10
    .param p1, "obj"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute",
            "<*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    .local p3, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v0

    .line 156
    .local v0, "file":Lsun/nio/fs/UnixPath;
    sget v4, Lsun/nio/fs/UnixFileModeAttribute;->ALL_READWRITE:I

    .line 155
    invoke-static {v4, p3}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(I[Ljava/nio/file/attribute/FileAttribute;)I

    move-result v1

    .line 159
    .local v1, "mode":I
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4, v0}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "pathToCheck":Ljava/lang/String;
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 163
    :try_start_21
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 164
    new-instance v4, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v4}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v4
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2f

    .line 171
    :catchall_2f
    move-exception v4

    .line 172
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    throw v4

    .line 166
    :cond_3a
    :try_start_3a
    iget v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-static {v4, v0, v2, p2, v1}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    :try_end_3f
    .catch Lsun/nio/fs/UnixException; {:try_start_3a .. :try_end_3f} :catch_4a
    .catchall {:try_start_3a .. :try_end_3f} :catchall_2f

    move-result-object v4

    .line 172
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    return-object v4

    .line 167
    :catch_4a
    move-exception v3

    .line 168
    .local v3, "x":Lsun/nio/fs/UnixException;
    :try_start_4b
    invoke-virtual {v3, v0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_2f

    .line 169
    const/4 v4, 0x0

    .line 172
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 169
    return-object v4
.end method

.method public bridge synthetic newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lsun/nio/fs/UnixSecureDirectoryStream;->newDirectoryStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public varargs newDirectoryStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;
    .registers 16
    .param p1, "obj"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/nio/file/SecureDirectoryStream",
            "<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lsun/nio/fs/UnixSecureDirectoryStream;->getName(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v6

    .line 104
    .local v6, "file":Lsun/nio/fs/UnixPath;
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v0

    invoke-virtual {v0, v6}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v1

    .line 105
    .local v1, "child":Lsun/nio/fs/UnixPath;
    invoke-static {p2}, Lsun/nio/fs/Util;->followLinks([Ljava/nio/file/LinkOption;)Z

    move-result v8

    .line 108
    .local v8, "followLinks":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v10

    .line 109
    .local v10, "sm":Ljava/lang/SecurityManager;
    if-eqz v10, :cond_1b

    .line 110
    invoke-virtual {v1}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 113
    :cond_1b
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 115
    :try_start_24
    iget-object v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v0}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 116
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_32

    .line 139
    :catchall_32
    move-exception v0

    .line 140
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    throw v0

    .line 119
    :cond_3d
    const/4 v9, -0x1

    .line 120
    .local v9, "newdfd1":I
    const/4 v4, -0x1

    .line 121
    .local v4, "newdfd2":I
    const-wide/16 v2, 0x0

    .line 123
    .local v2, "ptr":J
    :try_start_41
    sget v7, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 124
    .local v7, "flags":I
    if-nez v8, :cond_48

    .line 125
    sget v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v7, v0

    .line 126
    :cond_48
    iget v0, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->dfd:I

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v0, v5, v7, v12}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I

    move-result v9

    .line 127
    invoke-static {v9}, Lsun/nio/fs/UnixNativeDispatcher;->dup(I)I

    move-result v4

    .line 128
    invoke-static {v9}, Lsun/nio/fs/UnixNativeDispatcher;->fdopendir(I)J
    :try_end_5a
    .catch Lsun/nio/fs/UnixException; {:try_start_41 .. :try_end_5a} :catch_6b
    .catchall {:try_start_41 .. :try_end_5a} :catchall_32

    move-result-wide v2

    .line 138
    .end local v7    # "flags":I
    :goto_5b
    :try_start_5b
    new-instance v0, Lsun/nio/fs/UnixSecureDirectoryStream;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/nio/fs/UnixSecureDirectoryStream;-><init>(Lsun/nio/fs/UnixPath;JILjava/nio/file/DirectoryStream$Filter;)V
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_32

    .line 140
    iget-object v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream;->ds:Lsun/nio/fs/UnixDirectoryStream;

    invoke-virtual {v5}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    return-object v0

    .line 129
    :catch_6b
    move-exception v11

    .line 130
    .local v11, "x":Lsun/nio/fs/UnixException;
    const/4 v0, -0x1

    if-eq v9, v0, :cond_72

    .line 131
    :try_start_6f
    invoke-static {v9}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 132
    :cond_72
    const/4 v0, -0x1

    if-eq v4, v0, :cond_78

    .line 133
    invoke-static {v4}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 134
    :cond_78
    invoke-virtual {v11}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v5, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    if-ne v0, v5, :cond_8a

    .line 135
    new-instance v0, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {v6}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_8a
    invoke-virtual {v11, v6}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_8d
    .catchall {:try_start_6f .. :try_end_8d} :catchall_32

    goto :goto_5b
.end method
