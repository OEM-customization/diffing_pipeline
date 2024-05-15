.class Lsun/nio/fs/UnixFileAttributes;
.super Ljava/lang/Object;
.source "UnixFileAttributes.java"

# interfaces
.implements Ljava/nio/file/attribute/PosixFileAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;
    }
.end annotation


# instance fields
.field private volatile group:Ljava/nio/file/attribute/GroupPrincipal;

.field private volatile key:Lsun/nio/fs/UnixFileKey;

.field private volatile owner:Ljava/nio/file/attribute/UserPrincipal;

.field private st_atime_nsec:J

.field private st_atime_sec:J

.field private st_birthtime_sec:J

.field private st_ctime_nsec:J

.field private st_ctime_sec:J

.field private st_dev:J

.field private st_gid:I

.field private st_ino:J

.field private st_mode:I

.field private st_mtime_nsec:J

.field private st_mtime_sec:J

.field private st_nlink:I

.field private st_rdev:J

.field private st_size:J

.field private st_uid:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static get(I)Lsun/nio/fs/UnixFileAttributes;
    .registers 2
    .param p0, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lsun/nio/fs/UnixFileAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileAttributes;-><init>()V

    .line 80
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->fstat(ILsun/nio/fs/UnixFileAttributes;)V

    .line 81
    return-object v0
.end method

.method static get(ILsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    .registers 6
    .param p0, "dfd"    # I
    .param p1, "path"    # Lsun/nio/fs/UnixPath;
    .param p2, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lsun/nio/fs/UnixFileAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileAttributes;-><init>()V

    .line 89
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-eqz p2, :cond_10

    const/4 v1, 0x0

    .line 90
    .local v1, "flag":I
    :goto_8
    invoke-virtual {p1}, Lsun/nio/fs/UnixPath;->asByteArray()[B

    move-result-object v2

    invoke-static {p0, v2, v1, v0}, Lsun/nio/fs/UnixNativeDispatcher;->fstatat(I[BILsun/nio/fs/UnixFileAttributes;)V

    .line 91
    return-object v0

    .line 89
    .end local v1    # "flag":I
    :cond_10
    const/16 v1, 0x100

    .restart local v1    # "flag":I
    goto :goto_8
.end method

.method static get(Lsun/nio/fs/UnixPath;Z)Lsun/nio/fs/UnixFileAttributes;
    .registers 3
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "followLinks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lsun/nio/fs/UnixFileAttributes;

    invoke-direct {v0}, Lsun/nio/fs/UnixFileAttributes;-><init>()V

    .line 69
    .local v0, "attrs":Lsun/nio/fs/UnixFileAttributes;
    if-eqz p1, :cond_b

    .line 70
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->stat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V

    .line 74
    :goto_a
    return-object v0

    .line 72
    :cond_b
    invoke-static {p0, v0}, Lsun/nio/fs/UnixNativeDispatcher;->lstat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V

    goto :goto_a
.end method

.method private static toFileTime(JJ)Ljava/nio/file/attribute/FileTime;
    .registers 10
    .param p0, "sec"    # J
    .param p2, "nsec"    # J

    .prologue
    .line 109
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_d

    .line 110
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    return-object v2

    .line 115
    :cond_d
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p0

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    add-long v0, v2, v4

    .line 116
    .local v0, "micro":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    return-object v2
.end method

.method static toUnixFileAttributes(Ljava/nio/file/attribute/BasicFileAttributes;)Lsun/nio/fs/UnixFileAttributes;
    .registers 2
    .param p0, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .prologue
    .line 253
    instance-of v0, p0, Lsun/nio/fs/UnixFileAttributes;

    if-eqz v0, :cond_7

    .line 254
    check-cast p0, Lsun/nio/fs/UnixFileAttributes;

    .end local p0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    return-object p0

    .line 255
    .restart local p0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :cond_7
    instance-of v0, p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    if-eqz v0, :cond_12

    .line 256
    check-cast p0, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    .end local p0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->unwrap()Lsun/nio/fs/UnixFileAttributes;

    move-result-object v0

    return-object v0

    .line 258
    .restart local p0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method asBasicFileAttributes()Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 2

    .prologue
    .line 247
    invoke-static {p0}, Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;->wrap(Lsun/nio/fs/UnixFileAttributes;)Lsun/nio/fs/UnixFileAttributes$UnixAsBasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public creationTime()Ljava/nio/file/attribute/FileTime;
    .registers 4

    .prologue
    .line 143
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->birthtimeSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_birthtime_sec:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0

    .line 147
    :cond_f
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method ctime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .prologue
    .line 121
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_ctime_sec:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_ctime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->toFileTime(JJ)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method dev()J
    .registers 3

    .prologue
    .line 102
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    return-wide v0
.end method

.method public bridge synthetic fileKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lsun/nio/fs/UnixFileAttributes;->fileKey()Lsun/nio/fs/UnixFileKey;

    move-result-object v0

    return-object v0
.end method

.method public fileKey()Lsun/nio/fs/UnixFileKey;
    .registers 7

    .prologue
    .line 181
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    if-nez v0, :cond_15

    .line 182
    monitor-enter p0

    .line 183
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    if-nez v0, :cond_14

    .line 184
    new-instance v0, Lsun/nio/fs/UnixFileKey;

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    iget-wide v4, p0, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    invoke-direct {v0, v2, v3, v4, v5}, Lsun/nio/fs/UnixFileKey;-><init>(JJ)V

    iput-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    :cond_14
    monitor-exit p0

    .line 188
    :cond_15
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->key:Lsun/nio/fs/UnixFileKey;

    return-object v0

    .line 182
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method gid()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_gid:I

    return v0
.end method

.method public group()Ljava/nio/file/attribute/GroupPrincipal;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    if-nez v0, :cond_12

    .line 206
    monitor-enter p0

    .line 207
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    if-nez v0, :cond_11

    .line 208
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_gid:I

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->fromGid(I)Lsun/nio/fs/UnixUserPrincipals$Group;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    .line 212
    :cond_12
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->group:Ljava/nio/file/attribute/GroupPrincipal;

    return-object v0

    .line 206
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method ino()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    return-wide v0
.end method

.method isDevice()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 125
    iget v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v3, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int v0, v2, v3

    .line 126
    .local v0, "type":I
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFCHR:I

    if-eq v0, v2, :cond_f

    .line 127
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFBLK:I

    if-ne v0, v2, :cond_10

    .line 126
    :cond_f
    :goto_f
    return v1

    .line 128
    :cond_10
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFIFO:I

    if-eq v0, v2, :cond_f

    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isDirectory()Z
    .registers 3

    .prologue
    .line 158
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOther()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 168
    iget v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v3, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int v0, v2, v3

    .line 169
    .local v0, "type":I
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    if-eq v0, v2, :cond_14

    .line 170
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    if-eq v0, v2, :cond_14

    .line 171
    sget v2, Lsun/nio/fs/UnixConstants;->S_IFLNK:I

    if-eq v0, v2, :cond_14

    const/4 v1, 0x1

    .line 169
    :cond_14
    return v1
.end method

.method public isRegularFile()Z
    .registers 3

    .prologue
    .line 153
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isSameFile(Lsun/nio/fs/UnixFileAttributes;)Z
    .registers 8
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    iget-wide v4, p1, Lsun/nio/fs/UnixFileAttributes;->st_ino:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    iget-wide v4, p1, Lsun/nio/fs/UnixFileAttributes;->st_dev:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public isSymbolicLink()Z
    .registers 3

    .prologue
    .line 163
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    and-int/2addr v0, v1

    sget v1, Lsun/nio/fs/UnixConstants;->S_IFLNK:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .prologue
    .line 138
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_atime_sec:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_atime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->toFileTime(JJ)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .registers 5

    .prologue
    .line 133
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mtime_sec:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_mtime_nsec:J

    invoke-static {v0, v1, v2, v3}, Lsun/nio/fs/UnixFileAttributes;->toFileTime(JJ)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method mode()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    return v0
.end method

.method nlink()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_nlink:I

    return v0
.end method

.method public owner()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    if-nez v0, :cond_12

    .line 194
    monitor-enter p0

    .line 195
    :try_start_5
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    if-nez v0, :cond_11

    .line 196
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_uid:I

    invoke-static {v0}, Lsun/nio/fs/UnixUserPrincipals;->fromUid(I)Lsun/nio/fs/UnixUserPrincipals$User;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    :cond_11
    monitor-exit p0

    .line 200
    :cond_12
    iget-object v0, p0, Lsun/nio/fs/UnixFileAttributes;->owner:Ljava/nio/file/attribute/UserPrincipal;

    return-object v0

    .line 194
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public permissions()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget v2, p0, Lsun/nio/fs/UnixFileAttributes;->st_mode:I

    sget v3, Lsun/nio/fs/UnixConstants;->S_IAMB:I

    and-int v0, v2, v3

    .line 218
    .local v0, "bits":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v1, "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/nio/file/attribute/PosixFilePermission;>;"
    sget v2, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_15

    .line 221
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_15
    sget v2, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_1f

    .line 223
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1f
    sget v2, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    and-int/2addr v2, v0

    if-lez v2, :cond_29

    .line 225
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_29
    sget v2, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_33

    .line 228
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_33
    sget v2, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_3d

    .line 230
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3d
    sget v2, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    and-int/2addr v2, v0

    if-lez v2, :cond_47

    .line 232
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_47
    sget v2, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_51

    .line 235
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_51
    sget v2, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_5b

    .line 237
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_5b
    sget v2, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    and-int/2addr v2, v0

    if-lez v2, :cond_65

    .line 239
    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_65
    return-object v1
.end method

.method rdev()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_rdev:J

    return-wide v0
.end method

.method public size()J
    .registers 3

    .prologue
    .line 176
    iget-wide v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_size:J

    return-wide v0
.end method

.method uid()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lsun/nio/fs/UnixFileAttributes;->st_uid:I

    return v0
.end method
