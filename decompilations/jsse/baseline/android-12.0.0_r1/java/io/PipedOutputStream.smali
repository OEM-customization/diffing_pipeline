.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private greylist-max-o sink:Ljava/io/PipedInputStream;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 76
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedInputStream;)V
    .registers 2
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 65
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

    .line 175
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {v0}, Ljava/io/PipedInputStream;->receivedLast()V

    .line 178
    :cond_7
    return-void
.end method

.method public declared-synchronized whitelist test-api connect(Ljava/io/PipedInputStream;)V
    .registers 4
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    if-eqz p1, :cond_22

    .line 99
    :try_start_3
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_18

    iget-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z

    if-nez v0, :cond_18

    .line 102
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
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 106
    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Ljava/io/PipedOutputStream;
    :cond_18
    :try_start_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    .end local p1    # "snk":Ljava/io/PipedInputStream;
    :catchall_20
    move-exception p1

    goto :goto_28

    .line 98
    .restart local p1    # "snk":Ljava/io/PipedInputStream;
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_20

    .line 96
    .end local p1    # "snk":Ljava/io/PipedInputStream;
    :goto_28
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

    .line 160
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_12

    .line 161
    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    .line 162
    :try_start_6
    iget-object v1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception v1

    :goto_e
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_10

    :try_start_f
    throw v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_14

    .end local p0    # "this":Ljava/io/PipedOutputStream;
    :catchall_10
    move-exception v1

    goto :goto_e

    .line 165
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 159
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api write(I)V
    .registers 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 123
    return-void

    .line 120
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api write([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_29

    .line 141
    if-eqz p1, :cond_23

    .line 143
    if-ltz p2, :cond_1d

    array-length v1, p1

    if-gt p2, v1, :cond_1d

    if-ltz p3, :cond_1d

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1d

    add-int v1, p2, p3

    if-ltz v1, :cond_1d

    .line 146
    if-nez p3, :cond_19

    .line 147
    return-void

    .line 149
    :cond_19
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedInputStream;->receive([BII)V

    .line 150
    return-void

    .line 145
    :cond_1d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 142
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
