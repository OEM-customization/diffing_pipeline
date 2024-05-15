.class Lsun/nio/fs/UnixNativeDispatcher;
.super Ljava/lang/Object;
.source "UnixNativeDispatcher.java"


# static fields
.field private static final SUPPORTS_BIRTHTIME:I = 0x10000

.field private static final SUPPORTS_FUTIMES:I = 0x4

.field private static final SUPPORTS_OPENAT:I = 0x2

.field private static final capabilities:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 571
    invoke-static {}, Lsun/nio/fs/UnixNativeDispatcher;->init()I

    move-result v0

    sput v0, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    .line 35
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access(Lsun/nio/fs/UnixPath;I)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "amode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 449
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->access0(JI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 451
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 453
    return-void

    .line 450
    :catchall_f
    move-exception v1

    .line 451
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 450
    throw v1
.end method

.method private static native access0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static birthtimeSupported()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 566
    sget v1, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method static chmod(Lsun/nio/fs/UnixPath;I)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 368
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->chmod0(JI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 370
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 372
    return-void

    .line 369
    :catchall_f
    move-exception v1

    .line 370
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 369
    throw v1
.end method

.method private static native chmod0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static chown(Lsun/nio/fs/UnixPath;II)V
    .registers 7
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 335
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->chown0(JII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 337
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 339
    return-void

    .line 336
    :catchall_f
    move-exception v1

    .line 337
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 336
    throw v1
.end method

.method private static native chown0(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native close(I)V
.end method

.method static native closedir(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;

    .prologue
    .line 40
    invoke-virtual {p0}, Lsun/nio/fs/UnixPath;->getByteArrayForSysCalls()[B

    move-result-object v1

    .line 41
    .local v1, "cstr":[B
    array-length v3, v1

    add-int/lit8 v2, v3, 0x1

    .line 42
    .local v2, "size":I
    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->getNativeBufferFromCache(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 43
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    if-nez v0, :cond_18

    .line 44
    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->allocNativeBuffer(I)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 50
    :cond_11
    invoke-static {v1, v0}, Lsun/nio/fs/NativeBuffers;->copyCStringToNativeBuffer([BLsun/nio/fs/NativeBuffer;)V

    .line 51
    invoke-virtual {v0, p0}, Lsun/nio/fs/NativeBuffer;->setOwner(Ljava/lang/Object;)V

    .line 52
    return-object v0

    .line 47
    :cond_18
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->owner()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_11

    .line 48
    return-object v0
.end method

.method static native dup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fchmod(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fchown(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fclose(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fdopendir(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fopen(Lsun/nio/fs/UnixPath;Ljava/lang/String;)J
    .registers 8
    .param p0, "filename"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 103
    .local v1, "pathBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 105
    .local v0, "modeBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_c
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->fopen0(JJ)J
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1f

    move-result-wide v2

    .line 107
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 108
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 105
    return-wide v2

    .line 106
    :catchall_1f
    move-exception v2

    .line 107
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 108
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 106
    throw v2
.end method

.method private static native fopen0(JJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fpathconf(II)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native fstat(ILsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static fstatat(I[BILsun/nio/fs/UnixFileAttributes;)V
    .registers 8
    .param p0, "dfd"    # I
    .param p1, "path"    # [B
    .param p2, "flag"    # I
    .param p3, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 321
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->fstatat0(IJILsun/nio/fs/UnixFileAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 323
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 325
    return-void

    .line 322
    :catchall_f
    move-exception v1

    .line 323
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 322
    throw v1
.end method

.method private static native fstatat0(IJILsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native futimes(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static futimesSupported()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 559
    sget v1, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method static native getcwd()[B
.end method

.method static native getgrgid(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static getgrnam(Ljava/lang/String;)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {p0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 493
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->getgrnam0(J)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_14

    move-result v1

    .line 495
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 493
    return v1

    .line 494
    :catchall_14
    move-exception v1

    .line 495
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 494
    throw v1
.end method

.method private static native getgrnam0(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static getpwnam(Ljava/lang/String;)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {p0}, Lsun/nio/fs/Util;->toBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 478
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->getpwnam0(J)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_14

    move-result v1

    .line 480
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 478
    return v1

    .line 479
    :catchall_14
    move-exception v1

    .line 480
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 479
    throw v1
.end method

.method private static native getpwnam0(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native getpwuid(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method private static native init()I
.end method

.method static lchown(Lsun/nio/fs/UnixPath;II)V
    .registers 7
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "uid"    # I
    .param p2, "gid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 349
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->lchown0(JII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 351
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 353
    return-void

    .line 350
    :catchall_f
    move-exception v1

    .line 351
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 350
    throw v1
.end method

.method private static native lchown0(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static link(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .registers 8
    .param p0, "existing"    # Lsun/nio/fs/UnixPath;
    .param p1, "newfile"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 124
    .local v0, "existingBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 126
    .local v1, "newBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->link0(JJ)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1a

    .line 128
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 129
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 131
    return-void

    .line 127
    :catchall_1a
    move-exception v2

    .line 128
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 129
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 127
    throw v2
.end method

.method private static native link0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static lstat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 300
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->lstat0(JLsun/nio/fs/UnixFileAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 302
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 304
    return-void

    .line 301
    :catchall_f
    move-exception v1

    .line 302
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 301
    throw v1
.end method

.method private static native lstat0(JLsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static mkdir(Lsun/nio/fs/UnixPath;I)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 214
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->mkdir0(JI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 216
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 218
    return-void

    .line 215
    :catchall_f
    move-exception v1

    .line 216
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 215
    throw v1
.end method

.method private static native mkdir0(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static mknod(Lsun/nio/fs/UnixPath;IJ)V
    .registers 8
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "mode"    # I
    .param p2, "dev"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->mknod0(JIJ)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 170
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 172
    return-void

    .line 169
    :catchall_f
    move-exception v1

    .line 170
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 169
    throw v1
.end method

.method private static native mknod0(JIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static open(Lsun/nio/fs/UnixPath;II)I
    .registers 7
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "flags"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 71
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lsun/nio/fs/UnixNativeDispatcher;->open0(JII)I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result v1

    .line 73
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 71
    return v1

    .line 72
    :catchall_10
    move-exception v1

    .line 73
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 72
    throw v1
.end method

.method private static native open0(JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static openat(I[BII)I
    .registers 8
    .param p0, "dfd"    # I
    .param p1, "path"    # [B
    .param p2, "flags"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 85
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2, p3}, Lsun/nio/fs/UnixNativeDispatcher;->openat0(IJII)I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result v1

    .line 87
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 85
    return v1

    .line 86
    :catchall_10
    move-exception v1

    .line 87
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 86
    throw v1
.end method

.method private static native openat0(IJII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static openatSupported()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 552
    sget v1, Lsun/nio/fs/UnixNativeDispatcher;->capabilities:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method static opendir(Lsun/nio/fs/UnixPath;)J
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 408
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->opendir0(J)J
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-wide v2

    .line 410
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 408
    return-wide v2

    .line 409
    :catchall_10
    move-exception v1

    .line 410
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 409
    throw v1
.end method

.method private static native opendir0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static pathconf(Lsun/nio/fs/UnixPath;I)J
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "name"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 522
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->pathconf0(JI)J
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-wide v2

    .line 524
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 522
    return-wide v2

    .line 523
    :catchall_10
    move-exception v1

    .line 524
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 523
    throw v1
.end method

.method private static native pathconf0(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native read(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native readdir(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static readlink(Lsun/nio/fs/UnixPath;)[B
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 242
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->readlink0(J)[B
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-object v1

    .line 244
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 242
    return-object v1

    .line 243
    :catchall_10
    move-exception v1

    .line 244
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 243
    throw v1
.end method

.method private static native readlink0(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static realpath(Lsun/nio/fs/UnixPath;)[B
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 257
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->realpath0(J)[B
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-object v1

    .line 259
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 257
    return-object v1

    .line 258
    :catchall_10
    move-exception v1

    .line 259
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 258
    throw v1
.end method

.method private static native realpath0(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static rename(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixPath;)V
    .registers 8
    .param p0, "from"    # Lsun/nio/fs/UnixPath;
    .param p1, "to"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 181
    .local v0, "fromBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 183
    .local v1, "toBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->rename0(JJ)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1a

    .line 185
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 186
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 188
    return-void

    .line 184
    :catchall_1a
    move-exception v2

    .line 185
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 186
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 184
    throw v2
.end method

.method private static native rename0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static renameat(I[BI[B)V
    .registers 12
    .param p0, "fromfd"    # I
    .param p1, "from"    # [B
    .param p2, "tofd"    # I
    .param p3, "to"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v6

    .line 197
    .local v6, "fromBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p3}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v7

    .line 199
    .local v7, "toBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v1

    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    move v0, p0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixNativeDispatcher;->renameat0(IJIJ)V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1c

    .line 201
    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 202
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 204
    return-void

    .line 200
    :catchall_1c
    move-exception v0

    .line 201
    invoke-virtual {v7}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 202
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 200
    throw v0
.end method

.method private static native renameat0(IJIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static rmdir(Lsun/nio/fs/UnixPath;)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 227
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->rmdir0(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 229
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 231
    return-void

    .line 228
    :catchall_f
    move-exception v1

    .line 229
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 228
    throw v1
.end method

.method private static native rmdir0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static stat(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileAttributes;)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 286
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->stat0(JLsun/nio/fs/UnixFileAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 288
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 290
    return-void

    .line 287
    :catchall_f
    move-exception v1

    .line 288
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 287
    throw v1
.end method

.method private static native stat0(JLsun/nio/fs/UnixFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static statvfs(Lsun/nio/fs/UnixPath;Lsun/nio/fs/UnixFileStoreAttributes;)V
    .registers 6
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "attrs"    # Lsun/nio/fs/UnixFileStoreAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 508
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lsun/nio/fs/UnixNativeDispatcher;->statvfs0(JLsun/nio/fs/UnixFileStoreAttributes;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 510
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 512
    return-void

    .line 509
    :catchall_f
    move-exception v1

    .line 510
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 509
    throw v1
.end method

.method private static native statvfs0(JLsun/nio/fs/UnixFileStoreAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native strerror(I)[B
.end method

.method static symlink([BLsun/nio/fs/UnixPath;)V
    .registers 8
    .param p0, "name1"    # [B
    .param p1, "name2"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {p0}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v1

    .line 269
    .local v1, "targetBuffer":Lsun/nio/fs/NativeBuffer;
    invoke-static {p1}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 271
    .local v0, "linkBuffer":Lsun/nio/fs/NativeBuffer;
    :try_start_8
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lsun/nio/fs/UnixNativeDispatcher;->symlink0(JJ)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_1a

    .line 273
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 274
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 276
    return-void

    .line 272
    :catchall_1a
    move-exception v2

    .line 273
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 274
    invoke-virtual {v1}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 272
    throw v2
.end method

.method private static native symlink0(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static unlink(Lsun/nio/fs/UnixPath;)V
    .registers 5
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 141
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {v2, v3}, Lsun/nio/fs/UnixNativeDispatcher;->unlink0(J)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 143
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 145
    return-void

    .line 142
    :catchall_f
    move-exception v1

    .line 143
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 142
    throw v1
.end method

.method private static native unlink0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static unlinkat(I[BI)V
    .registers 7
    .param p0, "dfd"    # I
    .param p1, "path"    # [B
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p1}, Lsun/nio/fs/NativeBuffers;->asNativeBuffer([B)Lsun/nio/fs/NativeBuffer;

    move-result-object v0

    .line 154
    .local v0, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2}, Lsun/nio/fs/UnixNativeDispatcher;->unlinkat0(IJI)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 156
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 158
    return-void

    .line 155
    :catchall_f
    move-exception v1

    .line 156
    invoke-virtual {v0}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 155
    throw v1
.end method

.method private static native unlinkat0(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static utimes(Lsun/nio/fs/UnixPath;JJ)V
    .registers 12
    .param p0, "path"    # Lsun/nio/fs/UnixPath;
    .param p1, "times0"    # J
    .param p3, "times1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-static {p0}, Lsun/nio/fs/UnixNativeDispatcher;->copyToNativeBuffer(Lsun/nio/fs/UnixPath;)Lsun/nio/fs/NativeBuffer;

    move-result-object v6

    .line 389
    .local v6, "buffer":Lsun/nio/fs/NativeBuffer;
    :try_start_4
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->address()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lsun/nio/fs/UnixNativeDispatcher;->utimes0(JJJ)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 391
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 393
    return-void

    .line 390
    :catchall_11
    move-exception v0

    .line 391
    invoke-virtual {v6}, Lsun/nio/fs/NativeBuffer;->release()V

    .line 390
    throw v0
.end method

.method private static native utimes0(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method

.method static native write(IJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/nio/fs/UnixException;
        }
    .end annotation
.end method
