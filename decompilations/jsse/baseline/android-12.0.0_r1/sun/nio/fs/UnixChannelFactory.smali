.class Lsun/nio/fs/UnixChannelFactory;
.super Ljava/lang/Object;
.source "UnixChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixChannelFactory$Flags;
    }
.end annotation


# static fields
.field private static final blacklist fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    .line 47
    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static blacklist newAsynchronousFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;ILsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 8
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "mode"    # I
    .param p3, "pool"    # Lsun/nio/ch/ThreadPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;I",
            "Lsun/nio/ch/ThreadPool;",
            ")",
            "Ljava/nio/channels/AsynchronousFileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 160
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    invoke-static {p1}, Lsun/nio/fs/UnixChannelFactory$Flags;->toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;

    move-result-object v0

    .line 163
    .local v0, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-nez v1, :cond_f

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    .line 168
    :cond_f
    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-nez v1, :cond_22

    .line 172
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0, p2}, Lsun/nio/fs/UnixChannelFactory;->open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 173
    .local v1, "fdObj":Ljava/io/FileDescriptor;
    iget-boolean v2, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    iget-boolean v3, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    invoke-static {v1, v2, v3, p3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->open(Ljava/io/FileDescriptor;ZZLsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v2

    return-object v2

    .line 169
    .end local v1    # "fdObj":Ljava/io/FileDescriptor;
    :cond_22
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "APPEND not allowed"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist newFileChannel(ILjava/lang/String;ZZ)Ljava/nio/channels/FileChannel;
    .registers 6
    .param p0, "fd"    # I
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reading"    # Z
    .param p3, "writing"    # Z

    .line 104
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 105
    .local v0, "fdObj":Ljava/io/FileDescriptor;
    sget-object v1, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    invoke-interface {v1, v0, p0}, Lsun/misc/JavaIOFileDescriptorAccess;->set(Ljava/io/FileDescriptor;I)V

    .line 106
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method static blacklist newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    .registers 14
    .param p0, "dfd"    # I
    .param p1, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "pathForPermissionCheck"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;I)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 119
    .local p3, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    invoke-static {p3}, Lsun/nio/fs/UnixChannelFactory$Flags;->toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;

    move-result-object v0

    .line 122
    .local v0, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-nez v1, :cond_16

    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-nez v1, :cond_16

    .line 123
    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 124
    iput-boolean v2, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    goto :goto_16

    .line 126
    :cond_14
    iput-boolean v2, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    .line 131
    :cond_16
    :goto_16
    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-nez v1, :cond_1f

    goto :goto_27

    .line 132
    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "READ + APPEND not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_27
    :goto_27
    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_38

    iget-boolean v1, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    if-nez v1, :cond_30

    goto :goto_38

    .line 134
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_38
    :goto_38
    invoke-static {p0, p1, p2, v0, p4}, Lsun/nio/fs/UnixChannelFactory;->open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 137
    .local v1, "fdObj":Ljava/io/FileDescriptor;
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    iget-boolean v6, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    iget-boolean v7, v0, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    const/4 v8, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v2

    return-object v2
.end method

.method static blacklist newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;I)",
            "Ljava/nio/channels/FileChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 148
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;
    .registers 12
    .param p0, "dfd"    # I
    .param p1, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "pathForPermissionCheck"    # Ljava/lang/String;
    .param p3, "flags"    # Lsun/nio/fs/UnixChannelFactory$Flags;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 189
    iget-boolean v0, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v0, :cond_b

    .line 190
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDWR:I

    .local v0, "oflags":I
    goto :goto_14

    .line 192
    .end local v0    # "oflags":I
    :cond_b
    iget-boolean v0, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v0, :cond_12

    sget v0, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    goto :goto_14

    :cond_12
    sget v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 194
    .restart local v0    # "oflags":I
    :goto_14
    iget-boolean v1, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v1, :cond_5a

    .line 195
    iget-boolean v1, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    if-eqz v1, :cond_1f

    .line 196
    sget v1, Lsun/nio/fs/UnixConstants;->O_TRUNC:I

    or-int/2addr v0, v1

    .line 197
    :cond_1f
    iget-boolean v1, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_26

    .line 198
    sget v1, Lsun/nio/fs/UnixConstants;->O_APPEND:I

    or-int/2addr v0, v1

    .line 201
    :cond_26
    iget-boolean v1, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-eqz v1, :cond_53

    .line 202
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v1

    .line 205
    .local v1, "pathForSysCall":[B
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, v1, v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_4c

    array-length v2, v1

    if-eq v2, v3, :cond_44

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, v1, v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_44

    goto :goto_4c

    .line 209
    :cond_44
    new-instance v2, Lsun/nio/fs/UnixException;

    sget v3, Lsun/nio/fs/UnixConstants;->EEXIST:I

    invoke-direct {v2, v3}, Lsun/nio/fs/UnixException;-><init>(I)V

    throw v2

    .line 211
    :cond_4c
    :goto_4c
    sget v2, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    sget v3, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 212
    .end local v1    # "pathForSysCall":[B
    goto :goto_5a

    .line 213
    :cond_53
    iget-boolean v1, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    if-eqz v1, :cond_5a

    .line 214
    sget v1, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    or-int/2addr v0, v1

    .line 219
    :cond_5a
    :goto_5a
    const/4 v1, 0x1

    .line 220
    .local v1, "followLinks":Z
    iget-boolean v2, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    const/4 v3, 0x0

    if-nez v2, :cond_96

    iget-boolean v2, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->noFollowLinks:Z

    if-nez v2, :cond_68

    iget-boolean v2, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v2, :cond_96

    .line 221
    :cond_68
    iget-boolean v2, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v2, :cond_92

    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v2, :cond_92

    .line 223
    :try_start_70
    invoke-static {p1, v3}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v2

    if-nez v2, :cond_7b

    .line 228
    goto :goto_92

    .line 224
    :cond_7b
    new-instance v2, Lsun/nio/fs/UnixException;

    const-string v4, "DELETE_ON_CLOSE specified and file is a symbolic link"

    invoke-direct {v2, v4}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    .end local v0    # "oflags":I
    .end local v1    # "followLinks":Z
    .end local p0    # "dfd":I
    .end local p1    # "path":Lsun/nio/fs/UnixPath;
    .end local p2    # "pathForPermissionCheck":Ljava/lang/String;
    .end local p3    # "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    .end local p4    # "mode":I
    throw v2
    :try_end_83
    .catch Lsun/nio/fs/UnixException; {:try_start_70 .. :try_end_83} :catch_83

    .line 225
    .restart local v0    # "oflags":I
    .restart local v1    # "followLinks":Z
    .restart local p0    # "dfd":I
    .restart local p1    # "path":Lsun/nio/fs/UnixPath;
    .restart local p2    # "pathForPermissionCheck":Ljava/lang/String;
    .restart local p3    # "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    .restart local p4    # "mode":I
    :catch_83
    move-exception v2

    .line 226
    .local v2, "x":Lsun/nio/fs/UnixException;
    iget-boolean v4, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    if-eqz v4, :cond_91

    invoke-virtual {v2}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-ne v4, v5, :cond_91

    goto :goto_92

    .line 227
    :cond_91
    throw v2

    .line 230
    .end local v2    # "x":Lsun/nio/fs/UnixException;
    :cond_92
    :goto_92
    const/4 v1, 0x0

    .line 231
    sget v2, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v0, v2

    .line 234
    :cond_96
    iget-boolean v2, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->dsync:Z

    if-eqz v2, :cond_9d

    .line 235
    sget v2, Lsun/nio/fs/UnixConstants;->O_DSYNC:I

    or-int/2addr v0, v2

    .line 236
    :cond_9d
    iget-boolean v2, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->sync:Z

    if-eqz v2, :cond_a4

    .line 237
    sget v2, Lsun/nio/fs/UnixConstants;->O_SYNC:I

    or-int/2addr v0, v2

    .line 240
    :cond_a4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 241
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_c5

    .line 242
    if-nez p2, :cond_b0

    .line 243
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object p2

    .line 244
    :cond_b0
    iget-boolean v4, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v4, :cond_b7

    .line 245
    invoke-virtual {v2, p2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 246
    :cond_b7
    iget-boolean v4, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v4, :cond_be

    .line 247
    invoke-virtual {v2, p2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 248
    :cond_be
    iget-boolean v4, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v4, :cond_c5

    .line 249
    invoke-virtual {v2, p2}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 254
    :cond_c5
    if-ltz p0, :cond_d0

    .line 255
    :try_start_c7
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v4

    invoke-static {p0, v4, v0, p4}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I

    move-result v4

    .local v4, "fd":I
    goto :goto_d4

    .line 257
    .end local v4    # "fd":I
    :cond_d0
    invoke-static {p1, v0, p4}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I

    move-result v4
    :try_end_d4
    .catch Lsun/nio/fs/UnixException; {:try_start_c7 .. :try_end_d4} :catch_f3

    .line 271
    .restart local v4    # "fd":I
    :goto_d4
    nop

    .line 276
    iget-boolean v5, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v5, :cond_e8

    .line 278
    if-ltz p0, :cond_e3

    .line 279
    :try_start_db
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    invoke-static {p0, v5, v3}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat(I[BI)V

    goto :goto_e6

    .line 281
    :cond_e3
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_e6
    .catch Lsun/nio/fs/UnixException; {:try_start_db .. :try_end_e6} :catch_e7

    .line 285
    :goto_e6
    goto :goto_e8

    .line 283
    :catch_e7
    move-exception v3

    .line 289
    :cond_e8
    :goto_e8
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 290
    .local v3, "fdObj":Ljava/io/FileDescriptor;
    sget-object v5, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    invoke-interface {v5, v3, v4}, Lsun/misc/JavaIOFileDescriptorAccess;->set(Ljava/io/FileDescriptor;I)V

    .line 291
    return-object v3

    .line 259
    .end local v3    # "fdObj":Ljava/io/FileDescriptor;
    .end local v4    # "fd":I
    :catch_f3
    move-exception v3

    .line 261
    .local v3, "x":Lsun/nio/fs/UnixException;
    iget-boolean v4, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-eqz v4, :cond_105

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-ne v4, v5, :cond_105

    .line 262
    sget v4, Lsun/nio/fs/UnixConstants;->EEXIST:I

    invoke-virtual {v3, v4}, Lsun/nio/fs/UnixException;->setError(I)V

    .line 266
    :cond_105
    if-nez v1, :cond_12a

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->errno()I

    move-result v4

    sget v5, Lsun/nio/fs/UnixConstants;->ELOOP:I

    if-ne v4, v5, :cond_12a

    .line 267
    new-instance v4, Lsun/nio/fs/UnixException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (NOFOLLOW_LINKS specified)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 270
    :cond_12a
    throw v3
.end method
