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
.field private static final fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    invoke-static {}, Lsun/misc/SharedSecrets;->getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;

    move-result-object v0

    .line 47
    sput-object v0, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    .line 46
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static newAsynchronousFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;ILsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 8
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "mode"    # I
    .param p3, "pool"    # Lsun/nio/ch/ThreadPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/util/Set",
            "<+",
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

    .prologue
    .line 160
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    invoke-static {p1}, Lsun/nio/fs/UnixChannelFactory$Flags;->toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;

    move-result-object v1

    .line 163
    .local v1, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-nez v2, :cond_11

    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    .line 164
    const/4 v2, 0x1

    iput-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    .line 168
    :cond_11
    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v2, :cond_1e

    .line 169
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "APPEND not allowed"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_1e
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v1, p2}, Lsun/nio/fs/UnixChannelFactory;->open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 173
    .local v0, "fdObj":Ljava/io/FileDescriptor;
    iget-boolean v2, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    iget-boolean v3, v1, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    invoke-static {v0, v2, v3, p3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->open(Ljava/io/FileDescriptor;ZZLsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;

    move-result-object v2

    return-object v2
.end method

.method static newFileChannel(ILjava/lang/String;ZZ)Ljava/nio/channels/FileChannel;
    .registers 6
    .param p0, "fd"    # I
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reading"    # Z
    .param p3, "writing"    # Z

    .prologue
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

.method static newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    .registers 12
    .param p0, "dfd"    # I
    .param p1, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "pathForPermissionCheck"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<+",
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

    .prologue
    .local p3, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    const/4 v2, 0x1

    .line 119
    invoke-static {p3}, Lsun/nio/fs/UnixChannelFactory$Flags;->toFlags(Ljava/util/Set;)Lsun/nio/fs/UnixChannelFactory$Flags;

    move-result-object v6

    .line 122
    .local v6, "flags":Lsun/nio/fs/UnixChannelFactory$Flags;
    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-nez v1, :cond_15

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    .line 123
    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_26

    .line 124
    iput-boolean v2, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    .line 131
    :cond_15
    :goto_15
    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_29

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "READ + APPEND not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_26
    iput-boolean v2, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    goto :goto_15

    .line 133
    :cond_29
    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v1, :cond_3a

    iget-boolean v1, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    if-eqz v1, :cond_3a

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_3a
    invoke-static {p0, p1, p2, v6, p4}, Lsun/nio/fs/UnixChannelFactory;->open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 137
    .local v0, "fdObj":Ljava/io/FileDescriptor;
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    iget-boolean v3, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    iget-boolean v4, v6, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    return-object v1
.end method

.method static newFileChannel(Lsun/nio/fs/UnixPath;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/nio/fs/UnixPath;",
            "Ljava/util/Set",
            "<+",
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

    .prologue
    .line 148
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<+Ljava/nio/file/OpenOption;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lsun/nio/fs/UnixChannelFactory;->newFileChannel(ILsun/nio/fs/UnixPath;Ljava/lang/String;Ljava/util/Set;I)Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method protected static open(ILsun/nio/fs/UnixPath;Ljava/lang/String;Lsun/nio/fs/UnixChannelFactory$Flags;I)Ljava/io/FileDescriptor;
    .registers 16
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

    .prologue
    .line 189
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v9, :cond_42

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_42

    .line 190
    sget v4, Lsun/nio/fs/UnixConstants;->O_RDWR:I

    .line 194
    .local v4, "oflags":I
    :goto_a
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_52

    .line 195
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->truncateExisting:Z

    if-eqz v9, :cond_15

    .line 196
    sget v9, Lsun/nio/fs/UnixConstants;->O_TRUNC:I

    or-int/2addr v4, v9

    .line 197
    :cond_15
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->append:Z

    if-eqz v9, :cond_1c

    .line 198
    sget v9, Lsun/nio/fs/UnixConstants;->O_APPEND:I

    or-int/2addr v4, v9

    .line 201
    :cond_1c
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-eqz v9, :cond_89

    .line 202
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v5

    .line 205
    .local v5, "pathForSysCall":[B
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v5, v9

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_4c

    .line 206
    array-length v9, v5

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3a

    .line 207
    array-length v9, v5

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, v5, v9

    const/16 v10, 0x2f

    if-ne v9, v10, :cond_4c

    .line 209
    :cond_3a
    new-instance v9, Lsun/nio/fs/UnixException;

    sget v10, Lsun/nio/fs/UnixConstants;->EEXIST:I

    invoke-direct {v9, v10}, Lsun/nio/fs/UnixException;-><init>(I)V

    throw v9

    .line 192
    .end local v4    # "oflags":I
    .end local v5    # "pathForSysCall":[B
    :cond_42
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_49

    sget v4, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    .restart local v4    # "oflags":I
    goto :goto_a

    .end local v4    # "oflags":I
    :cond_49
    sget v4, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .restart local v4    # "oflags":I
    goto :goto_a

    .line 211
    .restart local v5    # "pathForSysCall":[B
    :cond_4c
    sget v9, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    sget v10, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    or-int/2addr v9, v10

    or-int/2addr v4, v9

    .line 219
    .end local v5    # "pathForSysCall":[B
    :cond_52
    :goto_52
    const/4 v2, 0x1

    .line 220
    .local v2, "followLinks":Z
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-nez v9, :cond_95

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->noFollowLinks:Z

    if-nez v9, :cond_5f

    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_95

    .line 221
    :cond_5f
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_91

    sget v9, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    if-nez v9, :cond_91

    .line 223
    const/4 v9, 0x0

    :try_start_68
    invoke-static {p1, v9}, Lsun/nio/fs/UnixFileAttributes;->get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;

    move-result-object v9

    invoke-virtual {v9}, Lsun/nio/fs/UnixFileAttributes;->isSymbolicLink()Z

    move-result v9

    if-eqz v9, :cond_91

    .line 224
    new-instance v9, Lsun/nio/fs/UnixException;

    const-string/jumbo v10, "DELETE_ON_CLOSE specified and file is a symbolic link"

    invoke-direct {v9, v10}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_7b
    .catch Lsun/nio/fs/UnixException; {:try_start_68 .. :try_end_7b} :catch_7b

    .line 225
    :catch_7b
    move-exception v7

    .line 226
    .local v7, "x":Lsun/nio/fs/UnixException;
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    if-eqz v9, :cond_88

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->ENOENT:I

    if-eq v9, v10, :cond_91

    .line 227
    :cond_88
    throw v7

    .line 213
    .end local v2    # "followLinks":Z
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    :cond_89
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->create:Z

    if-eqz v9, :cond_52

    .line 214
    sget v9, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    or-int/2addr v4, v9

    goto :goto_52

    .line 230
    .restart local v2    # "followLinks":Z
    :cond_91
    const/4 v2, 0x0

    .line 231
    sget v9, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    or-int/2addr v4, v9

    .line 234
    :cond_95
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->dsync:Z

    if-eqz v9, :cond_9c

    .line 235
    sget v9, Lsun/nio/fs/UnixConstants;->O_DSYNC:I

    or-int/2addr v4, v9

    .line 236
    :cond_9c
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->sync:Z

    if-eqz v9, :cond_a3

    .line 237
    sget v9, Lsun/nio/fs/UnixConstants;->O_SYNC:I

    or-int/2addr v4, v9

    .line 240
    :cond_a3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v6

    .line 241
    .local v6, "sm":Ljava/lang/SecurityManager;
    if-eqz v6, :cond_c4

    .line 242
    if-nez p2, :cond_af

    .line 243
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->getPathForPermissionCheck()Ljava/lang/String;

    move-result-object p2

    .line 244
    :cond_af
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->read:Z

    if-eqz v9, :cond_b6

    .line 245
    invoke-virtual {v6, p2}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 246
    :cond_b6
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->write:Z

    if-eqz v9, :cond_bd

    .line 247
    invoke-virtual {v6, p2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 248
    :cond_bd
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_c4

    .line 249
    invoke-virtual {v6, p2}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 254
    :cond_c4
    if-ltz p0, :cond_e7

    .line 255
    :try_start_c6
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v9

    invoke-static {p0, v9, v4, p4}, Lsun/nio/fs/UnixNativeDispatcher;->openat(I[BII)I
    :try_end_cd
    .catch Lsun/nio/fs/UnixException; {:try_start_c6 .. :try_end_cd} :catch_ec

    move-result v0

    .line 276
    .local v0, "fd":I
    :goto_ce
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->deleteOnClose:Z

    if-eqz v9, :cond_dc

    .line 278
    if-ltz p0, :cond_127

    .line 279
    :try_start_d4
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat(I[BI)V
    :try_end_dc
    .catch Lsun/nio/fs/UnixException; {:try_start_d4 .. :try_end_dc} :catch_12b

    .line 289
    :cond_dc
    :goto_dc
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 290
    .local v1, "fdObj":Ljava/io/FileDescriptor;
    sget-object v9, Lsun/nio/fs/UnixChannelFactory;->fdAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    invoke-interface {v9, v1, v0}, Lsun/misc/JavaIOFileDescriptorAccess;->set(Ljava/io/FileDescriptor;I)V

    .line 291
    return-object v1

    .line 257
    .end local v0    # "fd":I
    .end local v1    # "fdObj":Ljava/io/FileDescriptor;
    :cond_e7
    :try_start_e7
    invoke-static {p1, v4, p4}, Lsun/nio/fs/UnixNativeDispatcher;->open(Lsun/nio/fs/UnixPath;II)I
    :try_end_ea
    .catch Lsun/nio/fs/UnixException; {:try_start_e7 .. :try_end_ea} :catch_ec

    move-result v0

    .restart local v0    # "fd":I
    goto :goto_ce

    .line 259
    .end local v0    # "fd":I
    :catch_ec
    move-exception v7

    .line 261
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    iget-boolean v9, p3, Lsun/nio/fs/UnixChannelFactory$Flags;->createNew:Z

    if-eqz v9, :cond_fe

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->EISDIR:I

    if-ne v9, v10, :cond_fe

    .line 262
    sget v9, Lsun/nio/fs/UnixConstants;->EEXIST:I

    invoke-virtual {v7, v9}, Lsun/nio/fs/UnixException;->setError(I)V

    .line 266
    :cond_fe
    if-nez v2, :cond_126

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->errno()I

    move-result v9

    sget v10, Lsun/nio/fs/UnixConstants;->ELOOP:I

    if-ne v9, v10, :cond_126

    .line 267
    new-instance v8, Lsun/nio/fs/UnixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lsun/nio/fs/UnixException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " (NOFOLLOW_LINKS specified)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/nio/fs/UnixException;-><init>(Ljava/lang/String;)V

    .end local v7    # "x":Lsun/nio/fs/UnixException;
    .local v8, "x":Lsun/nio/fs/UnixException;
    move-object v7, v8

    .line 270
    .end local v8    # "x":Lsun/nio/fs/UnixException;
    .restart local v7    # "x":Lsun/nio/fs/UnixException;
    :cond_126
    throw v7

    .line 281
    .end local v7    # "x":Lsun/nio/fs/UnixException;
    .restart local v0    # "fd":I
    :cond_127
    :try_start_127
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->unlink(Lsun/nio/fs/UnixPath;)V
    :try_end_12a
    .catch Lsun/nio/fs/UnixException; {:try_start_127 .. :try_end_12a} :catch_12b

    goto :goto_dc

    .line 283
    :catch_12b
    move-exception v3

    .local v3, "ignore":Lsun/nio/fs/UnixException;
    goto :goto_dc
.end method
