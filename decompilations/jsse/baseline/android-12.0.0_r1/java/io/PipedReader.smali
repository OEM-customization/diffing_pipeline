.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final greylist-max-o DEFAULT_PIPE_SIZE:I = 0x400


# instance fields
.field greylist-max-o buffer:[C

.field greylist-max-o closedByReader:Z

.field greylist-max-o closedByWriter:Z

.field greylist-max-o connected:Z

.field greylist-max-o in:I

.field greylist-max-o out:I

.field greylist-max-o readSide:Ljava/lang/Thread;

.field greylist-max-o writeSide:Ljava/lang/Thread;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 113
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedReader;->initPipe(I)V

    .line 114
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .line 128
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 129
    invoke-direct {p0, p1}, Ljava/io/PipedReader;->initPipe(I)V

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedWriter;)V
    .registers 3
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;I)V

    .line 85
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedWriter;I)V
    .registers 5
    .param p1, "src"    # Ljava/io/PipedWriter;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 100
    invoke-direct {p0, p2}, Ljava/io/PipedReader;->initPipe(I)V

    .line 101
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 102
    return-void
.end method

.method private greylist-max-o initPipe(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .line 133
    if-lez p1, :cond_7

    .line 136
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 137
    return-void

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pipe size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 367
    return-void
.end method

.method public whitelist test-api connect(Ljava/io/PipedWriter;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 164
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

    .line 238
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_7b

    .line 240
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_73

    .line 242
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_24

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-ltz v0, :cond_1c

    goto :goto_24

    .line 244
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_24
    :goto_24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    .line 248
    const/4 v0, 0x2

    .line 249
    .local v0, "trials":I
    :goto_2b
    iget v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v2, -0x1

    if-gez v1, :cond_5b

    .line 250
    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_83

    if-eqz v1, :cond_36

    .line 252
    monitor-exit p0

    return v2

    .line 254
    .restart local p0    # "this":Ljava/io/PipedReader;
    :cond_36
    :try_start_36
    iget-object v1, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4d

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_45

    goto :goto_4d

    .line 255
    :cond_45
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_83

    .line 260
    const-wide/16 v1, 0x3e8

    :try_start_52
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_83

    .line 265
    :goto_55
    goto :goto_2b

    .line 261
    :catch_56
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_57
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_55

    .line 267
    :cond_5b
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    aget-char v4, v3, v4

    .line 268
    .local v4, "ret":I
    array-length v3, v3

    if-lt v5, v3, :cond_6b

    .line 269
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedReader;->out:I

    .line 271
    :cond_6b
    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-ne v1, v3, :cond_71

    .line 273
    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_83

    .line 275
    :cond_71
    monitor-exit p0

    return v4

    .line 241
    .end local v0    # "trials":I
    .end local v4    # "ret":I
    :cond_73
    :try_start_73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_7b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_83

    .line 237
    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([CII)I
    .registers 13
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 297
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_7a

    .line 299
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_72

    .line 301
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_24

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-ltz v0, :cond_1c

    goto :goto_24

    .line 303
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_24
    :goto_24
    if-ltz p2, :cond_6c

    array-length v0, p1

    if-gt p2, v0, :cond_6c

    if-ltz p3, :cond_6c

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_82

    if-gt v0, v1, :cond_6c

    add-int v0, p2, p3

    if-ltz v0, :cond_6c

    .line 309
    const/4 v0, 0x0

    if-nez p3, :cond_39

    .line 310
    monitor-exit p0

    return v0

    .line 314
    .restart local p0    # "this":Ljava/io/PipedReader;
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Ljava/io/PipedReader;->read()I

    move-result v1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_82

    .line 315
    .local v1, "c":I
    const/4 v2, -0x1

    if-gez v1, :cond_42

    .line 316
    monitor-exit p0

    return v2

    .line 318
    :cond_42
    int-to-char v3, v1

    :try_start_43
    aput-char v3, p1, p2

    .line 319
    const/4 v3, 0x1

    .line 320
    .local v3, "rlen":I
    :cond_46
    :goto_46
    iget v4, p0, Ljava/io/PipedReader;->in:I

    if-ltz v4, :cond_6a

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_6a

    .line 321
    add-int v5, p2, v3

    iget-object v6, p0, Ljava/io/PipedReader;->buffer:[C

    iget v7, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Ljava/io/PipedReader;->out:I

    aget-char v7, v6, v7

    aput-char v7, p1, v5

    .line 322
    add-int/lit8 v3, v3, 0x1

    .line 323
    array-length v5, v6

    if-lt v8, v5, :cond_63

    .line 324
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 326
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_63
    iget v5, p0, Ljava/io/PipedReader;->out:I

    if-ne v4, v5, :cond_46

    .line 328
    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_69
    .catchall {:try_start_43 .. :try_end_69} :catchall_82

    goto :goto_46

    .line 331
    :cond_6a
    monitor-exit p0

    return v3

    .line 308
    .end local v1    # "c":I
    .end local v3    # "rlen":I
    :cond_6c
    :try_start_6c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 300
    :cond_72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_82

    .line 296
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_82
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 343
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_36

    .line 345
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_2e

    .line 347
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_24

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_24

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-ltz v0, :cond_1c

    goto :goto_24

    .line 349
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_24
    :goto_24
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_3e

    if-gez v0, :cond_2b

    .line 352
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 354
    .restart local p0    # "this":Ljava/io/PipedReader;
    :cond_2b
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 346
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_2e
    :try_start_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3e

    .line 342
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized greylist-max-o receive(I)V
    .registers 7
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 171
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_6e

    .line 173
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_66

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_66

    .line 175
    iget-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    .line 176
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_20
    :goto_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    .line 180
    :goto_26
    iget v0, p0, Ljava/io/PipedReader;->in:I

    iget v1, p0, Ljava/io/PipedReader;->out:I

    if-ne v0, v1, :cond_4d

    .line 181
    iget-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_3f

    .line 182
    :cond_37
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe broken"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_76

    .line 187
    const-wide/16 v0, 0x3e8

    :try_start_44
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_76

    .line 192
    :goto_47
    goto :goto_26

    .line 188
    :catch_48
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_49
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    goto :goto_47

    .line 194
    :cond_4d
    const/4 v1, 0x0

    if-gez v0, :cond_54

    .line 195
    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 196
    iput v1, p0, Ljava/io/PipedReader;->out:I

    .line 198
    :cond_54
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    int-to-char v4, p1

    aput-char v4, v0, v2

    .line 199
    array-length v0, v0

    if-lt v3, v0, :cond_64

    .line 200
    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_76

    .line 202
    :cond_64
    monitor-exit p0

    return-void

    .line 174
    :cond_66
    :try_start_66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_6e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_76

    .line 170
    .end local p1    # "c":I
    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o receive([CII)V
    .registers 5
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_11

    .line 210
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    :try_start_7
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ljava/io/PipedReader;->receive(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    move p2, v0

    goto :goto_1

    .line 208
    .end local v0    # "off":I
    .end local p0    # "this":Ljava/io/PipedReader;
    .end local p1    # "c":[C
    .end local p3    # "len":I
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 212
    .restart local p0    # "this":Ljava/io/PipedReader;
    .restart local p1    # "c":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_11
    monitor-exit p0

    return-void
.end method

.method declared-synchronized greylist-max-o receivedLast()V
    .registers 2

    monitor-enter p0

    .line 219
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 221
    monitor-exit p0

    return-void

    .line 218
    .end local p0    # "this":Ljava/io/PipedReader;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
