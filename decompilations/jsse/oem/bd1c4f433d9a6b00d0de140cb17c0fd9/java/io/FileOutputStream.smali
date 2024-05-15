.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"


# instance fields
.field private final append:Z

.field private channel:Ljava/nio/channels/FileChannel;

.field private final closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private final fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final isFdOwner:Z

.field private final path:Ljava/lang/String;

.field private final tracker:Llibcore/io/IoTracker;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 75
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 84
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 86
    new-instance v2, Llibcore/io/IoTracker;

    invoke-direct {v2}, Llibcore/io/IoTracker;-><init>()V

    iput-object v2, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    .line 206
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_20
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 208
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_29

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 211
    :cond_29
    if-nez v0, :cond_33

    .line 212
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 206
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_31
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    goto :goto_20

    .line 214
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "security":Ljava/lang/SecurityManager;
    :cond_33
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 215
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_42
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 218
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->append:Z

    .line 219
    iput-object v0, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 220
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 222
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 223
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;->open(Ljava/lang/String;Z)V

    .line 224
    iget-object v2, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;Z)V
    .registers 6
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "isFdOwner"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 260
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    .line 76
    iput-boolean v1, p0, Ljava/io/FileOutputStream;->closed:Z

    .line 84
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    .line 86
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    .line 261
    if-nez p1, :cond_26

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fdObj == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_26
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 266
    iput-object v2, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    .line 267
    iput-boolean v1, p0, Ljava/io/FileOutputStream;->append:Z

    .line 268
    iput-boolean p2, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 143
    return-void
.end method

.method private open(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1, p2}, Ljava/io/FileOutputStream;->open0(Ljava/lang/String;Z)V

    .line 288
    return-void
.end method

.method private native open0(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Ljava/io/FileOutputStream;->closeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_3
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 345
    return-void

    .line 347
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_25

    monitor-exit v1

    .line 350
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 352
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1b

    .line 358
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 362
    :cond_1b
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->isFdOwner:Z

    if-eqz v0, :cond_24

    .line 363
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 365
    :cond_24
    return-void

    .line 343
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, p0, Ljava/io/FileOutputStream;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 423
    :cond_9
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_1c

    .line 424
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    if-ne v0, v1, :cond_1d

    .line 425
    :cond_19
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 430
    :cond_1c
    :goto_1c
    return-void

    .line 427
    :cond_1d
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1c
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .registers 7

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_14

    .line 404
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/FileOutputStream;->path:Ljava/lang/String;

    iget-boolean v4, p0, Ljava/io/FileOutputStream;->append:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 406
    :cond_14
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 402
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 379
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 381
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 299
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 310
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-boolean v0, p0, Ljava/io/FileOutputStream;->closed:Z

    if-eqz v0, :cond_f

    if-lez p3, :cond_f

    .line 323
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream Closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_f
    iget-object v0, p0, Ljava/io/FileOutputStream;->tracker:Llibcore/io/IoTracker;

    invoke-virtual {v0, p3}, Llibcore/io/IoTracker;->trackIo(I)V

    .line 326
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 327
    return-void
.end method
