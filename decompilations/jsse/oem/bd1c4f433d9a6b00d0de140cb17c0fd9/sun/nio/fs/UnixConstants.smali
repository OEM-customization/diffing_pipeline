.class Lsun/nio/fs/UnixConstants;
.super Ljava/lang/Object;
.source "UnixConstants.java"


# static fields
.field static final AT_REMOVEDIR:I = 0x200

.field static final AT_SYMLINK_NOFOLLOW:I = 0x100

.field static final EACCES:I

.field static final EAGAIN:I

.field static final EEXIST:I

.field static final EINVAL:I

.field static final EISDIR:I

.field static final ELOOP:I

.field static final EMFILE:I

.field static final ENODATA:I

.field static final ENOENT:I

.field static final ENOSPC:I

.field static final ENOSYS:I

.field static final ENOTDIR:I

.field static final ENOTEMPTY:I

.field static final ERANGE:I

.field static final EROFS:I

.field static final EXDEV:I

.field static final F_OK:I

.field static final O_APPEND:I

.field static final O_CREAT:I

.field static final O_DSYNC:I

.field static final O_EXCL:I

.field static final O_NOFOLLOW:I

.field static final O_RDONLY:I

.field static final O_RDWR:I

.field static final O_SYNC:I

.field static final O_TRUNC:I

.field static final O_WRONLY:I

.field static final R_OK:I

.field static final S_IAMB:I

.field static final S_IFBLK:I

.field static final S_IFCHR:I

.field static final S_IFDIR:I

.field static final S_IFIFO:I

.field static final S_IFLNK:I

.field static final S_IFMT:I

.field static final S_IFREG:I

.field static final S_IRGRP:I

.field static final S_IROTH:I

.field static final S_IRUSR:I

.field static final S_IWGRP:I

.field static final S_IWOTH:I

.field static final S_IWUSR:I

.field static final S_IXGRP:I

.field static final S_IXOTH:I

.field static final S_IXUSR:I

.field static final W_OK:I

.field static final X_OK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_RDONLY:I

    .line 48
    sget v0, Landroid/system/OsConstants;->O_WRONLY:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_WRONLY:I

    .line 50
    sget v0, Landroid/system/OsConstants;->O_RDWR:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_RDWR:I

    .line 52
    sget v0, Landroid/system/OsConstants;->O_APPEND:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_APPEND:I

    .line 54
    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_CREAT:I

    .line 56
    sget v0, Landroid/system/OsConstants;->O_EXCL:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_EXCL:I

    .line 58
    sget v0, Landroid/system/OsConstants;->O_TRUNC:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_TRUNC:I

    .line 60
    sget v0, Landroid/system/OsConstants;->O_SYNC:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_SYNC:I

    .line 62
    sget v0, Landroid/system/OsConstants;->O_DSYNC:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_DSYNC:I

    .line 64
    sget v0, Landroid/system/OsConstants;->O_NOFOLLOW:I

    sput v0, Lsun/nio/fs/UnixConstants;->O_NOFOLLOW:I

    .line 66
    invoke-static {}, Lsun/nio/fs/UnixConstants;->get_S_IAMB()I

    move-result v0

    sput v0, Lsun/nio/fs/UnixConstants;->S_IAMB:I

    .line 68
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IRUSR:I

    .line 70
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IWUSR:I

    .line 72
    sget v0, Landroid/system/OsConstants;->S_IXUSR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IXUSR:I

    .line 74
    sget v0, Landroid/system/OsConstants;->S_IRGRP:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IRGRP:I

    .line 76
    sget v0, Landroid/system/OsConstants;->S_IWGRP:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IWGRP:I

    .line 78
    sget v0, Landroid/system/OsConstants;->S_IXGRP:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IXGRP:I

    .line 80
    sget v0, Landroid/system/OsConstants;->S_IROTH:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IROTH:I

    .line 82
    sget v0, Landroid/system/OsConstants;->S_IWOTH:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IWOTH:I

    .line 84
    sget v0, Landroid/system/OsConstants;->S_IXOTH:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IXOTH:I

    .line 86
    sget v0, Landroid/system/OsConstants;->S_IFMT:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFMT:I

    .line 88
    sget v0, Landroid/system/OsConstants;->S_IFREG:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFREG:I

    .line 90
    sget v0, Landroid/system/OsConstants;->S_IFDIR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFDIR:I

    .line 92
    sget v0, Landroid/system/OsConstants;->S_IFLNK:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFLNK:I

    .line 94
    sget v0, Landroid/system/OsConstants;->S_IFCHR:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFCHR:I

    .line 96
    sget v0, Landroid/system/OsConstants;->S_IFBLK:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFBLK:I

    .line 98
    sget v0, Landroid/system/OsConstants;->S_IFIFO:I

    sput v0, Lsun/nio/fs/UnixConstants;->S_IFIFO:I

    .line 100
    sget v0, Landroid/system/OsConstants;->R_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->R_OK:I

    .line 102
    sget v0, Landroid/system/OsConstants;->W_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->W_OK:I

    .line 104
    sget v0, Landroid/system/OsConstants;->X_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->X_OK:I

    .line 106
    sget v0, Landroid/system/OsConstants;->F_OK:I

    sput v0, Lsun/nio/fs/UnixConstants;->F_OK:I

    .line 108
    sget v0, Landroid/system/OsConstants;->ENOENT:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOENT:I

    .line 110
    sget v0, Landroid/system/OsConstants;->EACCES:I

    sput v0, Lsun/nio/fs/UnixConstants;->EACCES:I

    .line 112
    sget v0, Landroid/system/OsConstants;->EEXIST:I

    sput v0, Lsun/nio/fs/UnixConstants;->EEXIST:I

    .line 114
    sget v0, Landroid/system/OsConstants;->ENOTDIR:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOTDIR:I

    .line 116
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    sput v0, Lsun/nio/fs/UnixConstants;->EINVAL:I

    .line 118
    sget v0, Landroid/system/OsConstants;->EXDEV:I

    sput v0, Lsun/nio/fs/UnixConstants;->EXDEV:I

    .line 120
    sget v0, Landroid/system/OsConstants;->EISDIR:I

    sput v0, Lsun/nio/fs/UnixConstants;->EISDIR:I

    .line 122
    sget v0, Landroid/system/OsConstants;->ENOTEMPTY:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOTEMPTY:I

    .line 124
    sget v0, Landroid/system/OsConstants;->ENOSPC:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOSPC:I

    .line 126
    sget v0, Landroid/system/OsConstants;->EAGAIN:I

    sput v0, Lsun/nio/fs/UnixConstants;->EAGAIN:I

    .line 128
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENOSYS:I

    .line 130
    sget v0, Landroid/system/OsConstants;->ELOOP:I

    sput v0, Lsun/nio/fs/UnixConstants;->ELOOP:I

    .line 132
    sget v0, Landroid/system/OsConstants;->EROFS:I

    sput v0, Lsun/nio/fs/UnixConstants;->EROFS:I

    .line 134
    sget v0, Landroid/system/OsConstants;->ENODATA:I

    sput v0, Lsun/nio/fs/UnixConstants;->ENODATA:I

    .line 136
    sget v0, Landroid/system/OsConstants;->ERANGE:I

    sput v0, Lsun/nio/fs/UnixConstants;->ERANGE:I

    .line 138
    sget v0, Landroid/system/OsConstants;->EMFILE:I

    sput v0, Lsun/nio/fs/UnixConstants;->EMFILE:I

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static get_S_IAMB()I
    .registers 2

    .prologue
    .line 147
    sget v0, Landroid/system/OsConstants;->S_IRUSR:I

    sget v1, Landroid/system/OsConstants;->S_IWUSR:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->S_IXUSR:I

    or-int/2addr v0, v1

    .line 148
    sget v1, Landroid/system/OsConstants;->S_IRGRP:I

    .line 147
    or-int/2addr v0, v1

    .line 148
    sget v1, Landroid/system/OsConstants;->S_IWGRP:I

    .line 147
    or-int/2addr v0, v1

    .line 148
    sget v1, Landroid/system/OsConstants;->S_IXGRP:I

    .line 147
    or-int/2addr v0, v1

    .line 149
    sget v1, Landroid/system/OsConstants;->S_IROTH:I

    .line 147
    or-int/2addr v0, v1

    .line 149
    sget v1, Landroid/system/OsConstants;->S_IWOTH:I

    .line 147
    or-int/2addr v0, v1

    .line 149
    sget v1, Landroid/system/OsConstants;->S_IXOTH:I

    .line 147
    or-int/2addr v0, v1

    return v0
.end method
