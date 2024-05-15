.class Lsun/nio/fs/LinuxNativeDispatcher;
.super Lsun/nio/fs/UnixNativeDispatcher;
.source "LinuxNativeDispatcher.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 132
    invoke-static {}, Lsun/nio/fs/LinuxNativeDispatcher;->init()V

    .line 133
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lsun/nio/fs/UnixNativeDispatcher;-><init>()V

    return-void
.end method

.method static native blacklist endmntent(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist fgetxattr(I[BJI)I
    .registers 12
    .param p0, "filedes"    # I
    .param p1, "name"    # [B
    .param p2, "valueAddress"    # J
    .param p4, "valueLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 71
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 73
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    move v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fgetxattr0(IJJI)I

    move-result v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 75
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 73
    return v1

    .line 75
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 76
    throw v1
.end method

.method private static native blacklist fgetxattr0(IJJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist flistxattr(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist fremovexattr(I[B)V
    .registers 5
    .param p0, "filedes"    # I
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 105
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lsun/nio/fs/LinuxNativeDispatcher;->fremovexattr0(IJ)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 107
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 108
    nop

    .line 109
    return-void

    .line 107
    :catchall_10
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 108
    throw v1
.end method

.method private static native blacklist fremovexattr0(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static blacklist fsetxattr(I[BJI)V
    .registers 12
    .param p0, "filedes"    # I
    .param p1, "name"    # [B
    .param p2, "valueAddress"    # J
    .param p4, "valueLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 90
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    move v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lsun/nio/fs/LinuxNativeDispatcher;->fsetxattr0(IJJI)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 92
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 93
    nop

    .line 94
    return-void

    .line 92
    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 93
    throw v1
.end method

.method private static native blacklist fsetxattr0(IJJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native blacklist getmntent(JLsun/nio/fs/UnixMountEntry;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native blacklist init()V
.end method

.method static blacklist setmntent([B[B)J
    .registers 8
    .param p0, "filename"    # [B
    .param p1, "type"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .line 42
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 43
    .local v0, "pathBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 45
    .local v1, "typeBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/LinuxNativeDispatcher;->setmntent0(JJ)J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_1b

    .line 47
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 48
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 45
    return-wide v2

    .line 47
    :catchall_1b
    move-exception v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 48
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 49
    throw v2
.end method

.method private static native blacklist setmntent0(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
