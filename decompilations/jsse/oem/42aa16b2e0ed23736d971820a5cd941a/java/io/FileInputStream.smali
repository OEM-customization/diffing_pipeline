.class public Ljava/io/FileInputStream;
.super Ljava/io/InputStream;
.source "FileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/FileInputStream$UseManualSkipException;
    }
.end annotation


# instance fields
.field private greylist-max-o channel:Ljava/nio/channels/FileChannel;

.field private final greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile greylist-max-o closed:Z

.field private final greylist fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o isFdOwner:Z

.field private final greylist-max-o path:Ljava/lang/String;

.field private final greylist-max-o tracker:Llibcore/io/IoTracker;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/File;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    .line 81
    nop

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 85
    new-instance v1, Llibcore/io/IoTracker;

    invoke-direct {v1}, Llibcore/io/IoTracker;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    .line 146
    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    .line 147
    .local v1, "name":Ljava/lang/String;
    :goto_26
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 148
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2f

    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 151
    :cond_2f
    if-eqz v1, :cond_57

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 160
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {v1, v0}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 165
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 167
    iput-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 173
    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v0, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 177
    return-void

    .line 155
    :cond_4f
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v3, "Invalid file path"

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_57
    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 203
    return-void
.end method

.method public constructor greylist-max-o core-platform-api <init>(Ljava/io/FileDescriptor;Z)V
    .registers 5
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .line 208
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    .line 81
    nop

    .line 82
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    .line 85
    new-instance v1, Llibcore/io/IoTracker;

    invoke-direct {v1}, Llibcore/io/IoTracker;-><init>()V

    iput-object v1, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    .line 209
    if-eqz p1, :cond_27

    .line 213
    iput-object p1, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    .line 214
    iput-object v0, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    .line 224
    iput-boolean p2, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    .line 225
    return-void

    .line 211
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 115
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    return-void
.end method

.method private native greylist-max-o available0()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native greylist-max-o skip0(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileInputStream$UseManualSkipException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-nez v0, :cond_9

    .line 396
    invoke-direct {p0}, Ljava/io/FileInputStream;->available0()I

    move-result v0

    return v0

    .line 393
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Ljava/io/FileInputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    iget-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v1, :cond_9

    .line 417
    monitor-exit v0

    return-void

    .line 419
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/FileInputStream;->closed:Z

    .line 420
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    .line 423
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 425
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_19

    .line 426
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 430
    :cond_19
    iget-boolean v0, p0, Ljava/io/FileInputStream;->isFdOwner:Z

    if-eqz v0, :cond_22

    .line 431
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 434
    :cond_22
    return-void

    .line 420
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Ljava/io/FileInputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 500
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 503
    :cond_7
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_12

    sget-object v1, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_12

    .line 505
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 507
    :cond_12
    return-void
.end method

.method public whitelist core-platform-api test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 5

    .line 470
    monitor-enter p0

    .line 471
    :try_start_1
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_11

    .line 472
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/FileInputStream;->path:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 474
    :cond_11
    iget-object v0, p0, Ljava/io/FileInputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 475
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public final whitelist core-platform-api test-api getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 448
    return-object v0

    .line 450
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 258
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :cond_f
    return v3
.end method

.method public whitelist core-platform-api test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-eqz v0, :cond_f

    if-gtz p3, :cond_7

    goto :goto_f

    .line 313
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_f
    :goto_f
    iget-object v0, p0, Ljava/io/FileInputStream;->tracker:Llibcore/io/IoTracker;

    invoke-virtual {v0, p3}, Llibcore/io/IoTracker;->trackIo(I)V

    .line 320
    iget-object v0, p0, Ljava/io/FileInputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-boolean v0, p0, Ljava/io/FileInputStream;->closed:Z

    if-nez v0, :cond_16

    .line 356
    :try_start_4
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/io/FileInputStream;->skip0(J)J

    move-result-wide v0
    :try_end_f
    .catch Ljava/io/FileInputStream$UseManualSkipException; {:try_start_4 .. :try_end_f} :catch_10

    return-wide v0

    .line 358
    :catch_10
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/FileInputStream$UseManualSkipException;
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    return-wide v1

    .line 351
    .end local v0    # "e":Ljava/io/FileInputStream$UseManualSkipException;
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
