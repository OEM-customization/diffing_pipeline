.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o FLUSH_FDATASYNC:I = 0x2

.field private static final greylist-max-o FLUSH_FSYNC:I = 0x1

.field private static final greylist-max-o FLUSH_NONE:I


# instance fields
.field private greylist-max-o channel:Ljava/nio/channels/FileChannel;

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile greylist-max-o closed:Z

.field private greylist-max-r fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private greylist-max-o flushAfterWrite:I

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o ioTracker:Llibcore/io/IoTracker;

.field private greylist-max-o mode:I

.field private final greylist-max-o path:Ljava/lang/String;

.field private greylist-max-o rw:Z

.field private final greylist-max-o scratch:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    nop

    .line 73
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    .line 74
    const/16 v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 96
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    .line 97
    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->closed:Z

    .line 104
    new-instance v1, Llibcore/io/IoTracker;

    invoke-direct {v1}, Llibcore/io/IoTracker;-><init>()V

    iput-object v1, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    .line 234
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_2c
    move-object v1, v2

    .line 235
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 236
    .local v2, "imode":I
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 237
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    goto :goto_68

    .line 238
    :cond_39
    const-string v3, "rw"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 241
    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    sget v4, Landroid/system/OsConstants;->O_CREAT:I

    or-int v2, v3, v4

    .line 242
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->rw:Z

    .line 243
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_68

    .line 244
    const-string v4, "rws"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 251
    iput v3, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    goto :goto_68

    .line 252
    :cond_5c
    const-string v3, "rwd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 255
    iput v5, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    goto :goto_68

    .line 257
    :cond_67
    const/4 v2, -0x1

    .line 261
    :cond_68
    :goto_68
    if-ltz v2, :cond_98

    .line 277
    if-eqz v1, :cond_90

    .line 282
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_88

    .line 285
    iput-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    .line 286
    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 289
    invoke-static {v1, v2}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 290
    invoke-static {v3, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 291
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->maybeSync()V

    .line 292
    const-string v3, "close"

    invoke-virtual {v0, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 294
    return-void

    .line 283
    :cond_88
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v3, "Invalid file path"

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "file == null"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mode \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" must be one of \"r\", \"rw\", \"rws\", or \"rwd\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 152
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private greylist-max-o maybeSync()V
    .registers 3

    .line 298
    iget v0, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 300
    :try_start_5
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_c

    .line 301
    :catch_b
    move-exception v0

    .line 303
    :goto_c
    goto :goto_17

    .line 304
    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 306
    :try_start_10
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_10 .. :try_end_15} :catch_16

    .line 309
    goto :goto_17

    .line 307
    :catch_16
    move-exception v0

    .line 311
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o readBytes([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    sget-object v1, Llibcore/io/IoTracker$Mode;->READ:Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0, p3, v1}, Llibcore/io/IoTracker;->trackIo(ILlibcore/io/IoTracker$Mode;)V

    .line 387
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method private greylist-max-o writeBytes([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    sget-object v1, Llibcore/io/IoTracker$Mode;->WRITE:Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0, p3, v1}, Llibcore/io/IoTracker;->trackIo(ILlibcore/io/IoTracker$Mode;)V

    .line 546
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 547
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->maybeSync()V

    .line 549
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 697
    iget-object v0, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_8
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->closed:Z

    if-eqz v1, :cond_e

    .line 699
    monitor-exit v0

    return-void

    .line 701
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->closed:Z

    .line 702
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_27

    .line 705
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 706
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 708
    :cond_21
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 710
    return-void

    .line 702
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1237
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 1238
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1240
    :cond_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    .line 1242
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1243
    nop

    .line 1244
    return-void

    .line 1242
    :catchall_f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1243
    throw v0
.end method

.method public final whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 5

    .line 348
    monitor-enter p0

    .line 349
    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_12

    .line 350
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Ljava/io/RandomAccessFile;->rw:Z

    invoke-static {v0, v1, v2, v3, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 352
    :cond_12
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 353
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public final whitelist test-api getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 324
    return-object v0

    .line 326
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFilePointer()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    const-wide/16 v2, 0x0

    sget v4, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 588
    :catch_d
    move-exception v0

    .line 589
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 636
    :catch_b
    move-exception v0

    .line 637
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    :cond_11
    return v2
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 731
    .local v0, "ch":I
    if-ltz v0, :cond_c

    .line 733
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 732
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 756
    .local v0, "ch":I
    if-ltz v0, :cond_8

    .line 758
    int-to-byte v1, v0

    return v1

    .line 757
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readChar()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 859
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 860
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_13

    .line 862
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2

    .line 861
    :cond_13
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final whitelist test-api readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 456
    return-void
.end method

.method public final whitelist test-api readFully([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, "n":I
    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 476
    .local v1, "count":I
    if-ltz v1, :cond_f

    .line 478
    add-int/2addr v0, v1

    .line 479
    .end local v1    # "count":I
    if-lt v0, p3, :cond_1

    .line 480
    return-void

    .line 477
    .restart local v1    # "count":I
    :cond_f
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api readInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 887
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 888
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 889
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 890
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_22

    .line 892
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4

    .line 891
    :cond_22
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public final whitelist test-api readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 999
    .local v0, "input":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1000
    .local v1, "c":I
    const/4 v2, 0x0

    .line 1002
    .local v2, "eol":Z
    :cond_7
    :goto_7
    if-nez v2, :cond_29

    .line 1003
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    move v1, v3

    sparse-switch v3, :sswitch_data_3a

    .line 1016
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1017
    goto :goto_7

    .line 1009
    :sswitch_16
    const/4 v2, 0x1

    .line 1010
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 1011
    .local v3, "cur":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_7

    .line 1012
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_7

    .line 1006
    .end local v3    # "cur":J
    :sswitch_27
    const/4 v2, 0x1

    .line 1007
    goto :goto_7

    .line 1021
    :cond_29
    const/4 v3, -0x1

    if-ne v1, v3, :cond_34

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_34

    .line 1022
    const/4 v3, 0x0

    return-object v3

    .line 1024
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x1 -> :sswitch_27
        0xa -> :sswitch_27
        0xd -> :sswitch_16
    .end sparse-switch
.end method

.method public final whitelist test-api readLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist test-api readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 803
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 804
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_13

    .line 806
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2

    .line 805
    :cond_13
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 776
    .local v0, "ch":I
    if-ltz v0, :cond_7

    .line 778
    return v0

    .line 777
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 831
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 832
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_12

    .line 834
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    return v2

    .line 833
    :cond_12
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public whitelist test-api seek(J)V
    .registers 6
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    .line 617
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v0, v1, p1, p2, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 618
    iget-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    invoke-virtual {v0}, Llibcore/io/IoTracker;->reset()V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_14} :catch_16

    .line 621
    nop

    .line 624
    return-void

    .line 619
    :catch_16
    move-exception v0

    .line 620
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 612
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setLength(J)V
    .registers 6
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_23

    .line 667
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_d} :catch_1d

    .line 670
    nop

    .line 672
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 673
    .local v0, "filePointer":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_19

    .line 674
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 676
    :cond_19
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->maybeSync()V

    .line 678
    return-void

    .line 668
    .end local v0    # "filePointer":J
    :catch_1d
    move-exception v0

    .line 669
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 664
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 10
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    if-gtz p1, :cond_4

    .line 504
    const/4 v0, 0x0

    return v0

    .line 506
    :cond_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 507
    .local v0, "pos":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 508
    .local v2, "len":J
    int-to-long v4, p1

    add-long/2addr v4, v0

    .line 509
    .local v4, "newpos":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_13

    .line 510
    move-wide v4, v2

    .line 512
    :cond_13
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 515
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 531
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 533
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 560
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 573
    return-void
.end method

.method public final whitelist test-api writeBoolean(Z)V
    .registers 2
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1067
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1069
    return-void
.end method

.method public final whitelist test-api writeByte(I)V
    .registers 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1079
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1081
    return-void
.end method

.method public final whitelist test-api writeBytes(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1186
    .local v0, "len":I
    new-array v1, v0, [B

    .line 1187
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 1188
    invoke-direct {p0, v1, v2, v0}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 1189
    return-void
.end method

.method public final whitelist test-api writeChar(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1106
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1108
    return-void
.end method

.method public final whitelist test-api writeChars(Ljava/lang/String;)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1203
    .local v0, "clen":I
    mul-int/lit8 v1, v0, 0x2

    .line 1204
    .local v1, "blen":I
    new-array v2, v1, [B

    .line 1205
    .local v2, "b":[B
    new-array v3, v0, [C

    .line 1206
    .local v3, "c":[C
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1207
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_10
    if-ge v5, v0, :cond_26

    .line 1208
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    aget-char v8, v3, v5

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 1209
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-char v8, v3, v5

    ushr-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 1207
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1211
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_26
    invoke-direct {p0, v2, v4, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 1212
    return-void
.end method

.method public final whitelist test-api writeDouble(D)V
    .registers 5
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1172
    return-void
.end method

.method public final whitelist test-api writeFloat(F)V
    .registers 3
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1156
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1157
    return-void
.end method

.method public final whitelist test-api writeInt(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1119
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1120
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1121
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1123
    return-void
.end method

.method public final whitelist test-api writeLong(J)V
    .registers 5
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1133
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1134
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1135
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1136
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1137
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1138
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1139
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1140
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1142
    return-void
.end method

.method public final whitelist test-api writeShort(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1092
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1094
    return-void
.end method

.method public final whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1231
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    .line 1232
    return-void
.end method
