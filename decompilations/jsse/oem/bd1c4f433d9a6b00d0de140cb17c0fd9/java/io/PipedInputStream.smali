.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_PIPE_SIZE:I = 0x400

.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field volatile closedByReader:Z

.field closedByWriter:Z

.field connected:Z

.field protected in:I

.field protected out:I

.field readSide:Ljava/lang/Thread;

.field writeSide:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 55
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 56
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 141
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 142
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 55
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 56
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 157
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .registers 3
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .registers 5
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 55
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 56
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 96
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 128
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 129
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 130
    return-void
.end method

.method private awaitSpace()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    :goto_0
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_17

    .line 271
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 274
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V

    .line 276
    const-wide/16 v2, 0x3e8

    :try_start_e
    invoke-virtual {p0, v2, v3}, Ljava/io/PipedInputStream;->wait(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_0

    .line 277
    :catch_12
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_0

    .line 283
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_17
    return-void
.end method

.method private checkStateForReceive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    if-nez v0, :cond_d

    .line 261
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_d
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-eqz v0, :cond_1e

    .line 263
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1e
    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_35

    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_35

    .line 265
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Read end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_35
    return-void
.end method

.method private initPipe(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .prologue
    .line 161
    if-gtz p1, :cond_b

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pipe Size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_b
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 165
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 434
    :try_start_2
    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2b

    if-gez v0, :cond_8

    monitor-exit p0

    .line 435
    return v1

    .line 436
    :cond_8
    :try_start_8
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_13

    .line 437
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2b

    monitor-exit p0

    return v0

    .line 438
    :cond_13
    :try_start_13
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-le v0, v1, :cond_20

    .line 439
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2b

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 441
    :cond_20
    :try_start_20
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2b

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 452
    monitor-enter p0

    .line 453
    const/4 v0, -0x1

    :try_start_5
    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 455
    return-void

    .line 452
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 192
    return-void
.end method

.method public declared-synchronized read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    monitor-enter p0

    .line 309
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->connected:Z

    if-nez v3, :cond_12

    .line 310
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe not connected"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 311
    :cond_12
    :try_start_12
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-eqz v3, :cond_1f

    .line 312
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :cond_1f
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_40

    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    .line 314
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    xor-int/lit8 v3, v3, 0x1

    .line 313
    if-eqz v3, :cond_40

    .line 314
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v3, :cond_40

    .line 315
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Write end dead"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    .line 319
    const/4 v2, 0x2

    .line 320
    .local v2, "trials":I
    :goto_47
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v3, :cond_7a

    .line 321
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_f

    if-eqz v3, :cond_51

    monitor-exit p0

    .line 323
    return v6

    .line 325
    :cond_51
    :try_start_51
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6c

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_6c

    .line 326
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe broken"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_6c
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_f

    .line 331
    const-wide/16 v4, 0x3e8

    :try_start_71
    invoke-virtual {p0, v4, v5}, Ljava/io/PipedInputStream;->wait(J)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_f

    goto :goto_47

    .line 332
    :catch_75
    move-exception v0

    .line 335
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_76
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_47

    .line 338
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_7a
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 339
    .local v1, "ret":I
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_90

    .line 340
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 342
    :cond_90
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v3, v4, :cond_99

    .line 344
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_99
    .catchall {:try_start_76 .. :try_end_99} :catchall_f

    :cond_99
    monitor-exit p0

    .line 347
    return v1
.end method

.method public declared-synchronized read([BII)I
    .registers 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 375
    if-nez p1, :cond_e

    .line 376
    :try_start_5
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 377
    :cond_e
    if-ltz p2, :cond_12

    if-gez p3, :cond_18

    .line 378
    :cond_12
    :try_start_12
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 377
    :cond_18
    array-length v3, p1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_b

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_12

    .line 379
    if-nez p3, :cond_20

    monitor-exit p0

    .line 380
    return v4

    .line 384
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_b

    move-result v1

    .line 385
    .local v1, "c":I
    if-gez v1, :cond_28

    monitor-exit p0

    .line 386
    return v5

    .line 388
    :cond_28
    int-to-byte v3, v1

    :try_start_29
    aput-byte v3, p1, p2

    .line 389
    const/4 v2, 0x1

    .line 390
    .local v2, "rlen":I
    :cond_2c
    :goto_2c
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-ltz v3, :cond_7a

    const/4 v3, 0x1

    if-le p3, v3, :cond_7a

    .line 394
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-le v3, v4, :cond_72

    .line 395
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v3, v4

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 401
    .local v0, "available":I
    :goto_48
    add-int/lit8 v3, p3, -0x1

    if-le v0, v3, :cond_4e

    .line 402
    add-int/lit8 v0, p3, -0x1

    .line 404
    :cond_4e
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int v5, p2, v2

    invoke-static {v3, v4, p1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 405
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 406
    add-int/2addr v2, v0

    .line 407
    sub-int/2addr p3, v0

    .line 409
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_68

    .line 410
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 412
    :cond_68
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v3, v4, :cond_2c

    .line 414
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    goto :goto_2c

    .line 397
    .end local v0    # "available":I
    :cond_72
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_77
    .catchall {:try_start_29 .. :try_end_77} :catchall_b

    sub-int v0, v3, v4

    .restart local v0    # "available":I
    goto :goto_48

    .end local v0    # "available":I
    :cond_7a
    monitor-exit p0

    .line 417
    return v2
.end method

.method protected declared-synchronized receive(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    :cond_13
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v0, :cond_1d

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 212
    :cond_1d
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 213
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_34

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit p0

    .line 216
    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receive([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 229
    :try_start_1
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    .line 231
    move v0, p3

    .line 232
    .local v0, "bytesToTransfer":I
    :cond_b
    :goto_b
    if-lez v0, :cond_6f

    .line 233
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v2, v3, :cond_16

    .line 234
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    .line 235
    :cond_16
    const/4 v1, 0x0

    .line 236
    .local v1, "nextTransferAmount":I
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v2, v3, :cond_36

    .line 237
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v3

    .line 246
    :cond_24
    :goto_24
    if-le v1, v0, :cond_27

    .line 247
    move v1, v0

    .line 248
    :cond_27
    sget-boolean v2, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    if-nez v2, :cond_56

    if-gtz v1, :cond_56

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_33

    .end local v0    # "bytesToTransfer":I
    .end local v1    # "nextTransferAmount":I
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2

    .line 238
    .restart local v0    # "bytesToTransfer":I
    .restart local v1    # "nextTransferAmount":I
    :cond_36
    :try_start_36
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    if-ge v2, v3, :cond_24

    .line 239
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4f

    .line 240
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    .line 241
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v3

    goto :goto_24

    .line 243
    :cond_4f
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v3

    goto :goto_24

    .line 249
    :cond_56
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 250
    sub-int/2addr v0, v1

    .line 251
    add-int/2addr p2, v1

    .line 252
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    .line 253
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    if-lt v2, v3, :cond_b

    .line 254
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_6e
    .catchall {:try_start_36 .. :try_end_6e} :catchall_33

    goto :goto_b

    .end local v1    # "nextTransferAmount":I
    :cond_6f
    monitor-exit p0

    .line 257
    return-void
.end method

.method declared-synchronized receivedLast()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 290
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 291
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 292
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
