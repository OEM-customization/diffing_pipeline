.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private sink:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .registers 2
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 65
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
    .line 175
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->receivedLast()V

    .line 178
    :cond_9
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedInputStream;)V
    .registers 4
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 97
    if-nez p1, :cond_c

    .line 98
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_14

    iget-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z

    if-eqz v0, :cond_1d

    .line 100
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1d
    iput-object p1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    .line 103
    const/4 v0, -0x1

    iput v0, p1, Ljava/io/PipedInputStream;->in:I

    .line 104
    const/4 v0, 0x0

    iput v0, p1, Ljava/io/PipedInputStream;->out:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_9

    monitor-exit p0

    .line 106
    return-void
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 160
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_e

    .line 161
    iget-object v1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    .line 162
    :try_start_8
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_13

    :cond_e
    monitor-exit p0

    .line 165
    return-void

    .line 161
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1

    throw v0
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_d

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_d
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 123
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
    .line 139
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_d

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_d
    if-nez p1, :cond_15

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_15
    if-ltz p2, :cond_1a

    array-length v0, p1

    if-le p2, v0, :cond_20

    .line 145
    :cond_1a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 143
    :cond_20
    if-ltz p3, :cond_1a

    .line 144
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1a

    add-int v0, p2, p3

    if-ltz v0, :cond_1a

    .line 146
    if-nez p3, :cond_2e

    .line 147
    return-void

    .line 149
    :cond_2e
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedInputStream;->receive([BII)V

    .line 150
    return-void
.end method
