.class Lsun/nio/fs/UnixCopyFile;
.super Ljava/lang/Object;
.source "UnixCopyFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixCopyFile$Flags;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .registers 6
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .param p4, "addressToPollForCancel"    # J

    .prologue
    invoke-static/range {p0 .. p5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs copy(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .registers 17
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "target"    # Lsun/nio/fs/UnixPath;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v9

    .line 511
    .local v9, "sm":Ljava/lang/SecurityManager;
    if-eqz v9, :cond_c

    .line 512
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkRead()V

    .line 513
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 517
    :cond_c
    invoke-static/range {p2 .. p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromCopyOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v3

    .line 519
    .local v3, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    const/4 v1, 0x0

    .line 520
    .local v1, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v11, 0x0

    .line 524
    .local v11, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :try_start_12
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->followLinks:Z

    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_17
    .catch Lsun/nio/fs/UnixException; {:try_start_12 .. :try_end_17} :catch_3c

    move-result-object v1

    .line 530
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_18
    if-eqz v9, :cond_2b

    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 531
    new-instance v0, Ljava/nio/file/LinkPermission;

    const-string/jumbo v2, "symbolic"

    invoke-direct {v0, v2}, Ljava/nio/file/LinkPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 536
    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    invoke-static {p1, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_2f
    .catch Lsun/nio/fs/UnixException; {:try_start_2c .. :try_end_2f} :catch_41

    move-result-object v11

    .line 540
    .end local v11    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_30
    if-eqz v11, :cond_43

    const/4 v12, 0x1

    .line 546
    .local v12, "targetExists":Z
    :goto_33
    if-eqz v12, :cond_5c

    .line 547
    invoke-virtual {v1, v11}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 548
    return-void

    .line 525
    .end local v12    # "targetExists":Z
    .restart local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local v11    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_3c
    move-exception v13

    .line 526
    .local v13, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v13, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_18

    .line 537
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v13    # "x":Lsun/nio/fs/UnixException;
    :catch_41
    move-exception v13

    .restart local v13    # "x":Lsun/nio/fs/UnixException;
    goto :goto_30

    .line 540
    .end local v11    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v13    # "x":Lsun/nio/fs/UnixException;
    :cond_43
    const/4 v12, 0x0

    .restart local v12    # "targetExists":Z
    goto :goto_33

    .line 549
    :cond_45
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-nez v0, :cond_53

    .line 550
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    .line 551
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-direct {v0, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_53
    :try_start_53
    invoke-virtual {v11}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 554
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_5c
    .catch Lsun/nio/fs/UnixException; {:try_start_53 .. :try_end_5c} :catch_6a

    .line 571
    :cond_5c
    :goto_5c
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 572
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 573
    return-void

    .line 556
    :cond_66
    :try_start_66
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_69
    .catch Lsun/nio/fs/UnixException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_5c

    .line 558
    :catch_6a
    move-exception v13

    .line 560
    .restart local v13    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v11}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 561
    invoke-virtual {v13}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_81

    invoke-virtual {v13}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_8b

    .line 563
    :cond_81
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    .line 564
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_8b
    invoke-virtual {v13, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_5c

    .line 575
    .end local v13    # "x":Lsun/nio/fs/UnixException;
    :cond_8f
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 576
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 577
    return-void

    .line 579
    :cond_99
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->interruptible:Z

    if-nez v0, :cond_a5

    .line 581
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    .line 582
    return-void

    .line 586
    :cond_a5
    move-object v6, v1

    .line 587
    .local v6, "attrsToCopy":Lsun/nio/fs/UnixFileAttributes;
    new-instance v7, Lsun/nio/fs/UnixCopyFile$1;

    invoke-direct {v7, p0, v6, p1, v3}, Lsun/nio/fs/UnixCopyFile$1;-><init>(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 594
    .local v7, "copyTask":Lsun/nio/fs/Cancellable;
    :try_start_ab
    invoke-static {v7}, Lsun/nio/fs/Cancellable;->runInterruptibly(Lsun/nio/fs/Cancellable;)V
    :try_end_ae
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 601
    return-void

    .line 595
    :catch_af
    move-exception v8

    .line 596
    .local v8, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    .line 597
    .local v10, "t":Ljava/lang/Throwable;
    instance-of v0, v10, Ljava/io/IOException;

    if-eqz v0, :cond_bb

    .line 598
    check-cast v10, Ljava/io/IOException;

    .end local v10    # "t":Ljava/lang/Throwable;
    throw v10

    .line 599
    .restart local v10    # "t":Ljava/lang/Throwable;
    :cond_bb
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 14
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {p2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir(Lsun/nio/fs/UnixPath;I)V
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_7} :catch_18

    .line 140
    :goto_7
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z

    if-nez v5, :cond_1d

    .line 141
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z

    xor-int/lit8 v5, v5, 0x1

    .line 140
    if-eqz v5, :cond_1d

    .line 142
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    xor-int/lit8 v5, v5, 0x1

    .line 140
    if-eqz v5, :cond_1d

    .line 142
    return-void

    .line 135
    :catch_18
    move-exception v4

    .line 136
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_7

    .line 146
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_1d
    const/4 v0, -0x1

    .line 148
    .local v0, "dfd":I
    :try_start_1e
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_24
    .catch Lsun/nio/fs/UnixException; {:try_start_1e .. :try_end_24} :catch_87

    move-result v0

    .line 157
    :cond_25
    :goto_25
    const/4 v1, 0x0

    .line 160
    .local v1, "done":Z
    :try_start_26
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_b5

    if-eqz v5, :cond_3e

    .line 162
    if-ltz v0, :cond_99

    .line 163
    :try_start_2c
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {v0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    .line 164
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {v0, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_3e
    .catch Lsun/nio/fs/UnixException; {:try_start_2c .. :try_end_3e} :catch_ac
    .catchall {:try_start_2c .. :try_end_3e} :catchall_b5

    .line 176
    :cond_3e
    :goto_3e
    :try_start_3e
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_b5

    if-eqz v5, :cond_58

    if-ltz v0, :cond_58

    .line 177
    const/4 v3, -0x1

    .line 179
    .local v3, "sfd":I
    :try_start_45
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_4b
    .catch Lsun/nio/fs/UnixException; {:try_start_45 .. :try_end_4b} :catch_c1
    .catchall {:try_start_45 .. :try_end_4b} :catchall_b5

    move-result v3

    .line 184
    :cond_4c
    :goto_4c
    if-ltz v3, :cond_58

    .line 185
    :try_start_4e
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    .line 186
    invoke-static {v3}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 190
    .end local v3    # "sfd":I
    :cond_58
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_b5

    if-eqz v5, :cond_7b

    .line 192
    if-ltz v0, :cond_ca

    :try_start_5e
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 194
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 195
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 193
    invoke-static {v0, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_7b
    .catch Lsun/nio/fs/UnixException; {:try_start_5e .. :try_end_7b} :catch_e2
    .catchall {:try_start_5e .. :try_end_7b} :catchall_b5

    .line 207
    :cond_7b
    :goto_7b
    const/4 v1, 0x1

    .line 209
    if-ltz v0, :cond_81

    .line 210
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 211
    :cond_81
    if-nez v1, :cond_86

    .line 213
    :try_start_83
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_86
    .catch Lsun/nio/fs/UnixException; {:try_start_83 .. :try_end_86} :catch_eb

    .line 216
    :cond_86
    :goto_86
    return-void

    .line 149
    .end local v1    # "done":Z
    :catch_87
    move-exception v4

    .line 151
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v5, :cond_25

    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v5, :cond_25

    .line 152
    :try_start_90
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_93
    .catch Lsun/nio/fs/UnixException; {:try_start_90 .. :try_end_93} :catch_97

    .line 153
    :goto_93
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_25

    .line 152
    :catch_97
    move-exception v2

    .local v2, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_93

    .line 166
    .end local v2    # "ignore":Lsun/nio/fs/UnixException;
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .restart local v1    # "done":Z
    :cond_99
    :try_start_99
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 167
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {p2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_ab
    .catch Lsun/nio/fs/UnixException; {:try_start_99 .. :try_end_ab} :catch_ac
    .catchall {:try_start_99 .. :try_end_ab} :catchall_b5

    goto :goto_3e

    .line 169
    :catch_ac
    move-exception v4

    .line 171
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_ad
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v5, :cond_3e

    .line 172
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_b5

    goto :goto_3e

    .line 208
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catchall_b5
    move-exception v5

    .line 209
    if-ltz v0, :cond_bb

    .line 210
    invoke-static {v0}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 211
    :cond_bb
    if-nez v1, :cond_c0

    .line 213
    :try_start_bd
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_c0
    .catch Lsun/nio/fs/UnixException; {:try_start_bd .. :try_end_c0} :catch_ed

    .line 208
    :cond_c0
    :goto_c0
    throw v5

    .line 180
    .restart local v3    # "sfd":I
    :catch_c1
    move-exception v4

    .line 181
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_c2
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyNonPosix:Z

    if-eqz v5, :cond_4c

    .line 182
    invoke-virtual {v4, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_b5

    goto :goto_4c

    .line 198
    .end local v3    # "sfd":I
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_ca
    :try_start_ca
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 199
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 197
    invoke-static {p2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_e1
    .catch Lsun/nio/fs/UnixException; {:try_start_ca .. :try_end_e1} :catch_e2
    .catchall {:try_start_ca .. :try_end_e1} :catchall_b5

    goto :goto_7b

    .line 201
    :catch_e2
    move-exception v4

    .line 203
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_e3
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v5, :cond_7b

    .line 204
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_b5

    goto :goto_7b

    .line 213
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catch_eb
    move-exception v2

    .restart local v2    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_86

    .end local v2    # "ignore":Lsun/nio/fs/UnixException;
    :catch_ed
    move-exception v2

    .restart local v2    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_c0
.end method

.method private static copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V
    .registers 16
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .param p4, "addressToPollForCancel"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v1, -0x1

    .line 228
    .local v1, "fi":I
    :try_start_1
    sget v5, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_7
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_7} :catch_6c

    move-result v1

    .line 235
    :goto_8
    const/4 v2, -0x1

    .line 238
    .local v2, "fo":I
    :try_start_9
    sget v5, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    .line 239
    sget v6, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    .line 238
    or-int/2addr v5, v6

    .line 240
    sget v6, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    .line 238
    or-int/2addr v5, v6

    .line 241
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v6

    .line 237
    invoke-static {p2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_18
    .catch Lsun/nio/fs/UnixException; {:try_start_9 .. :try_end_18} :catch_71
    .catchall {:try_start_9 .. :try_end_18} :catchall_76

    move-result v2

    .line 247
    :goto_19
    const/4 v0, 0x0

    .line 251
    .local v0, "complete":Z
    :try_start_1a
    invoke-static {v2, v1, p4, p5}, Lsun/nio/fs/UnixCopyFile;->transfer(IIJ)V
    :try_end_1d
    .catch Lsun/nio/fs/UnixException; {:try_start_1a .. :try_end_1d} :catch_7b
    .catchall {:try_start_1a .. :try_end_1d} :catchall_80

    .line 256
    :goto_1d
    :try_start_1d
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_80

    if-eqz v5, :cond_33

    .line 258
    :try_start_21
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v5

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v6

    invoke-static {v2, v5, v6}, Lsun/nio/fs/UnixNativeDispatcher;->fchown(III)V

    .line 259
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v5

    invoke-static {v2, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fchmod(II)V
    :try_end_33
    .catch Lsun/nio/fs/UnixException; {:try_start_21 .. :try_end_33} :catch_8a
    .catchall {:try_start_21 .. :try_end_33} :catchall_80

    .line 266
    :cond_33
    :goto_33
    :try_start_33
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyNonPosixAttributes:Z

    if-eqz v5, :cond_3e

    .line 267
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getFileSystem()Lsun/nio/fs/UnixFileSystem;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lsun/nio/fs/UnixFileSystem;->copyNonPosixAttributes(II)V

    .line 270
    :cond_3e
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_40
    .catchall {:try_start_33 .. :try_end_40} :catchall_80

    if-eqz v5, :cond_5f

    .line 272
    :try_start_42
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->futimesSupported()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 274
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 275
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 273
    invoke-static {v2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->futimes(IJJ)V
    :try_end_5f
    .catch Lsun/nio/fs/UnixException; {:try_start_42 .. :try_end_5f} :catch_ab
    .catchall {:try_start_42 .. :try_end_5f} :catchall_80

    .line 286
    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    .line 288
    :try_start_60
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_76

    .line 291
    if-nez v0, :cond_68

    .line 293
    :try_start_65
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_68
    .catch Lsun/nio/fs/UnixException; {:try_start_65 .. :try_end_68} :catch_b4
    .catchall {:try_start_65 .. :try_end_68} :catchall_76

    .line 298
    :cond_68
    :goto_68
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 300
    return-void

    .line 229
    .end local v0    # "complete":Z
    .end local v2    # "fo":I
    :catch_6c
    move-exception v4

    .line 230
    .local v4, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v4, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_8

    .line 242
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    .restart local v2    # "fo":I
    :catch_71
    move-exception v4

    .line 243
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_72
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_19

    .line 297
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catchall_76
    move-exception v5

    .line 298
    invoke-static {v1}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V

    .line 297
    throw v5

    .line 252
    .restart local v0    # "complete":Z
    :catch_7b
    move-exception v4

    .line 253
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_7c
    invoke-virtual {v4, p0, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_1d

    .line 287
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catchall_80
    move-exception v5

    .line 288
    :try_start_81
    invoke-static {v2}, Lsun/nio/fs/UnixNativeDispatcher;->close(I)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_76

    .line 291
    if-nez v0, :cond_89

    .line 293
    :try_start_86
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_89
    .catch Lsun/nio/fs/UnixException; {:try_start_86 .. :try_end_89} :catch_b6
    .catchall {:try_start_86 .. :try_end_89} :catchall_76

    .line 287
    :cond_89
    :goto_89
    :try_start_89
    throw v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_76

    .line 260
    :catch_8a
    move-exception v4

    .line 261
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_8b
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v5, :cond_33

    .line 262
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_80

    goto :goto_33

    .line 278
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :cond_93
    :try_start_93
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 279
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    .line 277
    invoke-static {p2, v6, v7, v8, v9}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_aa
    .catch Lsun/nio/fs/UnixException; {:try_start_93 .. :try_end_aa} :catch_ab
    .catchall {:try_start_93 .. :try_end_aa} :catchall_80

    goto :goto_5f

    .line 281
    :catch_ab
    move-exception v4

    .line 282
    .restart local v4    # "x":Lsun/nio/fs/UnixException;
    :try_start_ac
    iget-boolean v5, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v5, :cond_5f

    .line 283
    invoke-virtual {v4, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_80

    goto :goto_5f

    .line 294
    .end local v4    # "x":Lsun/nio/fs/UnixException;
    :catch_b4
    move-exception v3

    .local v3, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_68

    .end local v3    # "ignore":Lsun/nio/fs/UnixException;
    :catch_b6
    move-exception v3

    .restart local v3    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_89
.end method

.method private static copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 8
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, "linktarget":[B
    :try_start_1
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->readlink(Lsun/nio/fs/UnixPath;)[B
    :try_end_4
    .catch Lsun/nio/fs/UnixException; {:try_start_1 .. :try_end_4} :catch_18

    move-result-object v0

    .line 316
    .end local v0    # "linktarget":[B
    :goto_5
    :try_start_5
    invoke-static {v0, p2}, Lsun/nio/fs/UnixNativeDispatcher;->symlink([BLsun/nio/fs/UnixPath;)V

    .line 318
    iget-boolean v2, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_a
    .catch Lsun/nio/fs/UnixException; {:try_start_5 .. :try_end_a} :catch_1d

    if-eqz v2, :cond_17

    .line 320
    :try_start_c
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v2

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v3

    invoke-static {p2, v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->lchown(Lsun/nio/fs/UnixPath;II)V
    :try_end_17
    .catch Lsun/nio/fs/UnixException; {:try_start_c .. :try_end_17} :catch_22

    .line 328
    :cond_17
    :goto_17
    return-void

    .line 312
    .restart local v0    # "linktarget":[B
    :catch_18
    move-exception v1

    .line 313
    .local v1, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_5

    .line 325
    .end local v0    # "linktarget":[B
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catch_1d
    move-exception v1

    .line 326
    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v1, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_17

    .line 321
    .end local v1    # "x":Lsun/nio/fs/UnixException;
    :catch_22
    move-exception v1

    .restart local v1    # "x":Lsun/nio/fs/UnixException;
    goto :goto_17
.end method

.method private static copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V
    .registers 12
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .param p2, "target"    # Lsun/nio/fs/UnixPath;
    .param p3, "flags"    # Lsun/nio/fs/UnixCopyFile$Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->rdev()J

    move-result-wide v4

    invoke-static {p2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->mknod(Lsun/nio/fs/UnixPath;IJ)V
    :try_end_b
    .catch Lsun/nio/fs/UnixException; {:try_start_0 .. :try_end_b} :catch_44

    .line 342
    :goto_b
    const/4 v0, 0x0

    .line 344
    .local v0, "done":Z
    :try_start_c
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyPosixAttributes:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_52

    if-eqz v3, :cond_22

    .line 346
    :try_start_10
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->uid()I

    move-result v3

    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->gid()I

    move-result v4

    invoke-static {p2, v3, v4}, Lsun/nio/fs/UnixNativeDispatcher;->chown(Lsun/nio/fs/UnixPath;II)V

    .line 347
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->mode()I

    move-result v3

    invoke-static {p2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->chmod(Lsun/nio/fs/UnixPath;I)V
    :try_end_22
    .catch Lsun/nio/fs/UnixException; {:try_start_10 .. :try_end_22} :catch_49
    .catchall {:try_start_10 .. :try_end_22} :catchall_52

    .line 353
    :cond_22
    :goto_22
    :try_start_22
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->copyBasicAttributes:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_52

    if-eqz v3, :cond_3d

    .line 356
    :try_start_26
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 357
    invoke-virtual {p1}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 355
    invoke-static {p2, v4, v5, v6, v7}, Lsun/nio/fs/UnixNativeDispatcher;->utimes(Lsun/nio/fs/UnixPath;JJ)V
    :try_end_3d
    .catch Lsun/nio/fs/UnixException; {:try_start_26 .. :try_end_3d} :catch_59
    .catchall {:try_start_26 .. :try_end_3d} :catchall_52

    .line 363
    :cond_3d
    :goto_3d
    const/4 v0, 0x1

    .line 365
    if-nez v0, :cond_43

    .line 366
    :try_start_40
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_43
    .catch Lsun/nio/fs/UnixException; {:try_start_40 .. :try_end_43} :catch_62

    .line 369
    :cond_43
    :goto_43
    return-void

    .line 339
    .end local v0    # "done":Z
    :catch_44
    move-exception v2

    .line 340
    .local v2, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_b

    .line 348
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "done":Z
    :catch_49
    move-exception v2

    .line 349
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    :try_start_4a
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyPosix:Z

    if-eqz v3, :cond_22

    .line 350
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_52

    goto :goto_22

    .line 364
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :catchall_52
    move-exception v3

    .line 365
    if-nez v0, :cond_58

    .line 366
    :try_start_55
    invoke-static {p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_58
    .catch Lsun/nio/fs/UnixException; {:try_start_55 .. :try_end_58} :catch_64

    .line 364
    :cond_58
    :goto_58
    throw v3

    .line 358
    :catch_59
    move-exception v2

    .line 359
    .restart local v2    # "x":Lsun/nio/fs/UnixException;
    :try_start_5a
    iget-boolean v3, p3, Lsun/nio/fs/UnixCopyFile$Flags;->failIfUnableToCopyBasic:Z

    if-eqz v3, :cond_3d

    .line 360
    invoke-virtual {v2, p2}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_52

    goto :goto_3d

    .line 366
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :catch_62
    move-exception v1

    .local v1, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_43

    .end local v1    # "ignore":Lsun/nio/fs/UnixException;
    :catch_64
    move-exception v1

    .restart local v1    # "ignore":Lsun/nio/fs/UnixException;
    goto :goto_58
.end method

.method static varargs move(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;[Ljava/nio/file/CopyOption;)V
    .registers 14
    .param p0, "source"    # Lsun/nio/fs/UnixPath;
    .param p1, "target"    # Lsun/nio/fs/UnixPath;
    .param p2, "options"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 377
    .local v7, "sm":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_c

    .line 378
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 379
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->checkWrite()V

    .line 383
    :cond_c
    invoke-static {p2}, Lsun/nio/fs/UnixCopyFile$Flags;->fromMoveOptions([Ljava/nio/file/CopyOption;)Lsun/nio/fs/UnixCopyFile$Flags;

    move-result-object v3

    .line 386
    .local v3, "flags":Lsun/nio/fs/UnixCopyFile$Flags;
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->atomicMove:Z

    if-eqz v0, :cond_37

    .line 388
    :try_start_14
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_17
    .catch Lsun/nio/fs/UnixException; {:try_start_14 .. :try_end_17} :catch_18

    .line 398
    :goto_17
    return-void

    .line 389
    :catch_18
    move-exception v10

    .line 390
    .local v10, "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-ne v0, v2, :cond_33

    .line 391
    new-instance v0, Ljava/nio/file/AtomicMoveNotSupportedException;

    .line 392
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errorString()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-direct {v0, v2, v4, v5}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_33
    invoke-virtual {v10, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    goto :goto_17

    .line 402
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :cond_37
    const/4 v1, 0x0

    .line 403
    .local v1, "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v8, 0x0

    .line 407
    .local v8, "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    const/4 v0, 0x0

    :try_start_3a
    invoke-static {p0, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_3d
    .catch Lsun/nio/fs/UnixException; {:try_start_3a .. :try_end_3d} :catch_4f

    move-result-object v1

    .line 414
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_3e
    const/4 v0, 0x0

    :try_start_3f
    invoke-static {p1, v0}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    :try_end_42
    .catch Lsun/nio/fs/UnixException; {:try_start_3f .. :try_end_42} :catch_54

    move-result-object v8

    .line 418
    .end local v8    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :goto_43
    if-eqz v8, :cond_56

    const/4 v9, 0x1

    .line 424
    .local v9, "targetExists":Z
    :goto_46
    if-eqz v9, :cond_6f

    .line 425
    invoke-virtual {v1, v8}, Lsun/nio/fs/UnixFileAttributes;->isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 426
    return-void

    .line 408
    .end local v9    # "targetExists":Z
    .restart local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .restart local v8    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    :catch_4f
    move-exception v10

    .line 409
    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v10, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_3e

    .line 415
    .end local v1    # "sourceAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :catch_54
    move-exception v10

    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    goto :goto_43

    .line 418
    .end local v8    # "targetAttrs":Lsun/nio/fs/UnixFileAttributes;
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :cond_56
    const/4 v9, 0x0

    .restart local v9    # "targetExists":Z
    goto :goto_46

    .line 427
    :cond_58
    iget-boolean v0, v3, Lsun/nio/fs/UnixCopyFile$Flags;->replaceExisting:Z

    if-nez v0, :cond_66

    .line 428
    new-instance v0, Ljava/nio/file/FileAlreadyExistsException;

    .line 429
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-direct {v0, v2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_66
    :try_start_66
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 435
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_6f
    .catch Lsun/nio/fs/UnixException; {:try_start_66 .. :try_end_6f} :catch_77

    .line 453
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-static {p0, p1}, Lsun/nio/fs/UnixNativeDispatcher;->rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    :try_end_72
    .catch Lsun/nio/fs/UnixException; {:try_start_6f .. :try_end_72} :catch_9c

    .line 454
    return-void

    .line 437
    :cond_73
    :try_start_73
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_76
    .catch Lsun/nio/fs/UnixException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_6f

    .line 439
    :catch_77
    move-exception v10

    .line 441
    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v8}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 442
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_8e

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_98

    .line 444
    :cond_8e
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    .line 445
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_98
    invoke-virtual {v10, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_6f

    .line 455
    .end local v10    # "x":Lsun/nio/fs/UnixException;
    :catch_9c
    move-exception v10

    .line 456
    .restart local v10    # "x":Lsun/nio/fs/UnixException;
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EXDEV:I

    if-eq v0, v2, :cond_b0

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-eq v0, v2, :cond_b0

    .line 457
    invoke-virtual {v10, p0, p1}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V

    .line 462
    :cond_b0
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 463
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyDirectory(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    .line 478
    :goto_b9
    :try_start_b9
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 479
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_c2
    .catch Lsun/nio/fs/UnixException; {:try_start_b9 .. :try_end_c2} :catch_e3

    .line 502
    :goto_c2
    return-void

    .line 465
    :cond_c3
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 466
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copyLink(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    goto :goto_b9

    .line 468
    :cond_cd
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDevice()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 469
    invoke-static {p0, v1, p1, v3}, Lsun/nio/fs/UnixCopyFile;->copySpecial(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;)V

    goto :goto_b9

    .line 471
    :cond_d7
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixCopyFile;->copyFile(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixCopyFile$Flags;J)V

    goto :goto_b9

    .line 481
    :cond_df
    :try_start_df
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_e2
    .catch Lsun/nio/fs/UnixException; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_c2

    .line 483
    :catch_e3
    move-exception v10

    .line 487
    :try_start_e4
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 488
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir(Lsun/nio/fs/UnixPath;)V
    :try_end_ed
    .catch Lsun/nio/fs/UnixException; {:try_start_e4 .. :try_end_ed} :catch_111

    .line 494
    :goto_ed
    invoke-virtual {v1}, Lsun/nio/fs/UnixFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 495
    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->EEXIST:I

    if-eq v0, v2, :cond_103

    invoke-virtual {v10}, Lsun/nio/fs/UnixException;->errno()I

    move-result v0

    sget v2, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    if-ne v0, v2, :cond_113

    .line 497
    :cond_103
    new-instance v0, Ljava/nio/file/DirectoryNotEmptyException;

    .line 498
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getPathForExceptionMessage()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-direct {v0, v2}, Ljava/nio/file/DirectoryNotEmptyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_10d
    :try_start_10d
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_110
    .catch Lsun/nio/fs/UnixException; {:try_start_10d .. :try_end_110} :catch_111

    goto :goto_ed

    .line 492
    :catch_111
    move-exception v6

    .local v6, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_ed

    .line 500
    .end local v6    # "ignore":Lsun/nio/fs/UnixException;
    :cond_113
    invoke-virtual {v10, p0}, Lsun/nio/fs/UnixException;->rethrowAsIOException(Lsun/nio/fs/UnixPath;)V

    goto :goto_c2
.end method

.method static native transfer(IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
