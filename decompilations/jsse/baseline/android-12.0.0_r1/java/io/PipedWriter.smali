.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private greylist-max-o closed:Z

.field private greylist-max-o sink:Ljava/io/PipedReader;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 71
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedReader;)V
    .registers 3
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 180
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_a

    .line 181
    invoke-virtual {v0}, Ljava/io/PipedReader;->receivedLast()V

    .line 183
    :cond_a
    return-void
.end method

.method public declared-synchronized whitelist test-api connect(Ljava/io/PipedReader;)V
    .registers 4
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    if-eqz p1, :cond_32

    .line 94
    :try_start_3
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_28

    iget-boolean v0, p1, Ljava/io/PipedReader;->connected:Z

    if-nez v0, :cond_28

    .line 96
    iget-boolean v0, p1, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-nez v0, :cond_20

    .line 100
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
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_30

    .line 104
    monitor-exit p0

    return-void

    .line 97
    .end local p0    # "this":Ljava/io/PipedWriter;
    :cond_20
    :try_start_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    .end local p1    # "snk":Ljava/io/PipedReader;
    :catchall_30
    move-exception p1

    goto :goto_38

    .line 93
    .restart local p1    # "snk":Ljava/io/PipedReader;
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_38
    .catchall {:try_start_20 .. :try_end_38} :catchall_30

    .line 91
    .end local p1    # "snk":Ljava/io/PipedReader;
    :goto_38
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_24

    .line 162
    iget-boolean v0, v0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-nez v0, :cond_1c

    .line 165
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_26

    .line 166
    :try_start_10
    iget-object v1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    goto :goto_24

    :catchall_17
    move-exception v1

    :goto_18
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1a

    :try_start_19
    throw v1

    .end local p0    # "this":Ljava/io/PipedWriter;
    :catchall_1a
    move-exception v1

    goto :goto_18

    .line 163
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_26

    .line 169
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 160
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_8

    .line 124
    invoke-virtual {v0, p1}, Ljava/io/PipedReader;->receive(I)V

    .line 125
    return-void

    .line 122
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write([CII)V
    .registers 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_1a

    .line 147
    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    array-length v2, p1

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_14

    .line 150
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 151
    return-void

    .line 148
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 146
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
