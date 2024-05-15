.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final DEFAULT_PIPE_SIZE:I = 0x400


# instance fields
.field buffer:[C

.field closedByReader:Z

.field closedByWriter:Z

.field connected:Z

.field in:I

.field out:I

.field readSide:Ljava/lang/Thread;

.field writeSide:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v1, p0, Ljava/io/PipedReader;->out:I

    .line 113
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedReader;->initPipe(I)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v1, p0, Ljava/io/PipedReader;->out:I

    .line 129
    invoke-direct {p0, p1}, Ljava/io/PipedReader;->initPipe(I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .registers 3
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .registers 5
    .param p1, "src"    # Ljava/io/PipedWriter;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v1, p0, Ljava/io/PipedReader;->out:I

    .line 100
    invoke-direct {p0, p2}, Ljava/io/PipedReader;->initPipe(I)V

    .line 101
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 102
    return-void
.end method

.method private initPipe(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .prologue
    .line 133
    if-gtz p1, :cond_b

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pipe size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_b
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 137
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 367
    return-void
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 164
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

    .line 238
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v3, :cond_12

    .line 239
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

    .line 240
    :cond_12
    :try_start_12
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v3, :cond_1f

    .line 241
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_1f
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_40

    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    .line 243
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByWriter:Z

    xor-int/lit8 v3, v3, 0x1

    .line 242
    if-eqz v3, :cond_40

    .line 243
    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-gez v3, :cond_40

    .line 244
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Write end dead"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_40
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    .line 248
    const/4 v2, 0x2

    .line 249
    .local v2, "trials":I
    :goto_47
    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-gez v3, :cond_7a

    .line 250
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByWriter:Z
    :try_end_4d
    .catchall {:try_start_12 .. :try_end_4d} :catchall_f

    if-eqz v3, :cond_51

    monitor-exit p0

    .line 252
    return v6

    .line 254
    :cond_51
    :try_start_51
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_6c

    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6c

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_6c

    .line 255
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe broken"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_6c
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_f

    .line 260
    const-wide/16 v4, 0x3e8

    :try_start_71
    invoke-virtual {p0, v4, v5}, Ljava/io/PipedReader;->wait(J)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_f

    goto :goto_47

    .line 261
    :catch_75
    move-exception v0

    .line 264
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_76
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_47

    .line 267
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_7a
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    aget-char v1, v3, v4

    .line 268
    .local v1, "ret":I
    iget v3, p0, Ljava/io/PipedReader;->out:I

    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v4, v4

    if-lt v3, v4, :cond_8e

    .line 269
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedReader;->out:I

    .line 271
    :cond_8e
    iget v3, p0, Ljava/io/PipedReader;->in:I

    iget v4, p0, Ljava/io/PipedReader;->out:I

    if-ne v3, v4, :cond_97

    .line 273
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I
    :try_end_97
    .catchall {:try_start_76 .. :try_end_97} :catchall_f

    :cond_97
    monitor-exit p0

    .line 275
    return v1
.end method

.method public declared-synchronized read([CII)I
    .registers 10
    .param p1, "cbuf"    # [C
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

    .line 297
    :try_start_3
    iget-boolean v2, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v2, :cond_13

    .line 298
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Pipe not connected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2

    .line 299
    :cond_13
    :try_start_13
    iget-boolean v2, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v2, :cond_20

    .line 300
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Pipe closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_20
    iget-object v2, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v2, :cond_41

    iget-object v2, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_41

    .line 302
    iget-boolean v2, p0, Ljava/io/PipedReader;->closedByWriter:Z

    xor-int/lit8 v2, v2, 0x1

    .line 301
    if-eqz v2, :cond_41

    .line 302
    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-gez v2, :cond_41

    .line 303
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Write end dead"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_41
    if-ltz p2, :cond_46

    array-length v2, p1

    if-le p2, v2, :cond_4c

    .line 308
    :cond_46
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 306
    :cond_4c
    if-ltz p3, :cond_46

    .line 307
    add-int v2, p2, p3

    array-length v3, p1
    :try_end_51
    .catchall {:try_start_13 .. :try_end_51} :catchall_10

    if-gt v2, v3, :cond_46

    add-int v2, p2, p3

    if-ltz v2, :cond_46

    .line 309
    if-nez p3, :cond_5b

    monitor-exit p0

    .line 310
    return v4

    .line 314
    :cond_5b
    :try_start_5b
    invoke-virtual {p0}, Ljava/io/PipedReader;->read()I
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_10

    move-result v0

    .line 315
    .local v0, "c":I
    if-gez v0, :cond_63

    monitor-exit p0

    .line 316
    return v5

    .line 318
    :cond_63
    int-to-char v2, v0

    :try_start_64
    aput-char v2, p1, p2

    .line 319
    const/4 v1, 0x1

    .line 320
    .local v1, "rlen":I
    :cond_67
    :goto_67
    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-ltz v2, :cond_93

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_93

    .line 321
    add-int v2, p2, v1

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 322
    add-int/lit8 v1, v1, 0x1

    .line 323
    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v3, v3

    if-lt v2, v3, :cond_89

    .line 324
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->out:I

    .line 326
    :cond_89
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-ne v2, v3, :cond_67

    .line 328
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_92
    .catchall {:try_start_64 .. :try_end_92} :catchall_10

    goto :goto_67

    :cond_93
    monitor-exit p0

    .line 331
    return v1
.end method

.method public declared-synchronized ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 343
    :try_start_2
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v0, :cond_12

    .line 344
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v0, :cond_1f

    .line 346
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1f
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_40

    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_40

    .line 348
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    xor-int/lit8 v0, v0, 0x1

    .line 347
    if-eqz v0, :cond_40

    .line 348
    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-gez v0, :cond_40

    .line 349
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_40
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_42
    .catchall {:try_start_12 .. :try_end_42} :catchall_f

    if-gez v0, :cond_46

    monitor-exit p0

    .line 352
    return v1

    .line 354
    :cond_46
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method declared-synchronized receive(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 171
    :try_start_1
    iget-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v1, :cond_11

    .line 172
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1

    .line 173
    :cond_11
    :try_start_11
    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v1, :cond_19

    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v1, :cond_22

    .line 174
    :cond_19
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Pipe closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_22
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v1, :cond_39

    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    .line 176
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Read end dead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    .line 180
    :goto_3f
    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget v2, p0, Ljava/io/PipedReader;->out:I

    if-ne v1, v2, :cond_6a

    .line 181
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5c

    .line 182
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_5c
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_e

    .line 187
    const-wide/16 v2, 0x3e8

    :try_start_61
    invoke-virtual {p0, v2, v3}, Ljava/io/PipedReader;->wait(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_e

    goto :goto_3f

    .line 188
    :catch_65
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_66
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_3f

    .line 194
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6a
    iget v1, p0, Ljava/io/PipedReader;->in:I

    if-gez v1, :cond_74

    .line 195
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 196
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->out:I

    .line 198
    :cond_74
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 199
    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_89

    .line 200
    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_89
    .catchall {:try_start_66 .. :try_end_89} :catchall_e

    :cond_89
    monitor-exit p0

    .line 202
    return-void
.end method

.method declared-synchronized receive([CII)V
    .registers 6
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 209
    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_e

    .line 210
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    :try_start_7
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Ljava/io/PipedReader;->receive(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    move p2, v0

    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    :cond_e
    monitor-exit p0

    .line 212
    return-void

    .end local p2    # "off":I
    .restart local v0    # "off":I
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized receivedLast()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 219
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 220
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 221
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
