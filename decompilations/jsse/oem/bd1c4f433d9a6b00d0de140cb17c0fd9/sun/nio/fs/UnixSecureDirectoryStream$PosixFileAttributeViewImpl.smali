.class Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;
.super Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;
.source "UnixSecureDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributeView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/fs/UnixSecureDirectoryStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PosixFileAttributeViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/fs/UnixSecureDirectoryStream;


# direct methods
.method constructor <init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V
    .registers 4
    .param p1, "this$0"    # Lsun/nio/fs/UnixSecureDirectoryStream;
    .param p2, "file"    # Lsun/nio/fs/UnixPath;
    .param p3, "followLinks"    # Z

    .prologue
    .line 445
    iput-object p1, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    .line 446
    invoke-direct {p0, p1, p2, p3}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;-><init>(Lsun/nio/fs/UnixSecureDirectoryStream;Lsun/nio/fs/UnixPath;Z)V

    .line 447
    return-void
.end method

.method private checkWriteAndUserAccess()V
    .registers 4

    .prologue
    .line 450
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 451
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_14

    .line 452
    invoke-static {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;->-wrap0(Lsun/nio/fs/UnixSecureDirectoryStream$BasicFileAttributeViewImpl;)V

    .line 453
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "accessUserInformation"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 455
    :cond_14
    return-void
.end method

.method private setOwners(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->checkWriteAndUserAccess()V

    .line 522
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 524
    :try_start_10
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v2

    if-nez v2, :cond_31

    .line 525
    new-instance v2, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v2}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v2
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_22

    .line 536
    :catchall_22
    move-exception v2

    .line 537
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 536
    throw v2

    .line 527
    :cond_31
    :try_start_31
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v2, :cond_55

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_22

    move-result v0

    .line 529
    .local v0, "fd":I
    :goto_3b
    :try_start_3b
    invoke-static {v0, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V
    :try_end_3e
    .catch Lsun/nio/fs/UnixException; {:try_start_3b .. :try_end_3e} :catch_5a
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6a

    .line 533
    :try_start_3e
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_47

    if-ltz v0, :cond_47

    .line 534
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_22

    .line 537
    :cond_47
    :goto_47
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 539
    return-void

    .line 527
    .end local v0    # "fd":I
    :cond_55
    :try_start_55
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->open()I
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_22

    move-result v0

    .restart local v0    # "fd":I
    goto :goto_3b

    .line 530
    :catch_5a
    move-exception v1

    .line 531
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_5b
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_6a

    .line 533
    :try_start_60
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_47

    if-ltz v0, :cond_47

    .line 534
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    goto :goto_47

    .line 532
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catchall_6a
    move-exception v2

    .line 533
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v3, :cond_74

    if-ltz v0, :cond_74

    .line 534
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 532
    :cond_74
    throw v2
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_22
.end method


# virtual methods
.method public getOwner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 459
    const-string/jumbo v0, "posix"

    return-object v0
.end method

.method public bridge synthetic readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 464
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 465
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_23

    .line 466
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_51

    .line 467
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 470
    :goto_18
    new-instance v3, Ljava/lang/RuntimePermission;

    const-string/jumbo v4, "accessUserInformation"

    invoke-direct {v3, v4}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 473
    :cond_23
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 475
    :try_start_30
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v3

    if-nez v3, :cond_65

    .line 476
    new-instance v3, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v3}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v3
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_42

    .line 487
    :catchall_42
    move-exception v3

    .line 488
    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v4}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v4

    invoke-virtual {v4}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 487
    throw v3

    .line 469
    :cond_51
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->directory()Lsun/nio/fs/UnixPath;

    move-result-object v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixPath;->resolve(Ljava/nio/file/Path;)Lsun/nio/fs/UnixPath;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixPath;->checkRead()V

    goto :goto_18

    .line 479
    :cond_65
    :try_start_65
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v3, :cond_81

    .line 480
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    invoke-static {v3}, Lsun/nio/fs/UnixFileAttributes;->get(I)Lsun/nio/fs/UnixFileAttributes;
    :try_end_72
    .catch Lsun/nio/fs/UnixException; {:try_start_65 .. :try_end_72} :catch_90
    .catchall {:try_start_65 .. :try_end_72} :catchall_42

    move-result-object v0

    .line 488
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_73
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 482
    return-object v0

    .line 481
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :cond_81
    :try_start_81
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I

    move-result v3

    iget-object v4, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    iget-boolean v5, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->followLinks:Z

    invoke-static {v3, v4, v5}, Lsun/nio/fs/UnixFileAttributes;->get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_8e
    .catch Lsun/nio/fs/UnixException; {:try_start_81 .. :try_end_8e} :catch_90
    .catchall {:try_start_81 .. :try_end_8e} :catchall_42

    move-result-object v0

    .restart local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    goto :goto_73

    .line 483
    .end local v0    # "attrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_90
    move-exception v2

    .line 484
    .local v2, "x":Lsun/nio/fs/UnixException;
    :try_start_91
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v2, v3}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_42

    .line 488
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 485
    return-object v6
.end method

.method public setGroup(Ljava/nio/file/attribute/GroupPrincipal;)V
    .registers 4
    .param p1, "group"    # Ljava/nio/file/attribute/GroupPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-nez v1, :cond_a

    .line 563
    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    .line 564
    :cond_a
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    .end local p1    # "group":Ljava/nio/file/attribute/GroupPrincipal;
    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$Group;->gid()I

    move-result v0

    .line 565
    .local v0, "gid":I
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->setOwners(II)V

    .line 566
    return-void
.end method

.method public setOwner(Ljava/nio/file/attribute/UserPrincipal;)V
    .registers 5
    .param p1, "owner"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$User;

    if-nez v1, :cond_a

    .line 551
    new-instance v1, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {v1}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw v1

    .line 552
    :cond_a
    instance-of v1, p1, Lsun/nio/fs/UnixUserPrincipals$Group;

    if-eqz v1, :cond_17

    .line 553
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "\'owner\' parameter can\'t be a group"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_17
    check-cast p1, Lsun/nio/fs/UnixUserPrincipals$User;

    .end local p1    # "owner":Ljava/nio/file/attribute/UserPrincipal;
    invoke-virtual {p1}, Lsun/nio/fs/UnixUserPrincipals$User;->uid()I

    move-result v0

    .line 555
    .local v0, "uid":I
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->setOwners(II)V

    .line 556
    return-void
.end method

.method public setPermissions(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-direct {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->checkWriteAndUserAccess()V

    .line 499
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 501
    :try_start_10
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->isOpen()Z

    move-result v2

    if-nez v2, :cond_31

    .line 502
    new-instance v2, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v2}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v2
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_22

    .line 513
    :catchall_22
    move-exception v2

    .line 514
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v3}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 513
    throw v2

    .line 504
    :cond_31
    :try_start_31
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-nez v2, :cond_59

    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get0(Lsun/nio/fs/UnixSecureDirectoryStream;)I
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_22

    move-result v0

    .line 506
    .local v0, "fd":I
    :goto_3b
    :try_start_3b
    invoke-static {p1}, Lsun/nio/fs/UnixFileModeAttribute;->toUnixMode(Ljava/util/Set;)I

    move-result v2

    invoke-static {v0, v2}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_42
    .catch Lsun/nio/fs/UnixException; {:try_start_3b .. :try_end_42} :catch_5e
    .catchall {:try_start_3b .. :try_end_42} :catchall_6e

    .line 510
    :try_start_42
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_4b

    if-ltz v0, :cond_4b

    .line 511
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_22

    .line 514
    :cond_4b
    :goto_4b
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->this$0:Lsun/nio/fs/UnixSecureDirectoryStream;

    invoke-static {v2}, Lsun/nio/fs/UnixSecureDirectoryStream;->-get1(Lsun/nio/fs/UnixSecureDirectoryStream;)Lsun/nio/fs/UnixDirectoryStream;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixDirectoryStream;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 516
    return-void

    .line 504
    .end local v0    # "fd":I
    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->open()I
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_22

    move-result v0

    .restart local v0    # "fd":I
    goto :goto_3b

    .line 507
    :catch_5e
    move-exception v1

    .line 508
    .local v1, "x":Lsun/nio/fs/UnixException;
    :try_start_5f
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    invoke-virtual {v1, v2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_6e

    .line 510
    :try_start_64
    iget-object v2, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v2, :cond_4b

    if-ltz v0, :cond_4b

    .line 511
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    goto :goto_4b

    .line 509
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catchall_6e
    move-exception v2

    .line 510
    iget-object v3, p0, Lsun/nio/fs/UnixSecureDirectoryStream$PosixFileAttributeViewImpl;->file:Lsun/nio/fs/UnixPath;

    if-eqz v3, :cond_78

    if-ltz v0, :cond_78

    .line 511
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 509
    :cond_78
    throw v2
    :try_end_79
    .catchall {:try_start_64 .. :try_end_79} :catchall_22
.end method
