.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"


# instance fields
.field private final greylist-max-o append:Z

.field private greylist channel:Ljava/nio/channels/FileChannel;

.field private final greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile greylist-max-o closed:Z

.field private final greylist-max-r fd:Ljava/io/FileDescriptor;
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
.method public constructor whitelist test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 187
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/File;Z)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 94
    nop

    .line 95
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 101
    new-instance v1, Llibcore/io/IoTracker;

    invoke-direct {v1}, Llibcore/io/IoTracker;-><init>()V

    iput-object v1, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    .line 221
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 222
    .local v1, "name":Ljava/lang/String;
    :goto_23
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 223
    .local v2, "security":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_2c

    .line 224
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 226
    :cond_2c
    if-eqz v1, :cond_5f

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_57

    .line 235
    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    sget v4, Landroid/system/OsConstants;->O_CREAT:I

    or-int/2addr v3, v4

    if-eqz p2, :cond_3e

    sget v4, Landroid/system/OsConstants;->O_APPEND:I

    goto :goto_40

    :cond_3e
    sget v4, Landroid/system/OsConstants;->O_TRUNC:I

    :goto_40
    or-int/2addr v3, v4

    .line 236
    .local v3, "flags":I
    invoke-static {v1, v3}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v4

    iput-object v4, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 241
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 243
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->append:Z

    .line 244
    iput-object v1, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 250
    invoke-static {v4, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 253
    const-string v4, "close"

    invoke-virtual {v0, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 254
    return-void

    .line 230
    .end local v3    # "flags":I
    :cond_57
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v3, "Invalid file path"

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 279
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/FileDescriptor;Z)V
    .registers 5
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .line 289
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 94
    nop

    .line 95
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 101
    new-instance v1, Llibcore/io/IoTracker;

    invoke-direct {v1}, Llibcore/io/IoTracker;-><init>()V

    iput-object v1, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    .line 290
    if-eqz p1, :cond_2c

    .line 295
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 296
    iput-boolean v0, p0, Ljava/io/FileOutputStream;->append:Z

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 301
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 302
    if-eqz p2, :cond_2b

    .line 303
    invoke-static {p1, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 305
    :cond_2b
    return-void

    .line 292
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 125
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 126
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 157
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 158
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

    .line 418
    iget-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v1, :cond_9

    .line 420
    monitor-exit v0

    return-void

    .line 422
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 423
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_23

    .line 426
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 428
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_19

    .line 429
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 433
    :cond_19
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    if-eqz v0, :cond_22

    .line 434
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 437
    :cond_22
    return-void

    .line 423
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 495
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 498
    :cond_7
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1d

    .line 499
    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    if-ne v0, v1, :cond_16

    goto :goto_1a

    .line 503
    :cond_16
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1d

    .line 500
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 506
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 8

    .line 476
    monitor-enter p0

    .line 477
    :try_start_1
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_14

    .line 478
    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Ljava/io/FileOutputStream;->append:Z

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 480
    :cond_14
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 481
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final whitelist test-api getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation

    .line 452
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_5

    .line 453
    return-object v0

    .line 455
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 353
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

    .line 379
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 380
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v0, :cond_f

    if-gtz p3, :cond_7

    goto :goto_f

    .line 394
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_f
    :goto_f
    iget-object v0, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    invoke-virtual {v0, p3}, Llibcore/io/IoTracker;->trackIo(I)V

    .line 401
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 402
    return-void
.end method
