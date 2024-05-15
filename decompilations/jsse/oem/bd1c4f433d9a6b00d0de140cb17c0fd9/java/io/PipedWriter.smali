.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private closed:Z

.field private sink:Ljava/io/PipedReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .registers 3
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 59
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 60
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
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 180
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0}, Ljava/io/PipedReader;->receivedLast()V

    .line 183
    :cond_c
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedReader;)V
    .registers 4
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 92
    if-nez p1, :cond_c

    .line 93
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

    .line 94
    :cond_c
    :try_start_c
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_14

    iget-boolean v0, p1, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_1d

    .line 95
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1d
    iget-boolean v0, p1, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_25

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v0, :cond_2e

    .line 97
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2e
    iput-object p1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    .line 101
    const/4 v0, -0x1

    iput v0, p1, Ljava/io/PipedReader;->in:I

    .line 102
    const/4 v0, 0x0

    iput v0, p1, Ljava/io/PipedReader;->out:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedReader;->connected:Z
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_9

    monitor-exit p0

    .line 104
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

    .line 161
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_24

    .line 162
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    iget-boolean v0, v0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v0, :cond_1b

    .line 163
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .line 166
    :try_start_1e
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_26

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_18

    :cond_24
    monitor-exit p0

    .line 169
    return-void

    .line 165
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1

    throw v0
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_18
.end method

.method public write(I)V
    .registers 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_d

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_d
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0, p1}, Ljava/io/PipedReader;->receive(I)V

    .line 125
    return-void
.end method

.method public write([CII)V
    .registers 7
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_d

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_d
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_1f

    .line 148
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1f
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 151
    return-void
.end method
