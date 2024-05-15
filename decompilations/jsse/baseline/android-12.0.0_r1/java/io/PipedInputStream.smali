.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEFAULT_PIPE_SIZE:I = 0x400

.field protected static final whitelist test-api PIPE_SIZE:I = 0x400


# instance fields
.field protected whitelist test-api buffer:[B

.field volatile greylist-max-o closedByReader:Z

.field greylist-max-o closedByWriter:Z

.field greylist-max-o connected:Z

.field protected whitelist test-api in:I

.field protected whitelist test-api out:I

.field greylist-max-o readSide:Ljava/lang/Thread;

.field greylist-max-o writeSide:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 55
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 56
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 141
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 142
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .line 156
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 55
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 56
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 157
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 158
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedOutputStream;)V
    .registers 3
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 110
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedOutputStream;I)V
    .registers 5
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 55
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 56
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 128
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 129
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 130
    return-void
.end method

.method private greylist-max-o awaitSpace()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    :goto_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_17

    .line 271
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 276
    const-wide/16 v0, 0x3e8

    :try_start_e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    .line 281
    :goto_11
    goto :goto_0

    .line 277
    :catch_12
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    goto :goto_11

    .line 283
    :cond_17
    return-void
.end method

.method private greylist-max-o checkStateForReceive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    if-eqz v0, :cond_28

    .line 262
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-nez v0, :cond_20

    .line 264
    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 265
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1f
    :goto_1f
    return-void

    .line 263
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o initPipe(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .line 161
    if-lez p1, :cond_7

    .line 164
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 165
    return-void

    .line 162
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pipe Size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 434
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-gez v0, :cond_8

    .line 435
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 436
    :cond_8
    :try_start_8
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_11

    .line 437
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1d

    monitor-exit p0

    return v0

    .line 438
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :cond_11
    if-le v0, v1, :cond_16

    .line 439
    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 441
    .restart local p0    # "this":Ljava/io/PipedInputStream;
    :cond_16
    :try_start_16
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1d

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 433
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 452
    monitor-enter p0

    .line 453
    const/4 v0, -0x1

    :try_start_5
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 454
    monitor-exit p0

    .line 455
    return-void

    .line 454
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api connect(Ljava/io/PipedOutputStream;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 192
    return-void
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 309
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    if-eqz v0, :cond_7d

    .line 311
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-nez v0, :cond_75

    .line 313
    iget-object v0, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v0, :cond_24

    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-ltz v0, :cond_1c

    goto :goto_24

    .line 315
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :cond_24
    :goto_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    .line 319
    const/4 v0, 0x2

    .line 320
    .local v0, "trials":I
    :goto_2b
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v2, -0x1

    if-gez v1, :cond_5b

    .line 321
    iget-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_85

    if-eqz v1, :cond_36

    .line 323
    monitor-exit p0

    return v2

    .line 325
    .restart local p0    # "this":Ljava/io/PipedInputStream;
    :cond_36
    :try_start_36
    iget-object v1, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4d

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_45

    goto :goto_4d

    .line 326
    :cond_45
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_85

    .line 331
    const-wide/16 v1, 0x3e8

    :try_start_52
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_85

    .line 336
    :goto_55
    goto :goto_2b

    .line 332
    :catch_56
    move-exception v1

    .line 335
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_57
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_55

    .line 338
    :cond_5b
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    .line 339
    .local v4, "ret":I
    array-length v3, v3

    if-lt v5, v3, :cond_6d

    .line 340
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 342
    :cond_6d
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v3, :cond_73

    .line 344
    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_85

    .line 347
    :cond_73
    monitor-exit p0

    return v4

    .line 312
    .end local v0    # "trials":I
    .end local v4    # "ret":I
    :cond_75
    :try_start_75
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_7d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_85

    .line 308
    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 375
    if-eqz p1, :cond_64

    .line 377
    if-ltz p2, :cond_5e

    if-ltz p3, :cond_5e

    :try_start_7
    array-length v0, p1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6a

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_5e

    .line 379
    const/4 v0, 0x0

    if-nez p3, :cond_10

    .line 380
    monitor-exit p0

    return v0

    .line 384
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_6a

    .line 385
    .local v1, "c":I
    const/4 v2, -0x1

    if-gez v1, :cond_19

    .line 386
    monitor-exit p0

    return v2

    .line 388
    :cond_19
    int-to-byte v3, v1

    :try_start_1a
    aput-byte v3, p1, p2

    .line 389
    const/4 v3, 0x1

    .line 390
    .local v3, "rlen":I
    :goto_1d
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ltz v4, :cond_5c

    const/4 v5, 0x1

    if-le p3, v5, :cond_5c

    .line 394
    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    if-le v4, v5, :cond_32

    .line 395
    iget-object v6, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v6, v6

    sub-int/2addr v6, v5

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "available":I
    goto :goto_36

    .line 397
    .end local v4    # "available":I
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :cond_32
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    sub-int/2addr v4, v5

    .line 401
    .restart local v4    # "available":I
    :goto_36
    add-int/lit8 v5, p3, -0x1

    if-le v4, v5, :cond_3c

    .line 402
    add-int/lit8 v4, p3, -0x1

    .line 404
    :cond_3c
    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v6, p0, Ljava/io/PipedInputStream;->out:I

    add-int v7, p2, v3

    invoke-static {v5, v6, p1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v5, v4

    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    .line 406
    add-int/2addr v3, v4

    .line 407
    sub-int/2addr p3, v4

    .line 409
    iget-object v6, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v6, v6

    if-lt v5, v6, :cond_53

    .line 410
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 412
    :cond_53
    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    iget v6, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v5, v6, :cond_5b

    .line 414
    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_5b
    .catchall {:try_start_1a .. :try_end_5b} :catchall_6a

    .line 416
    .end local v4    # "available":I
    :cond_5b
    goto :goto_1d

    .line 417
    :cond_5c
    monitor-exit p0

    return v3

    .line 378
    .end local v1    # "c":I
    .end local v3    # "rlen":I
    :cond_5e
    :try_start_5e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 376
    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_6a

    .line 374
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized whitelist test-api receive(I)V
    .registers 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_1
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    .line 206
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_13

    .line 207
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    .line 208
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :cond_13
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v1, 0x0

    if-gez v0, :cond_1c

    .line 209
    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    .line 210
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 212
    :cond_1c
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 213
    array-length v0, v0

    if-lt v3, v0, :cond_2e

    .line 214
    iput v1, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 216
    :cond_2e
    monitor-exit p0

    return-void

    .line 203
    .end local p1    # "b":I
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o receive([BII)V
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_1
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    .line 231
    move v0, p3

    .line 232
    .local v0, "bytesToTransfer":I
    :goto_b
    if-lez v0, :cond_4f

    .line 233
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_16

    .line 234
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    .line 235
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :cond_16
    const/4 v1, 0x0

    .line 236
    .local v1, "nextTransferAmount":I
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_24

    .line 237
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    sub-int v1, v2, v3

    goto :goto_35

    .line 238
    :cond_24
    if-ge v3, v2, :cond_35

    .line 239
    const/4 v5, -0x1

    if-ne v3, v5, :cond_33

    .line 240
    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    .line 241
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    add-int/lit8 v1, v2, 0x0

    goto :goto_35

    .line 243
    :cond_33
    sub-int v1, v2, v3

    .line 246
    :cond_35
    :goto_35
    if-le v1, v0, :cond_38

    .line 247
    move v1, v0

    .line 248
    :cond_38
    nop

    .line 249
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    sub-int/2addr v0, v1

    .line 251
    add-int/2addr p2, v1

    .line 252
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    .line 253
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    if-lt v2, v3, :cond_4e

    .line 254
    iput v4, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_51

    .line 256
    .end local v1    # "nextTransferAmount":I
    :cond_4e
    goto :goto_b

    .line 257
    :cond_4f
    monitor-exit p0

    return-void

    .line 228
    .end local v0    # "bytesToTransfer":I
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o receivedLast()V
    .registers 2

    monitor-enter p0

    .line 290
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 292
    monitor-exit p0

    return-void

    .line 289
    .end local p0    # "this":Ljava/io/PipedInputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
